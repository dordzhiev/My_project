import '../fragments/personal_info.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$GetPersonalInformation {
  factory Variables$Query$GetPersonalInformation({required int id}) =>
      Variables$Query$GetPersonalInformation._({
        r'id': id,
      });

  Variables$Query$GetPersonalInformation._(this._$data);

  factory Variables$Query$GetPersonalInformation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Variables$Query$GetPersonalInformation._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetPersonalInformation<
          Variables$Query$GetPersonalInformation>
      get copyWith => CopyWith$Variables$Query$GetPersonalInformation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetPersonalInformation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetPersonalInformation<TRes> {
  factory CopyWith$Variables$Query$GetPersonalInformation(
    Variables$Query$GetPersonalInformation instance,
    TRes Function(Variables$Query$GetPersonalInformation) then,
  ) = _CopyWithImpl$Variables$Query$GetPersonalInformation;

  factory CopyWith$Variables$Query$GetPersonalInformation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetPersonalInformation;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$GetPersonalInformation<TRes>
    implements CopyWith$Variables$Query$GetPersonalInformation<TRes> {
  _CopyWithImpl$Variables$Query$GetPersonalInformation(
    this._instance,
    this._then,
  );

  final Variables$Query$GetPersonalInformation _instance;

  final TRes Function(Variables$Query$GetPersonalInformation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$GetPersonalInformation._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetPersonalInformation<TRes>
    implements CopyWith$Variables$Query$GetPersonalInformation<TRes> {
  _CopyWithStubImpl$Variables$Query$GetPersonalInformation(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$GetPersonalInformation {
  Query$GetPersonalInformation({required this.getUserById});

  factory Query$GetPersonalInformation.fromJson(Map<String, dynamic> json) {
    final l$getUserById = json['getUserById'];
    return Query$GetPersonalInformation(
        getUserById: Fragment$PersonalInfo.fromJson(
            (l$getUserById as Map<String, dynamic>)));
  }

  final Fragment$PersonalInfo getUserById;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getUserById = getUserById;
    _resultData['getUserById'] = l$getUserById.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getUserById = getUserById;
    return Object.hashAll([l$getUserById]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPersonalInformation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getUserById = getUserById;
    final lOther$getUserById = other.getUserById;
    if (l$getUserById != lOther$getUserById) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPersonalInformation
    on Query$GetPersonalInformation {
  CopyWith$Query$GetPersonalInformation<Query$GetPersonalInformation>
      get copyWith => CopyWith$Query$GetPersonalInformation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPersonalInformation<TRes> {
  factory CopyWith$Query$GetPersonalInformation(
    Query$GetPersonalInformation instance,
    TRes Function(Query$GetPersonalInformation) then,
  ) = _CopyWithImpl$Query$GetPersonalInformation;

  factory CopyWith$Query$GetPersonalInformation.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPersonalInformation;

  TRes call({Fragment$PersonalInfo? getUserById});
  CopyWith$Fragment$PersonalInfo<TRes> get getUserById;
}

class _CopyWithImpl$Query$GetPersonalInformation<TRes>
    implements CopyWith$Query$GetPersonalInformation<TRes> {
  _CopyWithImpl$Query$GetPersonalInformation(
    this._instance,
    this._then,
  );

  final Query$GetPersonalInformation _instance;

  final TRes Function(Query$GetPersonalInformation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? getUserById = _undefined}) =>
      _then(Query$GetPersonalInformation(
          getUserById: getUserById == _undefined || getUserById == null
              ? _instance.getUserById
              : (getUserById as Fragment$PersonalInfo)));
  CopyWith$Fragment$PersonalInfo<TRes> get getUserById {
    final local$getUserById = _instance.getUserById;
    return CopyWith$Fragment$PersonalInfo(
        local$getUserById, (e) => call(getUserById: e));
  }
}

class _CopyWithStubImpl$Query$GetPersonalInformation<TRes>
    implements CopyWith$Query$GetPersonalInformation<TRes> {
  _CopyWithStubImpl$Query$GetPersonalInformation(this._res);

  TRes _res;

  call({Fragment$PersonalInfo? getUserById}) => _res;
  CopyWith$Fragment$PersonalInfo<TRes> get getUserById =>
      CopyWith$Fragment$PersonalInfo.stub(_res);
}

const documentNodeQueryGetPersonalInformation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPersonalInformation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getUserById'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PersonalInfo'),
            directives: [],
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
  fragmentDefinitionPersonalInfo,
]);
Query$GetPersonalInformation _parserFn$Query$GetPersonalInformation(
        Map<String, dynamic> data) =>
    Query$GetPersonalInformation.fromJson(data);
typedef OnQueryComplete$Query$GetPersonalInformation = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetPersonalInformation?,
);

class Options$Query$GetPersonalInformation
    extends graphql.QueryOptions<Query$GetPersonalInformation> {
  Options$Query$GetPersonalInformation({
    String? operationName,
    required Variables$Query$GetPersonalInformation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPersonalInformation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetPersonalInformation? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$GetPersonalInformation(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetPersonalInformation,
          parserFn: _parserFn$Query$GetPersonalInformation,
        );

  final OnQueryComplete$Query$GetPersonalInformation? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetPersonalInformation
    extends graphql.WatchQueryOptions<Query$GetPersonalInformation> {
  WatchOptions$Query$GetPersonalInformation({
    String? operationName,
    required Variables$Query$GetPersonalInformation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPersonalInformation? typedOptimisticResult,
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
          document: documentNodeQueryGetPersonalInformation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetPersonalInformation,
        );
}

class FetchMoreOptions$Query$GetPersonalInformation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetPersonalInformation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetPersonalInformation variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetPersonalInformation,
        );
}

extension ClientExtension$Query$GetPersonalInformation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetPersonalInformation>>
      query$GetPersonalInformation(
              Options$Query$GetPersonalInformation options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetPersonalInformation>
      watchQuery$GetPersonalInformation(
              WatchOptions$Query$GetPersonalInformation options) =>
          this.watchQuery(options);
  void writeQuery$GetPersonalInformation({
    required Query$GetPersonalInformation data,
    required Variables$Query$GetPersonalInformation variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetPersonalInformation),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetPersonalInformation? readQuery$GetPersonalInformation({
    required Variables$Query$GetPersonalInformation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetPersonalInformation),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetPersonalInformation.fromJson(result);
  }
}
