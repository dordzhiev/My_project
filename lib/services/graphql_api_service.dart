import 'package:courier_app/common/graphql/fragments/order.graphql.dart';
import 'package:courier_app/common/graphql/fragments/personal_info.graphql.dart';
import 'package:courier_app/common/graphql/mutations/authenticate.graphql.dart';
import 'package:courier_app/common/graphql/mutations/change_order_status.graphql.dart';
import 'package:courier_app/common/graphql/mutations/end_session.graphql.dart';
import 'package:courier_app/common/graphql/mutations/start_session.graphql.dart';
import 'package:courier_app/common/graphql/mutations/update_current_location.graphql.dart';
import 'package:courier_app/common/graphql/mutations/update_personal_info.graphql.dart';
import 'package:courier_app/common/graphql/queries/get_active_orders.graphql.dart';
import 'package:courier_app/common/graphql/queries/get_completed_orders.graphql.dart';
import 'package:courier_app/common/graphql/queries/get_personal_information.graphql.dart';
import 'package:courier_app/common/graphql/schema.graphql.dart';
import 'package:courier_app/services/api_service.dart';
import 'package:courier_app/services/graphql_service.dart';
import 'package:courier_app/services/shared_preferences_service.dart';
import 'package:courier_app/utils/graphql_utils.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';

class GraphQLAPIService extends APIService {
  static GraphQLAPIService? _instance;
  final SPService _spService = GetIt.instance<SPService>();
  final GraphQLService _graphQLService = GetIt.instance<GraphQLService>();

  static APIService getInstance() => _instance ??= GraphQLAPIService._();

  GraphQLAPIService._();

  @override
  get isAuthenticated => _spService.accessToken != null ? true : false;

  GraphQLClient get _client => _graphQLService.client;

@override
Future<void> login(String username, String password) async {
  final result = await _client.mutate$Authenticate(
    Options$Mutation$Authenticate(
      variables: Variables$Mutation$Authenticate(
        username: username,
        password: password,
      ),
    ),
  );
  if (result.hasException) {
    GraphQLUtils.processException(result);
  }
  _spService.accessToken = result.parsedData?.login.accessToken;
  _spService.refreshToken = result.parsedData?.login.refreshToken;
  _spService.userId = result.parsedData?.login.userId.toInt();
}

  @override
  void logout() {
    _spService.accessToken = null;
    _spService.refreshToken = null;
    _spService.userId = null;
  }

  @override
  Future<List<Fragment$Order>> fetchOrderList() async {
    final result = await _client.query$GetActiveOrders(
      Options$Query$GetActiveOrders(),
    );
    if (result.hasException) {
      GraphQLUtils.processException(result);
    }
    return result.parsedData!.getActiveOrders;
  }

  @override
  List<Fragment$Order> readOrderList() {
    final result = _client.readQuery$GetActiveOrders();
    return result?.getActiveOrders ?? [];
  }

  @override
  Future<Enum$OrderStatus> changeOrderStatus(
    double id,
    Enum$OrderStatus status,
  ) async {
    final result = await _client.mutate$ChangeOrderStatus(
      Options$Mutation$ChangeOrderStatus(
        variables: Variables$Mutation$ChangeOrderStatus(
          status: status.name,
          id: id,
        ),
      ),
    );
    if (result.hasException) {
      GraphQLUtils.processException(result);
    }
    return result.parsedData!.changeOrderStatus.status;
  }

  @override
  Future<List<Fragment$Order>> fetchOrderHistory() async {
    final result = await _client.query$GetCompletedOrders(
      Options$Query$GetCompletedOrders(
        variables: Variables$Query$GetCompletedOrders(id: _spService.userId!),
      ),
    );
    if (result.hasException) {
      GraphQLUtils.processException(result);
    }
    return result.parsedData!.getCompletedOrders
        .where((element) => {
              Enum$OrderStatus.DELIVERED,
              Enum$OrderStatus.CANCELED
            }.contains(element.status))
        .toList();
  }

  @override
  List<Fragment$Order> readOrderHistory() {
    final result = _client.readQuery$GetCompletedOrders(
      variables: Variables$Query$GetCompletedOrders(id: _spService.userId!),
    );
    return result?.getCompletedOrders
            .where(
              (element) => {
                Enum$OrderStatus.DELIVERED,
                Enum$OrderStatus.CANCELED,
              }.contains(element.status),
            )
            .toList() ??
        [];
  }

  @override
  Future<void> startSession(double latitude, double longitude) async {
    await _client.mutate$StartSession(
      Options$Mutation$StartSession(
        variables: Variables$Mutation$StartSession(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );
  }

  @override
  Future<void> stopSession() async {
    await _client.mutate$EndSession(Options$Mutation$EndSession());
  }

  @override
  Future<void> updateLocation(double latitude, double longitude) async {
    await _client.mutate$UpdateCurrentLocation(
      Options$Mutation$UpdateCurrentLocation(
        variables: Variables$Mutation$UpdateCurrentLocation(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );
  }

  @override
  Future<Fragment$PersonalInfo> fetchPersonalInfo() async {
    final result = await _client.query$GetPersonalInformation(
      Options$Query$GetPersonalInformation(
        variables:
            Variables$Query$GetPersonalInformation(id: _spService.userId!),
      ),
    );

    if (result.hasException) {
      GraphQLUtils.processException(result);
    }

    return result.parsedData!.getUserById;
  }

  @override
  Future<Fragment$PersonalInfo> changePersonalInfo(
      Fragment$PersonalInfo personalInfo) async {
    final result = await _client.mutate$UpdatePersonalInfo(
      Options$Mutation$UpdatePersonalInfo(
        variables: Variables$Mutation$UpdatePersonalInfo(
          id: _spService.userId!,
          username: personalInfo.username,
          email: personalInfo.email,
          firstName: personalInfo.firstname,
          lastName: personalInfo.lastname,
          middlename: personalInfo.middlename,
          phone: personalInfo.phoneNumber,
        ),
      ),
    );

    if (result.hasException) {
      GraphQLUtils.processException(result);
    }

    return result.parsedData!.updateUser;
  }
}
