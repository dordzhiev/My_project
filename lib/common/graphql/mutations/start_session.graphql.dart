import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$StartSession {
  factory Variables$Mutation$StartSession({
    required double latitude,
    required double longitude,
  }) =>
      Variables$Mutation$StartSession._({
        r'latitude': latitude,
        r'longitude': longitude,
      });

  Variables$Mutation$StartSession._(this._$data);

  factory Variables$Mutation$StartSession.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$latitude = data['latitude'];
    result$data['latitude'] = (l$latitude as num).toDouble();
    final l$longitude = data['longitude'];
    result$data['longitude'] = (l$longitude as num).toDouble();
    return Variables$Mutation$StartSession._(result$data);
  }

  Map<String, dynamic> _$data;

  double get latitude => (_$data['latitude'] as double);
  double get longitude => (_$data['longitude'] as double);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$latitude = latitude;
    result$data['latitude'] = l$latitude;
    final l$longitude = longitude;
    result$data['longitude'] = l$longitude;
    return result$data;
  }

  CopyWith$Variables$Mutation$StartSession<Variables$Mutation$StartSession>
      get copyWith => CopyWith$Variables$Mutation$StartSession(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$StartSession) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    return Object.hashAll([
      l$latitude,
      l$longitude,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$StartSession<TRes> {
  factory CopyWith$Variables$Mutation$StartSession(
    Variables$Mutation$StartSession instance,
    TRes Function(Variables$Mutation$StartSession) then,
  ) = _CopyWithImpl$Variables$Mutation$StartSession;

  factory CopyWith$Variables$Mutation$StartSession.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$StartSession;

  TRes call({
    double? latitude,
    double? longitude,
  });
}

class _CopyWithImpl$Variables$Mutation$StartSession<TRes>
    implements CopyWith$Variables$Mutation$StartSession<TRes> {
  _CopyWithImpl$Variables$Mutation$StartSession(
    this._instance,
    this._then,
  );

  final Variables$Mutation$StartSession _instance;

  final TRes Function(Variables$Mutation$StartSession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
  }) =>
      _then(Variables$Mutation$StartSession._({
        ..._instance._$data,
        if (latitude != _undefined && latitude != null)
          'latitude': (latitude as double),
        if (longitude != _undefined && longitude != null)
          'longitude': (longitude as double),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$StartSession<TRes>
    implements CopyWith$Variables$Mutation$StartSession<TRes> {
  _CopyWithStubImpl$Variables$Mutation$StartSession(this._res);

  TRes _res;

  call({
    double? latitude,
    double? longitude,
  }) =>
      _res;
}

class Mutation$StartSession {
  Mutation$StartSession({required this.startCourierSession});

  factory Mutation$StartSession.fromJson(Map<String, dynamic> json) {
    final l$startCourierSession = json['startCourierSession'];
    return Mutation$StartSession(
        startCourierSession: Mutation$StartSession$startCourierSession.fromJson(
            (l$startCourierSession as Map<String, dynamic>)));
  }

  final Mutation$StartSession$startCourierSession startCourierSession;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$startCourierSession = startCourierSession;
    _resultData['startCourierSession'] = l$startCourierSession.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$startCourierSession = startCourierSession;
    return Object.hashAll([l$startCourierSession]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$StartSession) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$startCourierSession = startCourierSession;
    final lOther$startCourierSession = other.startCourierSession;
    if (l$startCourierSession != lOther$startCourierSession) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StartSession on Mutation$StartSession {
  CopyWith$Mutation$StartSession<Mutation$StartSession> get copyWith =>
      CopyWith$Mutation$StartSession(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StartSession<TRes> {
  factory CopyWith$Mutation$StartSession(
    Mutation$StartSession instance,
    TRes Function(Mutation$StartSession) then,
  ) = _CopyWithImpl$Mutation$StartSession;

  factory CopyWith$Mutation$StartSession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$StartSession;

  TRes call({Mutation$StartSession$startCourierSession? startCourierSession});
  CopyWith$Mutation$StartSession$startCourierSession<TRes>
      get startCourierSession;
}

class _CopyWithImpl$Mutation$StartSession<TRes>
    implements CopyWith$Mutation$StartSession<TRes> {
  _CopyWithImpl$Mutation$StartSession(
    this._instance,
    this._then,
  );

  final Mutation$StartSession _instance;

  final TRes Function(Mutation$StartSession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? startCourierSession = _undefined}) =>
      _then(Mutation$StartSession(
          startCourierSession:
              startCourierSession == _undefined || startCourierSession == null
                  ? _instance.startCourierSession
                  : (startCourierSession
                      as Mutation$StartSession$startCourierSession)));
  CopyWith$Mutation$StartSession$startCourierSession<TRes>
      get startCourierSession {
    final local$startCourierSession = _instance.startCourierSession;
    return CopyWith$Mutation$StartSession$startCourierSession(
        local$startCourierSession, (e) => call(startCourierSession: e));
  }
}

class _CopyWithStubImpl$Mutation$StartSession<TRes>
    implements CopyWith$Mutation$StartSession<TRes> {
  _CopyWithStubImpl$Mutation$StartSession(this._res);

  TRes _res;

  call({Mutation$StartSession$startCourierSession? startCourierSession}) =>
      _res;
  CopyWith$Mutation$StartSession$startCourierSession<TRes>
      get startCourierSession =>
          CopyWith$Mutation$StartSession$startCourierSession.stub(_res);
}

const documentNodeMutationStartSession = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'StartSession'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'latitude')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'longitude')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'startCourierSession'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'location'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'latitude'),
                value: VariableNode(name: NameNode(value: 'latitude')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'longitude'),
                value: VariableNode(name: NameNode(value: 'longitude')),
              ),
            ]),
          )
        ],
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
Mutation$StartSession _parserFn$Mutation$StartSession(
        Map<String, dynamic> data) =>
    Mutation$StartSession.fromJson(data);
typedef OnMutationCompleted$Mutation$StartSession = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$StartSession?,
);

class Options$Mutation$StartSession
    extends graphql.MutationOptions<Mutation$StartSession> {
  Options$Mutation$StartSession({
    String? operationName,
    required Variables$Mutation$StartSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$StartSession? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$StartSession? onCompleted,
    graphql.OnMutationUpdate<Mutation$StartSession>? update,
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
                    data == null ? null : _parserFn$Mutation$StartSession(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationStartSession,
          parserFn: _parserFn$Mutation$StartSession,
        );

  final OnMutationCompleted$Mutation$StartSession? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$StartSession
    extends graphql.WatchQueryOptions<Mutation$StartSession> {
  WatchOptions$Mutation$StartSession({
    String? operationName,
    required Variables$Mutation$StartSession variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$StartSession? typedOptimisticResult,
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
          document: documentNodeMutationStartSession,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$StartSession,
        );
}

extension ClientExtension$Mutation$StartSession on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$StartSession>> mutate$StartSession(
          Options$Mutation$StartSession options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$StartSession> watchMutation$StartSession(
          WatchOptions$Mutation$StartSession options) =>
      this.watchMutation(options);
}

class Mutation$StartSession$startCourierSession {
  Mutation$StartSession$startCourierSession({this.$__typename = 'Session'});

  factory Mutation$StartSession$startCourierSession.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$StartSession$startCourierSession(
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
    if (!(other is Mutation$StartSession$startCourierSession) ||
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

extension UtilityExtension$Mutation$StartSession$startCourierSession
    on Mutation$StartSession$startCourierSession {
  CopyWith$Mutation$StartSession$startCourierSession<
          Mutation$StartSession$startCourierSession>
      get copyWith => CopyWith$Mutation$StartSession$startCourierSession(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$StartSession$startCourierSession<TRes> {
  factory CopyWith$Mutation$StartSession$startCourierSession(
    Mutation$StartSession$startCourierSession instance,
    TRes Function(Mutation$StartSession$startCourierSession) then,
  ) = _CopyWithImpl$Mutation$StartSession$startCourierSession;

  factory CopyWith$Mutation$StartSession$startCourierSession.stub(TRes res) =
      _CopyWithStubImpl$Mutation$StartSession$startCourierSession;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$StartSession$startCourierSession<TRes>
    implements CopyWith$Mutation$StartSession$startCourierSession<TRes> {
  _CopyWithImpl$Mutation$StartSession$startCourierSession(
    this._instance,
    this._then,
  );

  final Mutation$StartSession$startCourierSession _instance;

  final TRes Function(Mutation$StartSession$startCourierSession) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$StartSession$startCourierSession(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$StartSession$startCourierSession<TRes>
    implements CopyWith$Mutation$StartSession$startCourierSession<TRes> {
  _CopyWithStubImpl$Mutation$StartSession$startCourierSession(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
