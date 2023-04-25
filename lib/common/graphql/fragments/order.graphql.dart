import '../schema.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$Order {
  Fragment$Order({
    required this.id,
    required this.status,
    this.paymentType,
    required this.orderAmount,
    required this.deliveryCostForCustomer,
    required this.isPaymentCompleted,
    required this.isPrepaidToPartner,
    required this.createdAt,
    required this.expectedReadyTime,
    required this.expectedDeliveryTime,
    required this.restaurantAddress,
    this.restaurantName,
    this.restaurantPhoneNumber,
    required this.customerAddress,
    this.customerName,
    required this.customerPhoneNumber,
    this.orderDescription,
    this.customerComment,
  });

  factory Fragment$Order.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$paymentType = json['paymentType'];
    final l$orderAmount = json['orderAmount'];
    final l$deliveryCostForCustomer = json['deliveryCostForCustomer'];
    final l$isPaymentCompleted = json['isPaymentCompleted'];
    final l$isPrepaidToPartner = json['isPrepaidToPartner'];
    final l$createdAt = json['createdAt'];
    final l$expectedReadyTime = json['expectedReadyTime'];
    final l$expectedDeliveryTime = json['expectedDeliveryTime'];
    final l$restaurantAddress = json['restaurantAddress'];
    final l$restaurantName = json['restaurantName'];
    final l$restaurantPhoneNumber = json['restaurantPhoneNumber'];
    final l$customerAddress = json['customerAddress'];
    final l$customerName = json['customerName'];
    final l$customerPhoneNumber = json['customerPhoneNumber'];
    final l$orderDescription = json['orderDescription'];
    final l$customerComment = json['customerComment'];
    return Fragment$Order(
      id: (l$id as int),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      paymentType: l$paymentType == null
          ? null
          : fromJson$Enum$OrderPaymentType((l$paymentType as String)),
      orderAmount: (l$orderAmount as num).toDouble(),
      deliveryCostForCustomer: (l$deliveryCostForCustomer as num).toDouble(),
      isPaymentCompleted: (l$isPaymentCompleted as bool),
      isPrepaidToPartner: (l$isPrepaidToPartner as bool),
      createdAt: DateTime.parse((l$createdAt as String)),
      expectedReadyTime: DateTime.parse((l$expectedReadyTime as String)),
      expectedDeliveryTime: DateTime.parse((l$expectedDeliveryTime as String)),
      restaurantAddress: (l$restaurantAddress as String),
      restaurantName: (l$restaurantName as String?),
      restaurantPhoneNumber: (l$restaurantPhoneNumber as String?),
      customerAddress: (l$customerAddress as String),
      customerName: (l$customerName as String?),
      customerPhoneNumber: (l$customerPhoneNumber as String),
      orderDescription: (l$orderDescription as String?),
      customerComment: (l$customerComment as String?),
    );
  }

  final int id;

  final Enum$OrderStatus status;

  final Enum$OrderPaymentType? paymentType;

  final double orderAmount;

  final double deliveryCostForCustomer;

  final bool isPaymentCompleted;

  final bool isPrepaidToPartner;

  final DateTime createdAt;

  final DateTime expectedReadyTime;

  final DateTime expectedDeliveryTime;

  final String restaurantAddress;

  final String? restaurantName;

  final String? restaurantPhoneNumber;

  final String customerAddress;

  final String? customerName;

  final String customerPhoneNumber;

  final String? orderDescription;

  final String? customerComment;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$paymentType = paymentType;
    _resultData['paymentType'] = l$paymentType == null
        ? null
        : toJson$Enum$OrderPaymentType(l$paymentType);
    final l$orderAmount = orderAmount;
    _resultData['orderAmount'] = l$orderAmount;
    final l$deliveryCostForCustomer = deliveryCostForCustomer;
    _resultData['deliveryCostForCustomer'] = l$deliveryCostForCustomer;
    final l$isPaymentCompleted = isPaymentCompleted;
    _resultData['isPaymentCompleted'] = l$isPaymentCompleted;
    final l$isPrepaidToPartner = isPrepaidToPartner;
    _resultData['isPrepaidToPartner'] = l$isPrepaidToPartner;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$expectedReadyTime = expectedReadyTime;
    _resultData['expectedReadyTime'] = l$expectedReadyTime.toIso8601String();
    final l$expectedDeliveryTime = expectedDeliveryTime;
    _resultData['expectedDeliveryTime'] =
        l$expectedDeliveryTime.toIso8601String();
    final l$restaurantAddress = restaurantAddress;
    _resultData['restaurantAddress'] = l$restaurantAddress;
    final l$restaurantName = restaurantName;
    _resultData['restaurantName'] = l$restaurantName;
    final l$restaurantPhoneNumber = restaurantPhoneNumber;
    _resultData['restaurantPhoneNumber'] = l$restaurantPhoneNumber;
    final l$customerAddress = customerAddress;
    _resultData['customerAddress'] = l$customerAddress;
    final l$customerName = customerName;
    _resultData['customerName'] = l$customerName;
    final l$customerPhoneNumber = customerPhoneNumber;
    _resultData['customerPhoneNumber'] = l$customerPhoneNumber;
    final l$orderDescription = orderDescription;
    _resultData['orderDescription'] = l$orderDescription;
    final l$customerComment = customerComment;
    _resultData['customerComment'] = l$customerComment;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$paymentType = paymentType;
    final l$orderAmount = orderAmount;
    final l$deliveryCostForCustomer = deliveryCostForCustomer;
    final l$isPaymentCompleted = isPaymentCompleted;
    final l$isPrepaidToPartner = isPrepaidToPartner;
    final l$createdAt = createdAt;
    final l$expectedReadyTime = expectedReadyTime;
    final l$expectedDeliveryTime = expectedDeliveryTime;
    final l$restaurantAddress = restaurantAddress;
    final l$restaurantName = restaurantName;
    final l$restaurantPhoneNumber = restaurantPhoneNumber;
    final l$customerAddress = customerAddress;
    final l$customerName = customerName;
    final l$customerPhoneNumber = customerPhoneNumber;
    final l$orderDescription = orderDescription;
    final l$customerComment = customerComment;
    return Object.hashAll([
      l$id,
      l$status,
      l$paymentType,
      l$orderAmount,
      l$deliveryCostForCustomer,
      l$isPaymentCompleted,
      l$isPrepaidToPartner,
      l$createdAt,
      l$expectedReadyTime,
      l$expectedDeliveryTime,
      l$restaurantAddress,
      l$restaurantName,
      l$restaurantPhoneNumber,
      l$customerAddress,
      l$customerName,
      l$customerPhoneNumber,
      l$orderDescription,
      l$customerComment,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Order) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$paymentType = paymentType;
    final lOther$paymentType = other.paymentType;
    if (l$paymentType != lOther$paymentType) {
      return false;
    }
    final l$orderAmount = orderAmount;
    final lOther$orderAmount = other.orderAmount;
    if (l$orderAmount != lOther$orderAmount) {
      return false;
    }
    final l$deliveryCostForCustomer = deliveryCostForCustomer;
    final lOther$deliveryCostForCustomer = other.deliveryCostForCustomer;
    if (l$deliveryCostForCustomer != lOther$deliveryCostForCustomer) {
      return false;
    }
    final l$isPaymentCompleted = isPaymentCompleted;
    final lOther$isPaymentCompleted = other.isPaymentCompleted;
    if (l$isPaymentCompleted != lOther$isPaymentCompleted) {
      return false;
    }
    final l$isPrepaidToPartner = isPrepaidToPartner;
    final lOther$isPrepaidToPartner = other.isPrepaidToPartner;
    if (l$isPrepaidToPartner != lOther$isPrepaidToPartner) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$expectedReadyTime = expectedReadyTime;
    final lOther$expectedReadyTime = other.expectedReadyTime;
    if (l$expectedReadyTime != lOther$expectedReadyTime) {
      return false;
    }
    final l$expectedDeliveryTime = expectedDeliveryTime;
    final lOther$expectedDeliveryTime = other.expectedDeliveryTime;
    if (l$expectedDeliveryTime != lOther$expectedDeliveryTime) {
      return false;
    }
    final l$restaurantAddress = restaurantAddress;
    final lOther$restaurantAddress = other.restaurantAddress;
    if (l$restaurantAddress != lOther$restaurantAddress) {
      return false;
    }
    final l$restaurantName = restaurantName;
    final lOther$restaurantName = other.restaurantName;
    if (l$restaurantName != lOther$restaurantName) {
      return false;
    }
    final l$restaurantPhoneNumber = restaurantPhoneNumber;
    final lOther$restaurantPhoneNumber = other.restaurantPhoneNumber;
    if (l$restaurantPhoneNumber != lOther$restaurantPhoneNumber) {
      return false;
    }
    final l$customerAddress = customerAddress;
    final lOther$customerAddress = other.customerAddress;
    if (l$customerAddress != lOther$customerAddress) {
      return false;
    }
    final l$customerName = customerName;
    final lOther$customerName = other.customerName;
    if (l$customerName != lOther$customerName) {
      return false;
    }
    final l$customerPhoneNumber = customerPhoneNumber;
    final lOther$customerPhoneNumber = other.customerPhoneNumber;
    if (l$customerPhoneNumber != lOther$customerPhoneNumber) {
      return false;
    }
    final l$orderDescription = orderDescription;
    final lOther$orderDescription = other.orderDescription;
    if (l$orderDescription != lOther$orderDescription) {
      return false;
    }
    final l$customerComment = customerComment;
    final lOther$customerComment = other.customerComment;
    if (l$customerComment != lOther$customerComment) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Order on Fragment$Order {
  CopyWith$Fragment$Order<Fragment$Order> get copyWith =>
      CopyWith$Fragment$Order(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Order<TRes> {
  factory CopyWith$Fragment$Order(
    Fragment$Order instance,
    TRes Function(Fragment$Order) then,
  ) = _CopyWithImpl$Fragment$Order;

  factory CopyWith$Fragment$Order.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Order;

  TRes call({
    int? id,
    Enum$OrderStatus? status,
    Enum$OrderPaymentType? paymentType,
    double? orderAmount,
    double? deliveryCostForCustomer,
    bool? isPaymentCompleted,
    bool? isPrepaidToPartner,
    DateTime? createdAt,
    DateTime? expectedReadyTime,
    DateTime? expectedDeliveryTime,
    String? restaurantAddress,
    String? restaurantName,
    String? restaurantPhoneNumber,
    String? customerAddress,
    String? customerName,
    String? customerPhoneNumber,
    String? orderDescription,
    String? customerComment,
  });
}

class _CopyWithImpl$Fragment$Order<TRes>
    implements CopyWith$Fragment$Order<TRes> {
  _CopyWithImpl$Fragment$Order(
    this._instance,
    this._then,
  );

  final Fragment$Order _instance;

  final TRes Function(Fragment$Order) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? paymentType = _undefined,
    Object? orderAmount = _undefined,
    Object? deliveryCostForCustomer = _undefined,
    Object? isPaymentCompleted = _undefined,
    Object? isPrepaidToPartner = _undefined,
    Object? createdAt = _undefined,
    Object? expectedReadyTime = _undefined,
    Object? expectedDeliveryTime = _undefined,
    Object? restaurantAddress = _undefined,
    Object? restaurantName = _undefined,
    Object? restaurantPhoneNumber = _undefined,
    Object? customerAddress = _undefined,
    Object? customerName = _undefined,
    Object? customerPhoneNumber = _undefined,
    Object? orderDescription = _undefined,
    Object? customerComment = _undefined,
  }) =>
      _then(Fragment$Order(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        paymentType: paymentType == _undefined
            ? _instance.paymentType
            : (paymentType as Enum$OrderPaymentType?),
        orderAmount: orderAmount == _undefined || orderAmount == null
            ? _instance.orderAmount
            : (orderAmount as double),
        deliveryCostForCustomer: deliveryCostForCustomer == _undefined ||
                deliveryCostForCustomer == null
            ? _instance.deliveryCostForCustomer
            : (deliveryCostForCustomer as double),
        isPaymentCompleted:
            isPaymentCompleted == _undefined || isPaymentCompleted == null
                ? _instance.isPaymentCompleted
                : (isPaymentCompleted as bool),
        isPrepaidToPartner:
            isPrepaidToPartner == _undefined || isPrepaidToPartner == null
                ? _instance.isPrepaidToPartner
                : (isPrepaidToPartner as bool),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        expectedReadyTime:
            expectedReadyTime == _undefined || expectedReadyTime == null
                ? _instance.expectedReadyTime
                : (expectedReadyTime as DateTime),
        expectedDeliveryTime:
            expectedDeliveryTime == _undefined || expectedDeliveryTime == null
                ? _instance.expectedDeliveryTime
                : (expectedDeliveryTime as DateTime),
        restaurantAddress:
            restaurantAddress == _undefined || restaurantAddress == null
                ? _instance.restaurantAddress
                : (restaurantAddress as String),
        restaurantName: restaurantName == _undefined
            ? _instance.restaurantName
            : (restaurantName as String?),
        restaurantPhoneNumber: restaurantPhoneNumber == _undefined
            ? _instance.restaurantPhoneNumber
            : (restaurantPhoneNumber as String?),
        customerAddress:
            customerAddress == _undefined || customerAddress == null
                ? _instance.customerAddress
                : (customerAddress as String),
        customerName: customerName == _undefined
            ? _instance.customerName
            : (customerName as String?),
        customerPhoneNumber:
            customerPhoneNumber == _undefined || customerPhoneNumber == null
                ? _instance.customerPhoneNumber
                : (customerPhoneNumber as String),
        orderDescription: orderDescription == _undefined
            ? _instance.orderDescription
            : (orderDescription as String?),
        customerComment: customerComment == _undefined
            ? _instance.customerComment
            : (customerComment as String?),
      ));
}

class _CopyWithStubImpl$Fragment$Order<TRes>
    implements CopyWith$Fragment$Order<TRes> {
  _CopyWithStubImpl$Fragment$Order(this._res);

  TRes _res;

  call({
    int? id,
    Enum$OrderStatus? status,
    Enum$OrderPaymentType? paymentType,
    double? orderAmount,
    double? deliveryCostForCustomer,
    bool? isPaymentCompleted,
    bool? isPrepaidToPartner,
    DateTime? createdAt,
    DateTime? expectedReadyTime,
    DateTime? expectedDeliveryTime,
    String? restaurantAddress,
    String? restaurantName,
    String? restaurantPhoneNumber,
    String? customerAddress,
    String? customerName,
    String? customerPhoneNumber,
    String? orderDescription,
    String? customerComment,
  }) =>
      _res;
}

const fragmentDefinitionOrder = FragmentDefinitionNode(
  name: NameNode(value: 'Order'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Order'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'paymentType'),
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
      name: NameNode(value: 'deliveryCostForCustomer'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isPaymentCompleted'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isPrepaidToPartner'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createdAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'shouldBeReadyAt'),
      alias: NameNode(value: 'expectedReadyTime'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'shouldBeDeliveredAt'),
      alias: NameNode(value: 'expectedDeliveryTime'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'fromAddress'),
      alias: NameNode(value: 'restaurantAddress'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'fromAddressTitle'),
      alias: NameNode(value: 'restaurantName'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'fromAddressPhone'),
      alias: NameNode(value: 'restaurantPhoneNumber'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'toAddress'),
      alias: NameNode(value: 'customerAddress'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'toAddressTitle'),
      alias: NameNode(value: 'customerName'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'toAddressPhone'),
      alias: NameNode(value: 'customerPhoneNumber'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'orderDescription'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'customerComment'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentOrder = DocumentNode(definitions: [
  fragmentDefinitionOrder,
]);

extension ClientExtension$Fragment$Order on graphql.GraphQLClient {
  void writeFragment$Order({
    required Fragment$Order data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Order',
            document: documentNodeFragmentOrder,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Order? readFragment$Order({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Order',
          document: documentNodeFragmentOrder,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Order.fromJson(result);
  }
}
