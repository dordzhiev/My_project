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
    final resultData = <String, dynamic>{};
    final l$getActiveOrders = getActiveOrders;
    resultData['getActiveOrders'] =
        l$getActiveOrders.map((e) => e.toJson()).toList();
    return resultData;
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
    if (other is! Query$GetActiveOrders || runtimeType != other.runtimeType) {
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
          fn);
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

  @override
  TRes call({Object? getActiveOrders = _undefined}) =>
      _then(Query$GetActiveOrders(
          getActiveOrders:
              getActiveOrders == _undefined || getActiveOrders == null
                  ? _instance.getActiveOrders
                  : (getActiveOrders as List<Fragment$Order>)));
  @override
  TRes getActiveOrders(
          Iterable<Fragment$Order> Function(
                  Iterable<CopyWith$Fragment$Order<Fragment$Order>>)
              fn) =>
      call(
          getActiveOrders:
              fn(_instance.getActiveOrders.map((e) => CopyWith$Fragment$Order(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetActiveOrders<TRes>
    implements CopyWith$Query$GetActiveOrders<TRes> {
  _CopyWithStubImpl$Query$GetActiveOrders(this._res);

  final TRes _res;

  @override
  call({List<Fragment$Order>? getActiveOrders}) => _res;
  @override
  getActiveOrders(fn) => _res;
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
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetActiveOrders? typedOptimisticResult,
    super.pollInterval,
    super.context,
    OnQueryComplete$Query$GetActiveOrders? onComplete,
    super.onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetActiveOrders(data),
                  ),
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
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetActiveOrders? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeQueryGetActiveOrders,
          parserFn: _parserFn$Query$GetActiveOrders,
        );
}

class FetchMoreOptions$Query$GetActiveOrders extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetActiveOrders(
      {required super.updateQuery})
      : super(
          document: documentNodeQueryGetActiveOrders,
        );
}

extension ClientExtension$Query$GetActiveOrders on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetActiveOrders>> query$GetActiveOrders(
          [Options$Query$GetActiveOrders? options]) async =>
      await query(options ?? Options$Query$GetActiveOrders());
  graphql.ObservableQuery<Query$GetActiveOrders> watchQuery$GetActiveOrders(
          [WatchOptions$Query$GetActiveOrders? options]) =>
      watchQuery(options ?? WatchOptions$Query$GetActiveOrders());
  void writeQuery$GetActiveOrders({
    required Query$GetActiveOrders data,
    bool broadcast = true,
  }) =>
      writeQuery(
        const graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetActiveOrders)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetActiveOrders? readQuery$GetActiveOrders({bool optimistic = true}) {
    final result = readQuery(
      const graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetActiveOrders)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetActiveOrders.fromJson(result);
  }
}
