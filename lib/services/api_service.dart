import 'package:courier_app/common/graphql/fragments/order.graphql.dart';
import 'package:courier_app/common/graphql/mutations/authenticate.graphql.dart';
import 'package:courier_app/common/graphql/mutations/change_order_status.graphql.dart';
import 'package:courier_app/common/graphql/mutations/end_session.graphql.dart';
import 'package:courier_app/common/graphql/mutations/start_session.graphql.dart';
import 'package:courier_app/common/graphql/mutations/update_current_location.graphql.dart';
import 'package:courier_app/common/graphql/queries/get_active_orders.graphql.dart';
import 'package:courier_app/common/graphql/queries/get_completed_orders.graphql.dart';
import 'package:courier_app/common/graphql/schema.graphql.dart';
import 'package:courier_app/services/graphql_service.dart';
import 'package:courier_app/services/shared_preferences_service.dart';
import 'package:courier_app/utils/graphql_utils.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';

class APIService {
  static APIService? _instance;
  final SPService _spService = GetIt.instance<SPService>();
  final GraphQLService _graphQLService = GetIt.instance<GraphQLService>();

  static APIService getInstance() => _instance ??= APIService._();

  APIService._();

  get isAuthenticated => _spService.accessToken != null ? true : false;

  GraphQLClient get client => _graphQLService.client;

  Future<void> login(String username, String password) async {
    final result = await client.mutate$Authenticate(
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

  void logout() {
    _spService.accessToken = null;
    _spService.refreshToken = null;
    _spService.userId = null;
  }

  Future<List<Fragment$Order>> getActiveOrders() async {
    final result = await client.query$GetActiveOrders(
      Options$Query$GetActiveOrders(),
    );
    if (result.hasException) {
      GraphQLUtils.processException(result);
    }
    return result.parsedData!.getActiveOrders;
  }

  Future<Enum$OrderStatus> changeOrderStatus(
    double id,
    Enum$OrderStatus status,
  ) async {
    final result = await client.mutate$ChangeOrderStatus(
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

  Future<List<Fragment$Order>> getCompletedOrders() async {
    final result = await client.query$GetCompletedOrders(
      Options$Query$GetCompletedOrders(
        variables: Variables$Query$GetCompletedOrders(id: _spService.userId!),
      ),
    );
    if (result.hasException) {
      GraphQLUtils.processException(result);
    }
    return result.parsedData!.getCompletedOrders;
  }

  Future<void> startSession(double latitude, double longitude) async {
    await client.mutate$StartSession(
      Options$Mutation$StartSession(
        variables: Variables$Mutation$StartSession(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );
  }

  Future<void> stopSession() async {
    await client.mutate$EndSession(Options$Mutation$EndSession());
  }

  Future<void> updateLocation(double latitude, double longitude) async {
    await client.mutate$UpdateCurrentLocation(
      Options$Mutation$UpdateCurrentLocation(
        variables: Variables$Mutation$UpdateCurrentLocation(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );
  }
}
