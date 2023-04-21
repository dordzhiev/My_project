import '../fragments/order.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$GetCompletedOrders {
  factory Variables$Query$GetCompletedOrders({required int id}) =>
      Variables$Query$GetCompletedOrders._({
        r'id': id,
      });

  Variables$Query$GetCompletedOrders._(this._$data);

  factory Variables$Query$GetCompletedOrders.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Variables$Query$GetCompletedOrders._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetCompletedOrders<
          Variables$Query$GetCompletedOrders>
      get copyWith => CopyWith$Variables$Query$GetCompletedOrders(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetCompletedOrders) ||
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

abstract class CopyWith$Variables$Query$GetCompletedOrders<TRes> {
  factory CopyWith$Variables$Query$GetCompletedOrders(
    Variables$Query$GetCompletedOrders instance,
    TRes Function(Variables$Query$GetCompletedOrders) then,
  ) = _CopyWithImpl$Variables$Query$GetCompletedOrders;

  factory CopyWith$Variables$Query$GetCompletedOrders.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCompletedOrders;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$GetCompletedOrders<TRes>
    implements CopyWith$Variables$Query$GetCompletedOrders<TRes> {
  _CopyWithImpl$Variables$Query$GetCompletedOrders(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCompletedOrders _instance;

  final TRes Function(Variables$Query$GetCompletedOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$GetCompletedOrders._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetCompletedOrders<TRes>
    implements CopyWith$Variables$Query$GetCompletedOrders<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCompletedOrders(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$GetCompletedOrders {
  Query$GetCompletedOrders({required this.getCompletedOrders});

  factory Query$GetCompletedOrders.fromJson(Map<String, dynamic> json) {
    final l$getCompletedOrders = json['getCompletedOrders'];
    return Query$GetCompletedOrders(
        getCompletedOrders: (l$getCompletedOrders as List<dynamic>)
            .map((e) => Fragment$Order.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment$Order> getCompletedOrders;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getCompletedOrders = getCompletedOrders;
    _resultData['getCompletedOrders'] =
        l$getCompletedOrders.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getCompletedOrders = getCompletedOrders;
    return Object.hashAll([Object.hashAll(l$getCompletedOrders.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCompletedOrders) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getCompletedOrders = getCompletedOrders;
    final lOther$getCompletedOrders = other.getCompletedOrders;
    if (l$getCompletedOrders.length != lOther$getCompletedOrders.length) {
      return false;
    }
    for (int i = 0; i < l$getCompletedOrders.length; i++) {
      final l$getCompletedOrders$entry = l$getCompletedOrders[i];
      final lOther$getCompletedOrders$entry = lOther$getCompletedOrders[i];
      if (l$getCompletedOrders$entry != lOther$getCompletedOrders$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCompletedOrders
    on Query$GetCompletedOrders {
  CopyWith$Query$GetCompletedOrders<Query$GetCompletedOrders> get copyWith =>
      CopyWith$Query$GetCompletedOrders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCompletedOrders<TRes> {
  factory CopyWith$Query$GetCompletedOrders(
    Query$GetCompletedOrders instance,
    TRes Function(Query$GetCompletedOrders) then,
  ) = _CopyWithImpl$Query$GetCompletedOrders;

  factory CopyWith$Query$GetCompletedOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCompletedOrders;

  TRes call({List<Fragment$Order>? getCompletedOrders});
  TRes getCompletedOrders(
      Iterable<Fragment$Order> Function(
              Iterable<CopyWith$Fragment$Order<Fragment$Order>>)
          _fn);
}

class _CopyWithImpl$Query$GetCompletedOrders<TRes>
    implements CopyWith$Query$GetCompletedOrders<TRes> {
  _CopyWithImpl$Query$GetCompletedOrders(
    this._instance,
    this._then,
  );

  final Query$GetCompletedOrders _instance;

  final TRes Function(Query$GetCompletedOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? getCompletedOrders = _undefined}) =>
      _then(Query$GetCompletedOrders(
          getCompletedOrders:
              getCompletedOrders == _undefined || getCompletedOrders == null
                  ? _instance.getCompletedOrders
                  : (getCompletedOrders as List<Fragment$Order>)));
  TRes getCompletedOrders(
          Iterable<Fragment$Order> Function(
                  Iterable<CopyWith$Fragment$Order<Fragment$Order>>)
              _fn) =>
      call(
          getCompletedOrders: _fn(
              _instance.getCompletedOrders.map((e) => CopyWith$Fragment$Order(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetCompletedOrders<TRes>
    implements CopyWith$Query$GetCompletedOrders<TRes> {
  _CopyWithStubImpl$Query$GetCompletedOrders(this._res);

  TRes _res;

  call({List<Fragment$Order>? getCompletedOrders}) => _res;
  getCompletedOrders(_fn) => _res;
}

const documentNodeQueryGetCompletedOrders = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCompletedOrders'),
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
        name: NameNode(value: 'getOrders'),
        alias: NameNode(value: 'getCompletedOrders'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'getOrdersInput'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'courierId'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'isNotCompleted'),
                value: BooleanValueNode(value: false),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Order'),
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
  fragmentDefinitionOrder,
]);
Query$GetCompletedOrders _parserFn$Query$GetCompletedOrders(
        Map<String, dynamic> data) =>
    Query$GetCompletedOrders.fromJson(data);
typedef OnQueryComplete$Query$GetCompletedOrders = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetCompletedOrders?,
);

class Options$Query$GetCompletedOrders
    extends graphql.QueryOptions<Query$GetCompletedOrders> {
  Options$Query$GetCompletedOrders({
    String? operationName,
    required Variables$Query$GetCompletedOrders variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCompletedOrders? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetCompletedOrders? onComplete,
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
                        : _parserFn$Query$GetCompletedOrders(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetCompletedOrders,
          parserFn: _parserFn$Query$GetCompletedOrders,
        );

  final OnQueryComplete$Query$GetCompletedOrders? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetCompletedOrders
    extends graphql.WatchQueryOptions<Query$GetCompletedOrders> {
  WatchOptions$Query$GetCompletedOrders({
    String? operationName,
    required Variables$Query$GetCompletedOrders variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCompletedOrders? typedOptimisticResult,
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
          document: documentNodeQueryGetCompletedOrders,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetCompletedOrders,
        );
}

class FetchMoreOptions$Query$GetCompletedOrders
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCompletedOrders({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetCompletedOrders variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetCompletedOrders,
        );
}

extension ClientExtension$Query$GetCompletedOrders on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCompletedOrders>>
      query$GetCompletedOrders(
              Options$Query$GetCompletedOrders options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetCompletedOrders>
      watchQuery$GetCompletedOrders(
              WatchOptions$Query$GetCompletedOrders options) =>
          this.watchQuery(options);
  void writeQuery$GetCompletedOrders({
    required Query$GetCompletedOrders data,
    required Variables$Query$GetCompletedOrders variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetCompletedOrders),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetCompletedOrders? readQuery$GetCompletedOrders({
    required Variables$Query$GetCompletedOrders variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetCompletedOrders),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetCompletedOrders.fromJson(result);
  }
}
