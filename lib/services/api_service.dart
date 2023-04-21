import 'package:courier_app/common/graphql/fragments/order.graphql.dart';
import 'package:courier_app/common/graphql/mutations/authenticate.graphql.dart';
import 'package:courier_app/common/graphql/mutations/change_order_status.graphql.dart';
import 'package:courier_app/common/graphql/mutations/refresh_tokens.graphql.dart';
import 'package:courier_app/common/graphql/queries/get_active_orders.graphql.dart';
import 'package:courier_app/common/graphql/queries/get_completed_orders.graphql.dart';
import 'package:courier_app/common/graphql/schema.graphql.dart';
import 'package:courier_app/services/shared_preferences_service.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:path_provider/path_provider.dart';

const String uri = 'https://api.sbus.ru/graphql';
const String webSocketUri = 'wss://api.sbus.ru/graphql';

class APIService {
  final SPService _spService = GetIt.instance<SPService>();
  static APIService? _instance;
  String? _accessToken;
  String? _refreshToken;
  int? _userId;
  Store? _store;
  late GraphQLClient _client;
  late GraphQLClient _refreshClient;
  Link? _link;

  static Future<APIService> getInstance() async {
    if (_instance == null) {
      _instance = APIService._();
      await _instance!.init();
    }
    return _instance!;
  }

  APIService._();

  Future<void> init() async {
    final appDocumentDirectory = await getApplicationSupportDirectory();
    _link = Link.concat(
      DedupeLink(),
      ErrorLink(
        onException: _handleException,
        onGraphQLError: _onGraphQLError,
      ),
    ).split(
      (request) => !request.isSubscription,
      AuthLink(getToken: getAccessToken).concat(HttpLink(uri)),
    );
    _store = await HiveStore.open(path: appDocumentDirectory.path);
    _client = GraphQLClient(
      link: _link!,
      cache: GraphQLCache(store: _store!),
      defaultPolicies: DefaultPolicies(
        query: Policies(fetch: FetchPolicy.networkOnly),
      ),
    );
    _refreshClient = GraphQLClient(
      link: AuthLink(getToken: getRefreshToken).concat(HttpLink(uri)),
      cache: GraphQLCache(store: _store!),
    );
    _accessToken = _spService.accessToken;
    _refreshToken = _spService.refreshToken;
    _userId = _spService.userId;
  }

  String getAccessToken() {
    return 'Bearer $_accessToken';
  }

  String getRefreshToken() {
    return 'Bearer $_refreshToken';
  }

  get isAuthenticated => _accessToken != null ? true : false;

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
      throw Exception(result.exception!.graphqlErrors.first.message);
    }
    accessToken = result.parsedData?.login.accessToken;
    refreshToken = result.parsedData?.login.refreshToken;
    userId = result.parsedData?.login.userId.toInt();
  }

  Stream<Response> _handleException(
    Request request,
    NextLink forward,
    LinkException exception,
  ) async* {
    if (exception is HttpLinkServerException &&
        exception.response.statusCode == 401) {
      await _updateToken();
      yield* forward(request);
      return;
    }

    throw exception;
  }

  Stream<Response>? _onGraphQLError(
    Request request,
    NextLink forward,
    Response response,
  ) async* {
    final isUnauthorized = response.errors!.any(
      (err) => err.message == 'Unauthorized',
    );
    if (isUnauthorized) {
      await _updateToken();
      yield* forward(request);
      return;
    }
    yield response;
  }

  set accessToken(String? value) {
    _accessToken = value;
    _spService.accessToken = value;
  }

  set refreshToken(String? value) {
    _refreshToken = value;
    _spService.refreshToken = value;
  }

  set userId(int? value) {
    _userId = value;
    _spService.userId = value;
  }

  void logout() {
    accessToken = null;
    refreshToken = null;
  }

  Future<void> _updateToken() async {
    final result = await _refreshClient.mutate$RefreshTokens(
      Options$Mutation$RefreshTokens(),
    );
    if (result.hasException) {
      throw Exception(result.exception!.graphqlErrors.first.message);
    }
    accessToken = result.parsedData?.refreshTokens.accessToken;
    refreshToken = result.parsedData?.refreshTokens.refreshToken;
  }

  Future<List<Fragment$Order>> getActiveOrders() async {
    final result = await _client.query$GetActiveOrders(
      Options$Query$GetActiveOrders(),
    );
    if (result.hasException) {
      throw Exception(result.exception!.graphqlErrors.first.message);
    }
    return result.parsedData!.getActiveOrders;
  }

  Future<Enum$OrderStatus> changeOrderStatus(
    double id,
    Enum$OrderStatus status,
  ) async {
    final result = await _client.mutate$ChangeOrderStatus(
      Options$Mutation$ChangeOrderStatus(
        variables: Variables$Mutation$ChangeOrderStatus(
          status: status,
          id: id,
        ),
      ),
    );
    if (result.hasException) {
      throw Exception(result.exception!.graphqlErrors.first.message);
    }
    return result.parsedData!.changeOrderStatus.status;
  }

  Future<List<Fragment$Order>> getCompletedOrders() async {
    print('result');
    final result = await _client.query$GetCompletedOrders(
      Options$Query$GetCompletedOrders(
        variables: Variables$Query$GetCompletedOrders(id: _userId!),
      ),
    );
    if (result.hasException) {
      throw Exception(result.exception!.graphqlErrors.first.message);
    }
    return result.parsedData!.getCompletedOrders;
  }
}
