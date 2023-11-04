import 'package:courier_app/common/graphql/mutations/authenticate.graphql.dart';
import 'package:courier_app/services/shared_preferences_service.dart';
import 'package:courier_app/utils/graphql_utils.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:path_provider/path_provider.dart';

const String uri = 'https://api.sbus.ru/graphql';
const String webSocketUri = 'wss://api.sbus.ru/graphql';

class GraphQLService {
  static GraphQLService? _instance;

  final SPService _spService = GetIt.instance<SPService>();
  late final GraphQLClient _client;

  // late final GraphQLClient _refreshClient;

  GraphQLService._();

  static Future<GraphQLService> getInstance() async {
    if (_instance == null) {
      _instance = GraphQLService._();
      await _instance!.init();
    }
    return _instance!;
  }

  GraphQLClient get client => _client;

  Future<void> init() async {
    final appDocumentDirectory = await getApplicationSupportDirectory();
    final store = await HiveStore.open(path: appDocumentDirectory.path);
    _client = GraphQLClient(
      link: _createLink(),
      cache: GraphQLCache(store: store),
      defaultPolicies: DefaultPolicies(
        query: Policies(fetch: FetchPolicy.networkOnly),
        mutate: Policies(error: ErrorPolicy.all),
      ),
    );
    // _refreshClient = GraphQLClient(
    //   link: AuthLink(getToken: _getRefreshToken).concat(HttpLink(uri)),
    //   cache: GraphQLCache(store: store),
    // );
  }

  Link _createLink() {
    return Link.from([
      DedupeLink(),
      ErrorLink(onGraphQLError: _onGraphQLError),
      AuthLink(getToken: _getAccessToken),
    ]).split((request) => !request.isSubscription, HttpLink(uri));
  }

  String _getAccessToken() => 'Bearer ${_spService.accessToken}';

  // String _getRefreshToken() => 'Bearer ${_spService.refreshToken}';

  Stream<Response>? _onGraphQLError(
    Request request,
    NextLink forward,
    Response response,
  ) async* {
    print('object');
    final isUnauthorized = response.errors!.any(
      (err) => err.message == 'Unauthorized',
    );
    if (isUnauthorized && _spService.accessToken != null) {
      await _updateToken();
      yield* forward(request);
      return;
    }
    yield response;
  }

  Future<void> _updateToken() async {
    final result = await _client.mutate$Authenticate(
      Options$Mutation$Authenticate(
        variables: Variables$Mutation$Authenticate(
          username: _spService.username!,
          password: _spService.password!,
        ),
      ),
    );
    if (result.hasException) {
      GraphQLUtils.processException(result);
    }
    _spService.accessToken = result.parsedData?.login.accessToken;
    _spService.refreshToken = result.parsedData?.login.refreshToken;
  }
}
