import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$Authenticate {
  factory Variables$Mutation$Authenticate({
    required String username,
    required String password,
  }) =>
      Variables$Mutation$Authenticate._({
        r'username': username,
        r'password': password,
      });

  Variables$Mutation$Authenticate._(this._$data);

  factory Variables$Mutation$Authenticate.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Variables$Mutation$Authenticate._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);
  String get password => (_$data['password'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Variables$Mutation$Authenticate<Variables$Mutation$Authenticate>
      get copyWith => CopyWith$Variables$Mutation$Authenticate(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$Authenticate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$password = password;
    return Object.hashAll([
      l$username,
      l$password,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$Authenticate<TRes> {
  factory CopyWith$Variables$Mutation$Authenticate(
    Variables$Mutation$Authenticate instance,
    TRes Function(Variables$Mutation$Authenticate) then,
  ) = _CopyWithImpl$Variables$Mutation$Authenticate;

  factory CopyWith$Variables$Mutation$Authenticate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Authenticate;

  TRes call({
    String? username,
    String? password,
  });
}

class _CopyWithImpl$Variables$Mutation$Authenticate<TRes>
    implements CopyWith$Variables$Mutation$Authenticate<TRes> {
  _CopyWithImpl$Variables$Mutation$Authenticate(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Authenticate _instance;

  final TRes Function(Variables$Mutation$Authenticate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Variables$Mutation$Authenticate._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Authenticate<TRes>
    implements CopyWith$Variables$Mutation$Authenticate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Authenticate(this._res);

  TRes _res;

  call({
    String? username,
    String? password,
  }) =>
      _res;
}

class Mutation$Authenticate {
  Mutation$Authenticate({required this.login});

  factory Mutation$Authenticate.fromJson(Map<String, dynamic> json) {
    final l$login = json['login'];
    return Mutation$Authenticate(
        login: Mutation$Authenticate$login.fromJson(
            (l$login as Map<String, dynamic>)));
  }

  final Mutation$Authenticate$login login;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    return Object.hashAll([l$login]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Authenticate) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Authenticate on Mutation$Authenticate {
  CopyWith$Mutation$Authenticate<Mutation$Authenticate> get copyWith =>
      CopyWith$Mutation$Authenticate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Authenticate<TRes> {
  factory CopyWith$Mutation$Authenticate(
    Mutation$Authenticate instance,
    TRes Function(Mutation$Authenticate) then,
  ) = _CopyWithImpl$Mutation$Authenticate;

  factory CopyWith$Mutation$Authenticate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Authenticate;

  TRes call({Mutation$Authenticate$login? login});
  CopyWith$Mutation$Authenticate$login<TRes> get login;
}

class _CopyWithImpl$Mutation$Authenticate<TRes>
    implements CopyWith$Mutation$Authenticate<TRes> {
  _CopyWithImpl$Mutation$Authenticate(
    this._instance,
    this._then,
  );

  final Mutation$Authenticate _instance;

  final TRes Function(Mutation$Authenticate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? login = _undefined}) => _then(Mutation$Authenticate(
      login: login == _undefined || login == null
          ? _instance.login
          : (login as Mutation$Authenticate$login)));
  CopyWith$Mutation$Authenticate$login<TRes> get login {
    final local$login = _instance.login;
    return CopyWith$Mutation$Authenticate$login(
        local$login, (e) => call(login: e));
  }
}

class _CopyWithStubImpl$Mutation$Authenticate<TRes>
    implements CopyWith$Mutation$Authenticate<TRes> {
  _CopyWithStubImpl$Mutation$Authenticate(this._res);

  TRes _res;

  call({Mutation$Authenticate$login? login}) => _res;
  CopyWith$Mutation$Authenticate$login<TRes> get login =>
      CopyWith$Mutation$Authenticate$login.stub(_res);
}

const documentNodeMutationAuthenticate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Authenticate'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'login'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'loginUserInput'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'username'),
                value: VariableNode(name: NameNode(value: 'username')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'password'),
                value: VariableNode(name: NameNode(value: 'password')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'accessToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'refreshToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Mutation$Authenticate _parserFn$Mutation$Authenticate(
        Map<String, dynamic> data) =>
    Mutation$Authenticate.fromJson(data);
typedef OnMutationCompleted$Mutation$Authenticate = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Authenticate?,
);

class Options$Mutation$Authenticate
    extends graphql.MutationOptions<Mutation$Authenticate> {
  Options$Mutation$Authenticate({
    String? operationName,
    required Variables$Mutation$Authenticate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Authenticate? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Authenticate? onCompleted,
    graphql.OnMutationUpdate<Mutation$Authenticate>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Authenticate(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAuthenticate,
          parserFn: _parserFn$Mutation$Authenticate,
        );

  final OnMutationCompleted$Mutation$Authenticate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Authenticate
    extends graphql.WatchQueryOptions<Mutation$Authenticate> {
  WatchOptions$Mutation$Authenticate({
    String? operationName,
    required Variables$Mutation$Authenticate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Authenticate? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationAuthenticate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Authenticate,
        );
}

extension ClientExtension$Mutation$Authenticate on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Authenticate>> mutate$Authenticate(
          Options$Mutation$Authenticate options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Authenticate> watchMutation$Authenticate(
          WatchOptions$Mutation$Authenticate options) =>
      this.watchMutation(options);
}

class Mutation$Authenticate$login {
  Mutation$Authenticate$login({
    required this.accessToken,
    required this.refreshToken,
    required this.userId,
    this.$__typename = 'TokensDto',
  });

  factory Mutation$Authenticate$login.fromJson(Map<String, dynamic> json) {
    final l$accessToken = json['accessToken'];
    final l$refreshToken = json['refreshToken'];
    final l$userId = json['userId'];
    final l$$__typename = json['__typename'];
    return Mutation$Authenticate$login(
      accessToken: (l$accessToken as String),
      refreshToken: (l$refreshToken as String),
      userId: (l$userId as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String accessToken;

  final String refreshToken;

  final double userId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessToken = accessToken;
    _resultData['accessToken'] = l$accessToken;
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessToken = accessToken;
    final l$refreshToken = refreshToken;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accessToken,
      l$refreshToken,
      l$userId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Authenticate$login) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Authenticate$login
    on Mutation$Authenticate$login {
  CopyWith$Mutation$Authenticate$login<Mutation$Authenticate$login>
      get copyWith => CopyWith$Mutation$Authenticate$login(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Authenticate$login<TRes> {
  factory CopyWith$Mutation$Authenticate$login(
    Mutation$Authenticate$login instance,
    TRes Function(Mutation$Authenticate$login) then,
  ) = _CopyWithImpl$Mutation$Authenticate$login;

  factory CopyWith$Mutation$Authenticate$login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Authenticate$login;

  TRes call({
    String? accessToken,
    String? refreshToken,
    double? userId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Authenticate$login<TRes>
    implements CopyWith$Mutation$Authenticate$login<TRes> {
  _CopyWithImpl$Mutation$Authenticate$login(
    this._instance,
    this._then,
  );

  final Mutation$Authenticate$login _instance;

  final TRes Function(Mutation$Authenticate$login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessToken = _undefined,
    Object? refreshToken = _undefined,
    Object? userId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Authenticate$login(
        accessToken: accessToken == _undefined || accessToken == null
            ? _instance.accessToken
            : (accessToken as String),
        refreshToken: refreshToken == _undefined || refreshToken == null
            ? _instance.refreshToken
            : (refreshToken as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Authenticate$login<TRes>
    implements CopyWith$Mutation$Authenticate$login<TRes> {
  _CopyWithStubImpl$Mutation$Authenticate$login(this._res);

  TRes _res;

  call({
    String? accessToken,
    String? refreshToken,
    double? userId,
    String? $__typename,
  }) =>
      _res;
}
