import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$GetDeliveredOrders {
  Query$GetDeliveredOrders({required this.deliveredOrders});

  factory Query$GetDeliveredOrders.fromJson(Map<String, dynamic> json) {
    final l$deliveredOrders = json['deliveredOrders'];
    return Query$GetDeliveredOrders(
        deliveredOrders: (l$deliveredOrders as List<dynamic>)
            .map((e) => Query$GetDeliveredOrders$deliveredOrders.fromJson(
                (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Query$GetDeliveredOrders$deliveredOrders> deliveredOrders;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$deliveredOrders = deliveredOrders;
    resultData['deliveredOrders'] =
        l$deliveredOrders.map((e) => e.toJson()).toList();
    return resultData;
  }

  @override
  int get hashCode {
    final l$deliveredOrders = deliveredOrders;
    return Object.hashAll([Object.hashAll(l$deliveredOrders.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetDeliveredOrders ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deliveredOrders = deliveredOrders;
    final lOther$deliveredOrders = other.deliveredOrders;
    if (l$deliveredOrders.length != lOther$deliveredOrders.length) {
      return false;
    }
    for (int i = 0; i < l$deliveredOrders.length; i++) {
      final l$deliveredOrders$entry = l$deliveredOrders[i];
      final lOther$deliveredOrders$entry = lOther$deliveredOrders[i];
      if (l$deliveredOrders$entry != lOther$deliveredOrders$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$GetDeliveredOrders
    on Query$GetDeliveredOrders {
  CopyWith$Query$GetDeliveredOrders<Query$GetDeliveredOrders> get copyWith =>
      CopyWith$Query$GetDeliveredOrders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDeliveredOrders<TRes> {
  factory CopyWith$Query$GetDeliveredOrders(
    Query$GetDeliveredOrders instance,
    TRes Function(Query$GetDeliveredOrders) then,
  ) = _CopyWithImpl$Query$GetDeliveredOrders;

  factory CopyWith$Query$GetDeliveredOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDeliveredOrders;

  TRes call({List<Query$GetDeliveredOrders$deliveredOrders>? deliveredOrders});
  TRes deliveredOrders(
      Iterable<Query$GetDeliveredOrders$deliveredOrders> Function(
              Iterable<
                  CopyWith$Query$GetDeliveredOrders$deliveredOrders<
                      Query$GetDeliveredOrders$deliveredOrders>>)
          fn);
}

class _CopyWithImpl$Query$GetDeliveredOrders<TRes>
    implements CopyWith$Query$GetDeliveredOrders<TRes> {
  _CopyWithImpl$Query$GetDeliveredOrders(
    this._instance,
    this._then,
  );

  final Query$GetDeliveredOrders _instance;

  final TRes Function(Query$GetDeliveredOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? deliveredOrders = _undefined}) =>
      _then(Query$GetDeliveredOrders(
          deliveredOrders:
              deliveredOrders == _undefined || deliveredOrders == null
                  ? _instance.deliveredOrders
                  : (deliveredOrders
                      as List<Query$GetDeliveredOrders$deliveredOrders>)));
  @override
  TRes deliveredOrders(
          Iterable<Query$GetDeliveredOrders$deliveredOrders> Function(
                  Iterable<
                      CopyWith$Query$GetDeliveredOrders$deliveredOrders<
                          Query$GetDeliveredOrders$deliveredOrders>>)
              fn) =>
      call(
          deliveredOrders: fn(_instance.deliveredOrders
              .map((e) => CopyWith$Query$GetDeliveredOrders$deliveredOrders(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetDeliveredOrders<TRes>
    implements CopyWith$Query$GetDeliveredOrders<TRes> {
  _CopyWithStubImpl$Query$GetDeliveredOrders(this._res);

  final TRes _res;

  @override
  call({List<Query$GetDeliveredOrders$deliveredOrders>? deliveredOrders}) =>
      _res;
  @override
  deliveredOrders(fn) => _res;
}

const documentNodeQueryGetDeliveredOrders = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetDeliveredOrders'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getAllDeliveredOrdersByCourier'),
        alias: NameNode(value: 'deliveredOrders'),
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'datetime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'orders'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'fromAddress'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'courierPaymentCost'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'orderAmount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'orderDeliveredAt'),
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
          ),
          FieldNode(
            name: NameNode(value: 'totalCourierPaymentCost'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'totalCashAmount'),
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
Query$GetDeliveredOrders _parserFn$Query$GetDeliveredOrders(
        Map<String, dynamic> data) =>
    Query$GetDeliveredOrders.fromJson(data);
typedef OnQueryComplete$Query$GetDeliveredOrders = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetDeliveredOrders?,
);

class Options$Query$GetDeliveredOrders
    extends graphql.QueryOptions<Query$GetDeliveredOrders> {
  Options$Query$GetDeliveredOrders({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetDeliveredOrders? typedOptimisticResult,
    super.pollInterval,
    super.context,
    OnQueryComplete$Query$GetDeliveredOrders? onComplete,
    super.onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$GetDeliveredOrders(data),
                  ),
          document: documentNodeQueryGetDeliveredOrders,
          parserFn: _parserFn$Query$GetDeliveredOrders,
        );

  final OnQueryComplete$Query$GetDeliveredOrders? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetDeliveredOrders
    extends graphql.WatchQueryOptions<Query$GetDeliveredOrders> {
  WatchOptions$Query$GetDeliveredOrders({
    super.operationName,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetDeliveredOrders? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeQueryGetDeliveredOrders,
          parserFn: _parserFn$Query$GetDeliveredOrders,
        );
}

class FetchMoreOptions$Query$GetDeliveredOrders
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetDeliveredOrders(
      {required super.updateQuery})
      : super(
          document: documentNodeQueryGetDeliveredOrders,
        );
}

extension ClientExtension$Query$GetDeliveredOrders on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetDeliveredOrders>>
      query$GetDeliveredOrders(
              [Options$Query$GetDeliveredOrders? options]) async =>
          await query(options ?? Options$Query$GetDeliveredOrders());
  graphql.ObservableQuery<Query$GetDeliveredOrders>
      watchQuery$GetDeliveredOrders(
              [WatchOptions$Query$GetDeliveredOrders? options]) =>
          watchQuery(options ?? WatchOptions$Query$GetDeliveredOrders());
  void writeQuery$GetDeliveredOrders({
    required Query$GetDeliveredOrders data,
    bool broadcast = true,
  }) =>
      writeQuery(
        const graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetDeliveredOrders)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetDeliveredOrders? readQuery$GetDeliveredOrders(
      {bool optimistic = true}) {
    final result = readQuery(
      const graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetDeliveredOrders)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetDeliveredOrders.fromJson(result);
  }
}

class Query$GetDeliveredOrders$deliveredOrders {
  Query$GetDeliveredOrders$deliveredOrders({
    this.datetime,
    required this.orders,
    required this.totalCourierPaymentCost,
    required this.totalCashAmount,
    this.$__typename = 'OrdersHistory',
  });

  factory Query$GetDeliveredOrders$deliveredOrders.fromJson(
      Map<String, dynamic> json) {
    final l$datetime = json['datetime'];
    final l$orders = json['orders'];
    final l$totalCourierPaymentCost = json['totalCourierPaymentCost'];
    final l$totalCashAmount = json['totalCashAmount'];
    final l$$__typename = json['__typename'];
    return Query$GetDeliveredOrders$deliveredOrders(
      datetime:
          l$datetime == null ? null : DateTime.parse((l$datetime as String)),
      orders: (l$orders as List<dynamic>)
          .map((e) => Query$GetDeliveredOrders$deliveredOrders$orders.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      totalCourierPaymentCost: (l$totalCourierPaymentCost as num).toDouble(),
      totalCashAmount: (l$totalCashAmount as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? datetime;

  final List<Query$GetDeliveredOrders$deliveredOrders$orders> orders;

  final double totalCourierPaymentCost;

  final double totalCashAmount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$datetime = datetime;
    resultData['datetime'] = l$datetime?.toIso8601String();
    final l$orders = orders;
    resultData['orders'] = l$orders.map((e) => e.toJson()).toList();
    final l$totalCourierPaymentCost = totalCourierPaymentCost;
    resultData['totalCourierPaymentCost'] = l$totalCourierPaymentCost;
    final l$totalCashAmount = totalCashAmount;
    resultData['totalCashAmount'] = l$totalCashAmount;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$datetime = datetime;
    final l$orders = orders;
    final l$totalCourierPaymentCost = totalCourierPaymentCost;
    final l$totalCashAmount = totalCashAmount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$datetime,
      Object.hashAll(l$orders.map((v) => v)),
      l$totalCourierPaymentCost,
      l$totalCashAmount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetDeliveredOrders$deliveredOrders ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (l$datetime != lOther$datetime) {
      return false;
    }
    final l$orders = orders;
    final lOther$orders = other.orders;
    if (l$orders.length != lOther$orders.length) {
      return false;
    }
    for (int i = 0; i < l$orders.length; i++) {
      final l$orders$entry = l$orders[i];
      final lOther$orders$entry = lOther$orders[i];
      if (l$orders$entry != lOther$orders$entry) {
        return false;
      }
    }
    final l$totalCourierPaymentCost = totalCourierPaymentCost;
    final lOther$totalCourierPaymentCost = other.totalCourierPaymentCost;
    if (l$totalCourierPaymentCost != lOther$totalCourierPaymentCost) {
      return false;
    }
    final l$totalCashAmount = totalCashAmount;
    final lOther$totalCashAmount = other.totalCashAmount;
    if (l$totalCashAmount != lOther$totalCashAmount) {
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

extension UtilityExtension$Query$GetDeliveredOrders$deliveredOrders
    on Query$GetDeliveredOrders$deliveredOrders {
  CopyWith$Query$GetDeliveredOrders$deliveredOrders<
          Query$GetDeliveredOrders$deliveredOrders>
      get copyWith => CopyWith$Query$GetDeliveredOrders$deliveredOrders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDeliveredOrders$deliveredOrders<TRes> {
  factory CopyWith$Query$GetDeliveredOrders$deliveredOrders(
    Query$GetDeliveredOrders$deliveredOrders instance,
    TRes Function(Query$GetDeliveredOrders$deliveredOrders) then,
  ) = _CopyWithImpl$Query$GetDeliveredOrders$deliveredOrders;

  factory CopyWith$Query$GetDeliveredOrders$deliveredOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDeliveredOrders$deliveredOrders;

  TRes call({
    DateTime? datetime,
    List<Query$GetDeliveredOrders$deliveredOrders$orders>? orders,
    double? totalCourierPaymentCost,
    double? totalCashAmount,
    String? $__typename,
  });
  TRes orders(
      Iterable<Query$GetDeliveredOrders$deliveredOrders$orders> Function(
              Iterable<
                  CopyWith$Query$GetDeliveredOrders$deliveredOrders$orders<
                      Query$GetDeliveredOrders$deliveredOrders$orders>>)
          fn);
}

class _CopyWithImpl$Query$GetDeliveredOrders$deliveredOrders<TRes>
    implements CopyWith$Query$GetDeliveredOrders$deliveredOrders<TRes> {
  _CopyWithImpl$Query$GetDeliveredOrders$deliveredOrders(
    this._instance,
    this._then,
  );

  final Query$GetDeliveredOrders$deliveredOrders _instance;

  final TRes Function(Query$GetDeliveredOrders$deliveredOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? datetime = _undefined,
    Object? orders = _undefined,
    Object? totalCourierPaymentCost = _undefined,
    Object? totalCashAmount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDeliveredOrders$deliveredOrders(
        datetime: datetime == _undefined
            ? _instance.datetime
            : (datetime as DateTime?),
        orders: orders == _undefined || orders == null
            ? _instance.orders
            : (orders as List<Query$GetDeliveredOrders$deliveredOrders$orders>),
        totalCourierPaymentCost: totalCourierPaymentCost == _undefined ||
                totalCourierPaymentCost == null
            ? _instance.totalCourierPaymentCost
            : (totalCourierPaymentCost as double),
        totalCashAmount:
            totalCashAmount == _undefined || totalCashAmount == null
                ? _instance.totalCashAmount
                : (totalCashAmount as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  @override
  TRes orders(
          Iterable<Query$GetDeliveredOrders$deliveredOrders$orders> Function(
                  Iterable<
                      CopyWith$Query$GetDeliveredOrders$deliveredOrders$orders<
                          Query$GetDeliveredOrders$deliveredOrders$orders>>)
              fn) =>
      call(
          orders: fn(_instance.orders.map(
              (e) => CopyWith$Query$GetDeliveredOrders$deliveredOrders$orders(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetDeliveredOrders$deliveredOrders<TRes>
    implements CopyWith$Query$GetDeliveredOrders$deliveredOrders<TRes> {
  _CopyWithStubImpl$Query$GetDeliveredOrders$deliveredOrders(this._res);

  final TRes _res;

  @override
  call({
    DateTime? datetime,
    List<Query$GetDeliveredOrders$deliveredOrders$orders>? orders,
    double? totalCourierPaymentCost,
    double? totalCashAmount,
    String? $__typename,
  }) =>
      _res;
  @override
  orders(fn) => _res;
}

class Query$GetDeliveredOrders$deliveredOrders$orders {
  Query$GetDeliveredOrders$deliveredOrders$orders({
    required this.id,
    required this.fromAddress,
    required this.courierPaymentCost,
    required this.orderAmount,
    this.orderDeliveredAt,
    this.$__typename = 'OrderHistoryEntity',
  });

  factory Query$GetDeliveredOrders$deliveredOrders$orders.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$fromAddress = json['fromAddress'];
    final l$courierPaymentCost = json['courierPaymentCost'];
    final l$orderAmount = json['orderAmount'];
    final l$orderDeliveredAt = json['orderDeliveredAt'];
    final l$$__typename = json['__typename'];
    return Query$GetDeliveredOrders$deliveredOrders$orders(
      id: (l$id as int),
      fromAddress: (l$fromAddress as String),
      courierPaymentCost: (l$courierPaymentCost as num).toDouble(),
      orderAmount: (l$orderAmount as num).toDouble(),
      orderDeliveredAt: l$orderDeliveredAt == null
          ? null
          : DateTime.parse((l$orderDeliveredAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String fromAddress;

  final double courierPaymentCost;

  final double orderAmount;

  final DateTime? orderDeliveredAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$fromAddress = fromAddress;
    resultData['fromAddress'] = l$fromAddress;
    final l$courierPaymentCost = courierPaymentCost;
    resultData['courierPaymentCost'] = l$courierPaymentCost;
    final l$orderAmount = orderAmount;
    resultData['orderAmount'] = l$orderAmount;
    final l$orderDeliveredAt = orderDeliveredAt;
    resultData['orderDeliveredAt'] = l$orderDeliveredAt?.toIso8601String();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$fromAddress = fromAddress;
    final l$courierPaymentCost = courierPaymentCost;
    final l$orderAmount = orderAmount;
    final l$orderDeliveredAt = orderDeliveredAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$fromAddress,
      l$courierPaymentCost,
      l$orderAmount,
      l$orderDeliveredAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetDeliveredOrders$deliveredOrders$orders ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$fromAddress = fromAddress;
    final lOther$fromAddress = other.fromAddress;
    if (l$fromAddress != lOther$fromAddress) {
      return false;
    }
    final l$courierPaymentCost = courierPaymentCost;
    final lOther$courierPaymentCost = other.courierPaymentCost;
    if (l$courierPaymentCost != lOther$courierPaymentCost) {
      return false;
    }
    final l$orderAmount = orderAmount;
    final lOther$orderAmount = other.orderAmount;
    if (l$orderAmount != lOther$orderAmount) {
      return false;
    }
    final l$orderDeliveredAt = orderDeliveredAt;
    final lOther$orderDeliveredAt = other.orderDeliveredAt;
    if (l$orderDeliveredAt != lOther$orderDeliveredAt) {
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

extension UtilityExtension$Query$GetDeliveredOrders$deliveredOrders$orders
    on Query$GetDeliveredOrders$deliveredOrders$orders {
  CopyWith$Query$GetDeliveredOrders$deliveredOrders$orders<
          Query$GetDeliveredOrders$deliveredOrders$orders>
      get copyWith => CopyWith$Query$GetDeliveredOrders$deliveredOrders$orders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetDeliveredOrders$deliveredOrders$orders<TRes> {
  factory CopyWith$Query$GetDeliveredOrders$deliveredOrders$orders(
    Query$GetDeliveredOrders$deliveredOrders$orders instance,
    TRes Function(Query$GetDeliveredOrders$deliveredOrders$orders) then,
  ) = _CopyWithImpl$Query$GetDeliveredOrders$deliveredOrders$orders;

  factory CopyWith$Query$GetDeliveredOrders$deliveredOrders$orders.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetDeliveredOrders$deliveredOrders$orders;

  TRes call({
    int? id,
    String? fromAddress,
    double? courierPaymentCost,
    double? orderAmount,
    DateTime? orderDeliveredAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetDeliveredOrders$deliveredOrders$orders<TRes>
    implements CopyWith$Query$GetDeliveredOrders$deliveredOrders$orders<TRes> {
  _CopyWithImpl$Query$GetDeliveredOrders$deliveredOrders$orders(
    this._instance,
    this._then,
  );

  final Query$GetDeliveredOrders$deliveredOrders$orders _instance;

  final TRes Function(Query$GetDeliveredOrders$deliveredOrders$orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? fromAddress = _undefined,
    Object? courierPaymentCost = _undefined,
    Object? orderAmount = _undefined,
    Object? orderDeliveredAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetDeliveredOrders$deliveredOrders$orders(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        fromAddress: fromAddress == _undefined || fromAddress == null
            ? _instance.fromAddress
            : (fromAddress as String),
        courierPaymentCost:
            courierPaymentCost == _undefined || courierPaymentCost == null
                ? _instance.courierPaymentCost
                : (courierPaymentCost as double),
        orderAmount: orderAmount == _undefined || orderAmount == null
            ? _instance.orderAmount
            : (orderAmount as double),
        orderDeliveredAt: orderDeliveredAt == _undefined
            ? _instance.orderDeliveredAt
            : (orderDeliveredAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetDeliveredOrders$deliveredOrders$orders<TRes>
    implements CopyWith$Query$GetDeliveredOrders$deliveredOrders$orders<TRes> {
  _CopyWithStubImpl$Query$GetDeliveredOrders$deliveredOrders$orders(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    String? fromAddress,
    double? courierPaymentCost,
    double? orderAmount,
    DateTime? orderDeliveredAt,
    String? $__typename,
  }) =>
      _res;
}
