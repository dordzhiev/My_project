import '../fragments/order.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$GetActiveOrders {
  Query$GetActiveOrders({required this.getActiveOrders});

  factory Query$GetActiveOrders.fromJson(Map<String, dynamic> json) {
    final l$getActiveOrders = json['getActiveOrders'];
    return Query$GetActiveOrders(
        getActiveOrders: (l$getActiveOrders as List<dynamic>)
            .map((e) => Fragment$Order.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment$Order> getActiveOrders;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getActiveOrders = getActiveOrders;
    _resultData['getActiveOrders'] =
        l$getActiveOrders.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getActiveOrders = getActiveOrders;
    return Object.hashAll([Object.hashAll(l$getActiveOrders.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActiveOrders) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getActiveOrders = getActiveOrders;
    final lOther$getActiveOrders = other.getActiveOrders;
    if (l$getActiveOrders.length != lOther$getActiveOrders.length) {
      return false;
    }
    for (int i = 0; i < l$getActiveOrders.length; i++) {
      final l$getActiveOrders$entry = l$getActiveOrders[i];
      final lOther$getActiveOrders$entry = lOther$getActiveOrders[i];
      if (l$getActiveOrders$entry != lOther$getActiveOrders$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$GetActiveOrders on Query$GetActiveOrders {
  CopyWith$Query$GetActiveOrders<Query$GetActiveOrders> get copyWith =>
      CopyWith$Query$GetActiveOrders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetActiveOrders<TRes> {
  factory CopyWith$Query$GetActiveOrders(
    Query$GetActiveOrders instance,
    TRes Function(Query$GetActiveOrders) then,
  ) = _CopyWithImpl$Query$GetActiveOrders;

  factory CopyWith$Query$GetActiveOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActiveOrders;

  TRes call({List<Fragment$Order>? getActiveOrders});
  TRes getActiveOrders(
      Iterable<Fragment$Order> Function(
              Iterable<CopyWith$Fragment$Order<Fragment$Order>>)
          _fn);
}

class _CopyWithImpl$Query$GetActiveOrders<TRes>
    implements CopyWith$Query$GetActiveOrders<TRes> {
  _CopyWithImpl$Query$GetActiveOrders(
    this._instance,
    this._then,
  );

  final Query$GetActiveOrders _instance;

  final TRes Function(Query$GetActiveOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? getActiveOrders = _undefined}) =>
      _then(Query$GetActiveOrders(
          getActiveOrders:
              getActiveOrders == _undefined || getActiveOrders == null
                  ? _instance.getActiveOrders
                  : (getActiveOrders as List<Fragment$Order>)));
  TRes getActiveOrders(
          Iterable<Fragment$Order> Function(
                  Iterable<CopyWith$Fragment$Order<Fragment$Order>>)
              _fn) =>
      call(
          getActiveOrders:
              _fn(_instance.getActiveOrders.map((e) => CopyWith$Fragment$Order(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetActiveOrders<TRes>
    implements CopyWith$Query$GetActiveOrders<TRes> {
  _CopyWithStubImpl$Query$GetActiveOrders(this._res);

  TRes _res;

  call({List<Fragment$Order>? getActiveOrders}) => _res;
  getActiveOrders(_fn) => _res;
}

const documentNodeQueryGetActiveOrders = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetActiveOrders'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getAllActiveOrdersByCourier'),
        alias: NameNode(value: 'getActiveOrders'),
        arguments: [],
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
Query$GetActiveOrders _parserFn$Query$GetActiveOrders(
        Map<String, dynamic> data) =>
    Query$GetActiveOrders.fromJson(data);
typedef OnQueryComplete$Query$GetActiveOrders = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetActiveOrders?,
);

class Options$Query$GetActiveOrders
    extends graphql.QueryOptions<Query$GetActiveOrders> {
  Options$Query$GetActiveOrders({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetActiveOrders? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetActiveOrders? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn$Query$GetActiveOrders(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetActiveOrders,
          parserFn: _parserFn$Query$GetActiveOrders,
        );

  final OnQueryComplete$Query$GetActiveOrders? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetActiveOrders
    extends graphql.WatchQueryOptions<Query$GetActiveOrders> {
  WatchOptions$Query$GetActiveOrders({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetActiveOrders? typedOptimisticResult,
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
          document: documentNodeQueryGetActiveOrders,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetActiveOrders,
        );
}

class FetchMoreOptions$Query$GetActiveOrders extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetActiveOrders(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetActiveOrders,
        );
}

extension ClientExtension$Query$GetActiveOrders on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetActiveOrders>> query$GetActiveOrders(
          [Options$Query$GetActiveOrders? options]) async =>
      await this.query(options ?? Options$Query$GetActiveOrders());
  graphql.ObservableQuery<Query$GetActiveOrders> watchQuery$GetActiveOrders(
          [WatchOptions$Query$GetActiveOrders? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetActiveOrders());
  void writeQuery$GetActiveOrders({
    required Query$GetActiveOrders data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetActiveOrders)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetActiveOrders? readQuery$GetActiveOrders({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetActiveOrders)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetActiveOrders.fromJson(result);
  }
}
