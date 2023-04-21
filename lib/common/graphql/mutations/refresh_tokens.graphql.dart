import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Mutation$RefreshTokens {
  Mutation$RefreshTokens({required this.refreshTokens});

  factory Mutation$RefreshTokens.fromJson(Map<String, dynamic> json) {
    final l$refreshTokens = json['refreshTokens'];
    return Mutation$RefreshTokens(
        refreshTokens: Mutation$RefreshTokens$refreshTokens.fromJson(
            (l$refreshTokens as Map<String, dynamic>)));
  }

  final Mutation$RefreshTokens$refreshTokens refreshTokens;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$refreshTokens = refreshTokens;
    _resultData['refreshTokens'] = l$refreshTokens.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$refreshTokens = refreshTokens;
    return Object.hashAll([l$refreshTokens]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RefreshTokens) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshTokens = refreshTokens;
    final lOther$refreshTokens = other.refreshTokens;
    if (l$refreshTokens != lOther$refreshTokens) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$RefreshTokens on Mutation$RefreshTokens {
  CopyWith$Mutation$RefreshTokens<Mutation$RefreshTokens> get copyWith =>
      CopyWith$Mutation$RefreshTokens(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RefreshTokens<TRes> {
  factory CopyWith$Mutation$RefreshTokens(
    Mutation$RefreshTokens instance,
    TRes Function(Mutation$RefreshTokens) then,
  ) = _CopyWithImpl$Mutation$RefreshTokens;

  factory CopyWith$Mutation$RefreshTokens.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RefreshTokens;

  TRes call({Mutation$RefreshTokens$refreshTokens? refreshTokens});
  CopyWith$Mutation$RefreshTokens$refreshTokens<TRes> get refreshTokens;
}

class _CopyWithImpl$Mutation$RefreshTokens<TRes>
    implements CopyWith$Mutation$RefreshTokens<TRes> {
  _CopyWithImpl$Mutation$RefreshTokens(
    this._instance,
    this._then,
  );

  final Mutation$RefreshTokens _instance;

  final TRes Function(Mutation$RefreshTokens) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? refreshTokens = _undefined}) =>
      _then(Mutation$RefreshTokens(
          refreshTokens: refreshTokens == _undefined || refreshTokens == null
              ? _instance.refreshTokens
              : (refreshTokens as Mutation$RefreshTokens$refreshTokens)));
  CopyWith$Mutation$RefreshTokens$refreshTokens<TRes> get refreshTokens {
    final local$refreshTokens = _instance.refreshTokens;
    return CopyWith$Mutation$RefreshTokens$refreshTokens(
        local$refreshTokens, (e) => call(refreshTokens: e));
  }
}

class _CopyWithStubImpl$Mutation$RefreshTokens<TRes>
    implements CopyWith$Mutation$RefreshTokens<TRes> {
  _CopyWithStubImpl$Mutation$RefreshTokens(this._res);

  TRes _res;

  call({Mutation$RefreshTokens$refreshTokens? refreshTokens}) => _res;
  CopyWith$Mutation$RefreshTokens$refreshTokens<TRes> get refreshTokens =>
      CopyWith$Mutation$RefreshTokens$refreshTokens.stub(_res);
}

const documentNodeMutationRefreshTokens = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RefreshTokens'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'refreshTokens'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'refreshToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'accessToken'),
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
Mutation$RefreshTokens _parserFn$Mutation$RefreshTokens(
        Map<String, dynamic> data) =>
    Mutation$RefreshTokens.fromJson(data);
typedef OnMutationCompleted$Mutation$RefreshTokens = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$RefreshTokens?,
);

class Options$Mutation$RefreshTokens
    extends graphql.MutationOptions<Mutation$RefreshTokens> {
  Options$Mutation$RefreshTokens({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RefreshTokens? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RefreshTokens? onCompleted,
    graphql.OnMutationUpdate<Mutation$RefreshTokens>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
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
                    data == null
                        ? null
                        : _parserFn$Mutation$RefreshTokens(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRefreshTokens,
          parserFn: _parserFn$Mutation$RefreshTokens,
        );

  final OnMutationCompleted$Mutation$RefreshTokens? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RefreshTokens
    extends graphql.WatchQueryOptions<Mutation$RefreshTokens> {
  WatchOptions$Mutation$RefreshTokens({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RefreshTokens? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationRefreshTokens,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RefreshTokens,
        );
}

extension ClientExtension$Mutation$RefreshTokens on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RefreshTokens>> mutate$RefreshTokens(
          [Options$Mutation$RefreshTokens? options]) async =>
      await this.mutate(options ?? Options$Mutation$RefreshTokens());
  graphql.ObservableQuery<Mutation$RefreshTokens> watchMutation$RefreshTokens(
          [WatchOptions$Mutation$RefreshTokens? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$RefreshTokens());
}

class Mutation$RefreshTokens$refreshTokens {
  Mutation$RefreshTokens$refreshTokens({
    required this.refreshToken,
    required this.accessToken,
    this.$__typename = 'TokensDto',
  });

  factory Mutation$RefreshTokens$refreshTokens.fromJson(
      Map<String, dynamic> json) {
    final l$refreshToken = json['refreshToken'];
    final l$accessToken = json['accessToken'];
    final l$$__typename = json['__typename'];
    return Mutation$RefreshTokens$refreshTokens(
      refreshToken: (l$refreshToken as String),
      accessToken: (l$accessToken as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String refreshToken;

  final String accessToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken;
    final l$accessToken = accessToken;
    _resultData['accessToken'] = l$accessToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$refreshToken = refreshToken;
    final l$accessToken = accessToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$refreshToken,
      l$accessToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RefreshTokens$refreshTokens) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) {
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

extension UtilityExtension$Mutation$RefreshTokens$refreshTokens
    on Mutation$RefreshTokens$refreshTokens {
  CopyWith$Mutation$RefreshTokens$refreshTokens<
          Mutation$RefreshTokens$refreshTokens>
      get copyWith => CopyWith$Mutation$RefreshTokens$refreshTokens(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RefreshTokens$refreshTokens<TRes> {
  factory CopyWith$Mutation$RefreshTokens$refreshTokens(
    Mutation$RefreshTokens$refreshTokens instance,
    TRes Function(Mutation$RefreshTokens$refreshTokens) then,
  ) = _CopyWithImpl$Mutation$RefreshTokens$refreshTokens;

  factory CopyWith$Mutation$RefreshTokens$refreshTokens.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RefreshTokens$refreshTokens;

  TRes call({
    String? refreshToken,
    String? accessToken,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RefreshTokens$refreshTokens<TRes>
    implements CopyWith$Mutation$RefreshTokens$refreshTokens<TRes> {
  _CopyWithImpl$Mutation$RefreshTokens$refreshTokens(
    this._instance,
    this._then,
  );

  final Mutation$RefreshTokens$refreshTokens _instance;

  final TRes Function(Mutation$RefreshTokens$refreshTokens) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? refreshToken = _undefined,
    Object? accessToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RefreshTokens$refreshTokens(
        refreshToken: refreshToken == _undefined || refreshToken == null
            ? _instance.refreshToken
            : (refreshToken as String),
        accessToken: accessToken == _undefined || accessToken == null
            ? _instance.accessToken
            : (accessToken as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RefreshTokens$refreshTokens<TRes>
    implements CopyWith$Mutation$RefreshTokens$refreshTokens<TRes> {
  _CopyWithStubImpl$Mutation$RefreshTokens$refreshTokens(this._res);

  TRes _res;

  call({
    String? refreshToken,
    String? accessToken,
    String? $__typename,
  }) =>
      _res;
}
