import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Mutation$EndSession {
  Mutation$EndSession({required this.endCourierSession});

  factory Mutation$EndSession.fromJson(Map<String, dynamic> json) {
    final l$endCourierSession = json['endCourierSession'];
    return Mutation$EndSession(
        endCourierSession: (l$endCourierSession as List<dynamic>)
            .map((e) => Mutation$EndSession$endCourierSession.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Mutation$EndSession$endCourierSession> endCourierSession;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCourierSession = endCourierSession;
    _resultData['endCourierSession'] =
        l$endCourierSession.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCourierSession = endCourierSession;
    return Object.hashAll([Object.hashAll(l$endCourierSession.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$EndSession) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCourierSession = endCourierSession;
    final lOther$endCourierSession = other.endCourierSession;
    if (l$endCourierSession.length != lOther$endCourierSession.length) {
      return false;
    }
    for (int i = 0; i < l$endCourierSession.length; i++) {
      final l$endCourierSession$entry = l$endCourierSession[i];
      final lOther$endCourierSession$entry = lOther$endCourierSession[i];
      if (l$endCourierSession$entry != lOther$endCourierSession$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Mutation$EndSession on Mutation$EndSession {
  CopyWith$Mutation$EndSession<Mutation$EndSession> get copyWith =>
      CopyWith$Mutation$EndSession(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EndSession<TRes> {
  factory CopyWith$Mutation$EndSession(
    Mutation$EndSession instance,
    TRes Function(Mutation$EndSession) then,
  ) = _CopyWithImpl$Mutation$EndSession;

  factory CopyWith$Mutation$EndSession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$EndSession;

  TRes call({List<Mutation$EndSession$endCourierSession>? endCourierSession});
  TRes endCourierSession(
      Iterable<Mutation$EndSession$endCourierSession> Function(
              Iterable<
                  CopyWith$Mutation$EndSession$endCourierSession<
                      Mutation$EndSession$endCourierSession>>)
          _fn);
}

class _CopyWithImpl$Mutation$EndSession<TRes>
    implements CopyWith$Mutation$EndSession<TRes> {
  _CopyWithImpl$Mutation$EndSession(
    this._instance,
    this._then,
  );

  final Mutation$EndSession _instance;

  final TRes Function(Mutation$EndSession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? endCourierSession = _undefined}) =>
      _then(Mutation$EndSession(
          endCourierSession:
              endCourierSession == _undefined || endCourierSession == null
                  ? _instance.endCourierSession
                  : (endCourierSession
                      as List<Mutation$EndSession$endCourierSession>)));
  TRes endCourierSession(
          Iterable<Mutation$EndSession$endCourierSession> Function(
                  Iterable<
                      CopyWith$Mutation$EndSession$endCourierSession<
                          Mutation$EndSession$endCourierSession>>)
              _fn) =>
      call(
          endCourierSession: _fn(_instance.endCourierSession
              .map((e) => CopyWith$Mutation$EndSession$endCourierSession(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$EndSession<TRes>
    implements CopyWith$Mutation$EndSession<TRes> {
  _CopyWithStubImpl$Mutation$EndSession(this._res);

  TRes _res;

  call({List<Mutation$EndSession$endCourierSession>? endCourierSession}) =>
      _res;
  endCourierSession(_fn) => _res;
}

const documentNodeMutationEndSession = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'EndSession'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'endCourierSession'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  ),
]);
Mutation$EndSession _parserFn$Mutation$EndSession(Map<String, dynamic> data) =>
    Mutation$EndSession.fromJson(data);
typedef OnMutationCompleted$Mutation$EndSession = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$EndSession?,
);

class Options$Mutation$EndSession
    extends graphql.MutationOptions<Mutation$EndSession> {
  Options$Mutation$EndSession({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EndSession? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$EndSession? onCompleted,
    graphql.OnMutationUpdate<Mutation$EndSession>? update,
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
                    data == null ? null : _parserFn$Mutation$EndSession(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationEndSession,
          parserFn: _parserFn$Mutation$EndSession,
        );

  final OnMutationCompleted$Mutation$EndSession? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$EndSession
    extends graphql.WatchQueryOptions<Mutation$EndSession> {
  WatchOptions$Mutation$EndSession({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EndSession? typedOptimisticResult,
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
          document: documentNodeMutationEndSession,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$EndSession,
        );
}

extension ClientExtension$Mutation$EndSession on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$EndSession>> mutate$EndSession(
          [Options$Mutation$EndSession? options]) async =>
      await this.mutate(options ?? Options$Mutation$EndSession());
  graphql.ObservableQuery<Mutation$EndSession> watchMutation$EndSession(
          [WatchOptions$Mutation$EndSession? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$EndSession());
}

class Mutation$EndSession$endCourierSession {
  Mutation$EndSession$endCourierSession({this.$__typename = 'Location'});

  factory Mutation$EndSession$endCourierSession.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$EndSession$endCourierSession(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$EndSession$endCourierSession) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$EndSession$endCourierSession
    on Mutation$EndSession$endCourierSession {
  CopyWith$Mutation$EndSession$endCourierSession<
          Mutation$EndSession$endCourierSession>
      get copyWith => CopyWith$Mutation$EndSession$endCourierSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$EndSession$endCourierSession<TRes> {
  factory CopyWith$Mutation$EndSession$endCourierSession(
    Mutation$EndSession$endCourierSession instance,
    TRes Function(Mutation$EndSession$endCourierSession) then,
  ) = _CopyWithImpl$Mutation$EndSession$endCourierSession;

  factory CopyWith$Mutation$EndSession$endCourierSession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$EndSession$endCourierSession;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$EndSession$endCourierSession<TRes>
    implements CopyWith$Mutation$EndSession$endCourierSession<TRes> {
  _CopyWithImpl$Mutation$EndSession$endCourierSession(
    this._instance,
    this._then,
  );

  final Mutation$EndSession$endCourierSession _instance;

  final TRes Function(Mutation$EndSession$endCourierSession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$EndSession$endCourierSession(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$EndSession$endCourierSession<TRes>
    implements CopyWith$Mutation$EndSession$endCourierSession<TRes> {
  _CopyWithStubImpl$Mutation$EndSession$endCourierSession(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
