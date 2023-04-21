import '../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$ChangeOrderStatus {
  factory Variables$Mutation$ChangeOrderStatus({
    required double id,
    required Enum$OrderStatus status,
  }) =>
      Variables$Mutation$ChangeOrderStatus._({
        r'id': id,
        r'status': status,
      });

  Variables$Mutation$ChangeOrderStatus._(this._$data);

  factory Variables$Mutation$ChangeOrderStatus.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as num).toDouble();
    final l$status = data['status'];
    result$data['status'] = fromJson$Enum$OrderStatus((l$status as String));
    return Variables$Mutation$ChangeOrderStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  double get id => (_$data['id'] as double);
  Enum$OrderStatus get status => (_$data['status'] as Enum$OrderStatus);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$status = status;
    result$data['status'] = toJson$Enum$OrderStatus(l$status);
    return result$data;
  }

  CopyWith$Variables$Mutation$ChangeOrderStatus<
          Variables$Mutation$ChangeOrderStatus>
      get copyWith => CopyWith$Variables$Mutation$ChangeOrderStatus(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ChangeOrderStatus) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    return Object.hashAll([
      l$id,
      l$status,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ChangeOrderStatus<TRes> {
  factory CopyWith$Variables$Mutation$ChangeOrderStatus(
    Variables$Mutation$ChangeOrderStatus instance,
    TRes Function(Variables$Mutation$ChangeOrderStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$ChangeOrderStatus;

  factory CopyWith$Variables$Mutation$ChangeOrderStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ChangeOrderStatus;

  TRes call({
    double? id,
    Enum$OrderStatus? status,
  });
}

class _CopyWithImpl$Variables$Mutation$ChangeOrderStatus<TRes>
    implements CopyWith$Variables$Mutation$ChangeOrderStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$ChangeOrderStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ChangeOrderStatus _instance;

  final TRes Function(Variables$Mutation$ChangeOrderStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
  }) =>
      _then(Variables$Mutation$ChangeOrderStatus._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as double),
        if (status != _undefined && status != null)
          'status': (status as Enum$OrderStatus),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ChangeOrderStatus<TRes>
    implements CopyWith$Variables$Mutation$ChangeOrderStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ChangeOrderStatus(this._res);

  TRes _res;

  call({
    double? id,
    Enum$OrderStatus? status,
  }) =>
      _res;
}

class Mutation$ChangeOrderStatus {
  Mutation$ChangeOrderStatus({required this.changeOrderStatus});

  factory Mutation$ChangeOrderStatus.fromJson(Map<String, dynamic> json) {
    final l$changeOrderStatus = json['changeOrderStatus'];
    return Mutation$ChangeOrderStatus(
        changeOrderStatus:
            Mutation$ChangeOrderStatus$changeOrderStatus.fromJson(
                (l$changeOrderStatus as Map<String, dynamic>)));
  }

  final Mutation$ChangeOrderStatus$changeOrderStatus changeOrderStatus;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$changeOrderStatus = changeOrderStatus;
    _resultData['changeOrderStatus'] = l$changeOrderStatus.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$changeOrderStatus = changeOrderStatus;
    return Object.hashAll([l$changeOrderStatus]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ChangeOrderStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$changeOrderStatus = changeOrderStatus;
    final lOther$changeOrderStatus = other.changeOrderStatus;
    if (l$changeOrderStatus != lOther$changeOrderStatus) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ChangeOrderStatus
    on Mutation$ChangeOrderStatus {
  CopyWith$Mutation$ChangeOrderStatus<Mutation$ChangeOrderStatus>
      get copyWith => CopyWith$Mutation$ChangeOrderStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ChangeOrderStatus<TRes> {
  factory CopyWith$Mutation$ChangeOrderStatus(
    Mutation$ChangeOrderStatus instance,
    TRes Function(Mutation$ChangeOrderStatus) then,
  ) = _CopyWithImpl$Mutation$ChangeOrderStatus;

  factory CopyWith$Mutation$ChangeOrderStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ChangeOrderStatus;

  TRes call({Mutation$ChangeOrderStatus$changeOrderStatus? changeOrderStatus});
  CopyWith$Mutation$ChangeOrderStatus$changeOrderStatus<TRes>
      get changeOrderStatus;
}

class _CopyWithImpl$Mutation$ChangeOrderStatus<TRes>
    implements CopyWith$Mutation$ChangeOrderStatus<TRes> {
  _CopyWithImpl$Mutation$ChangeOrderStatus(
    this._instance,
    this._then,
  );

  final Mutation$ChangeOrderStatus _instance;

  final TRes Function(Mutation$ChangeOrderStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? changeOrderStatus = _undefined}) =>
      _then(Mutation$ChangeOrderStatus(
          changeOrderStatus:
              changeOrderStatus == _undefined || changeOrderStatus == null
                  ? _instance.changeOrderStatus
                  : (changeOrderStatus
                      as Mutation$ChangeOrderStatus$changeOrderStatus)));
  CopyWith$Mutation$ChangeOrderStatus$changeOrderStatus<TRes>
      get changeOrderStatus {
    final local$changeOrderStatus = _instance.changeOrderStatus;
    return CopyWith$Mutation$ChangeOrderStatus$changeOrderStatus(
        local$changeOrderStatus, (e) => call(changeOrderStatus: e));
  }
}

class _CopyWithStubImpl$Mutation$ChangeOrderStatus<TRes>
    implements CopyWith$Mutation$ChangeOrderStatus<TRes> {
  _CopyWithStubImpl$Mutation$ChangeOrderStatus(this._res);

  TRes _res;

  call({Mutation$ChangeOrderStatus$changeOrderStatus? changeOrderStatus}) =>
      _res;
  CopyWith$Mutation$ChangeOrderStatus$changeOrderStatus<TRes>
      get changeOrderStatus =>
          CopyWith$Mutation$ChangeOrderStatus$changeOrderStatus.stub(_res);
}

const documentNodeMutationChangeOrderStatus = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ChangeOrderStatus'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'OrderStatus'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'changeOrderStatus'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'status'),
            value: VariableNode(name: NameNode(value: 'status')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'status'),
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
Mutation$ChangeOrderStatus _parserFn$Mutation$ChangeOrderStatus(
        Map<String, dynamic> data) =>
    Mutation$ChangeOrderStatus.fromJson(data);
typedef OnMutationCompleted$Mutation$ChangeOrderStatus = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$ChangeOrderStatus?,
);

class Options$Mutation$ChangeOrderStatus
    extends graphql.MutationOptions<Mutation$ChangeOrderStatus> {
  Options$Mutation$ChangeOrderStatus({
    String? operationName,
    required Variables$Mutation$ChangeOrderStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ChangeOrderStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ChangeOrderStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$ChangeOrderStatus>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$ChangeOrderStatus(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationChangeOrderStatus,
          parserFn: _parserFn$Mutation$ChangeOrderStatus,
        );

  final OnMutationCompleted$Mutation$ChangeOrderStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ChangeOrderStatus
    extends graphql.WatchQueryOptions<Mutation$ChangeOrderStatus> {
  WatchOptions$Mutation$ChangeOrderStatus({
    String? operationName,
    required Variables$Mutation$ChangeOrderStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ChangeOrderStatus? typedOptimisticResult,
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
          document: documentNodeMutationChangeOrderStatus,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ChangeOrderStatus,
        );
}

extension ClientExtension$Mutation$ChangeOrderStatus on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ChangeOrderStatus>>
      mutate$ChangeOrderStatus(
              Options$Mutation$ChangeOrderStatus options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$ChangeOrderStatus>
      watchMutation$ChangeOrderStatus(
              WatchOptions$Mutation$ChangeOrderStatus options) =>
          this.watchMutation(options);
}

class Mutation$ChangeOrderStatus$changeOrderStatus {
  Mutation$ChangeOrderStatus$changeOrderStatus({
    required this.status,
    this.$__typename = 'Order',
  });

  factory Mutation$ChangeOrderStatus$changeOrderStatus.fromJson(
      Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Mutation$ChangeOrderStatus$changeOrderStatus(
      status: fromJson$Enum$OrderStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$OrderStatus status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ChangeOrderStatus$changeOrderStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Mutation$ChangeOrderStatus$changeOrderStatus
    on Mutation$ChangeOrderStatus$changeOrderStatus {
  CopyWith$Mutation$ChangeOrderStatus$changeOrderStatus<
          Mutation$ChangeOrderStatus$changeOrderStatus>
      get copyWith => CopyWith$Mutation$ChangeOrderStatus$changeOrderStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ChangeOrderStatus$changeOrderStatus<TRes> {
  factory CopyWith$Mutation$ChangeOrderStatus$changeOrderStatus(
    Mutation$ChangeOrderStatus$changeOrderStatus instance,
    TRes Function(Mutation$ChangeOrderStatus$changeOrderStatus) then,
  ) = _CopyWithImpl$Mutation$ChangeOrderStatus$changeOrderStatus;

  factory CopyWith$Mutation$ChangeOrderStatus$changeOrderStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ChangeOrderStatus$changeOrderStatus;

  TRes call({
    Enum$OrderStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ChangeOrderStatus$changeOrderStatus<TRes>
    implements CopyWith$Mutation$ChangeOrderStatus$changeOrderStatus<TRes> {
  _CopyWithImpl$Mutation$ChangeOrderStatus$changeOrderStatus(
    this._instance,
    this._then,
  );

  final Mutation$ChangeOrderStatus$changeOrderStatus _instance;

  final TRes Function(Mutation$ChangeOrderStatus$changeOrderStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ChangeOrderStatus$changeOrderStatus(
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ChangeOrderStatus$changeOrderStatus<TRes>
    implements CopyWith$Mutation$ChangeOrderStatus$changeOrderStatus<TRes> {
  _CopyWithStubImpl$Mutation$ChangeOrderStatus$changeOrderStatus(this._res);

  TRes _res;

  call({
    Enum$OrderStatus? status,
    String? $__typename,
  }) =>
      _res;
}
