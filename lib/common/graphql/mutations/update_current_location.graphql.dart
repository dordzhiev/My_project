import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$UpdateCurrentLocation {
  factory Variables$Mutation$UpdateCurrentLocation({
    required double latitude,
    required double longitude,
  }) =>
      Variables$Mutation$UpdateCurrentLocation._({
        r'latitude': latitude,
        r'longitude': longitude,
      });

  Variables$Mutation$UpdateCurrentLocation._(this._$data);

  factory Variables$Mutation$UpdateCurrentLocation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$latitude = data['latitude'];
    result$data['latitude'] = (l$latitude as num).toDouble();
    final l$longitude = data['longitude'];
    result$data['longitude'] = (l$longitude as num).toDouble();
    return Variables$Mutation$UpdateCurrentLocation._(result$data);
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

  CopyWith$Variables$Mutation$UpdateCurrentLocation<
          Variables$Mutation$UpdateCurrentLocation>
      get copyWith => CopyWith$Variables$Mutation$UpdateCurrentLocation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateCurrentLocation) ||
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

abstract class CopyWith$Variables$Mutation$UpdateCurrentLocation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateCurrentLocation(
    Variables$Mutation$UpdateCurrentLocation instance,
    TRes Function(Variables$Mutation$UpdateCurrentLocation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateCurrentLocation;

  factory CopyWith$Variables$Mutation$UpdateCurrentLocation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateCurrentLocation;

  TRes call({
    double? latitude,
    double? longitude,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateCurrentLocation<TRes>
    implements CopyWith$Variables$Mutation$UpdateCurrentLocation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateCurrentLocation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateCurrentLocation _instance;

  final TRes Function(Variables$Mutation$UpdateCurrentLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateCurrentLocation._({
        ..._instance._$data,
        if (latitude != _undefined && latitude != null)
          'latitude': (latitude as double),
        if (longitude != _undefined && longitude != null)
          'longitude': (longitude as double),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateCurrentLocation<TRes>
    implements CopyWith$Variables$Mutation$UpdateCurrentLocation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateCurrentLocation(this._res);

  TRes _res;

  call({
    double? latitude,
    double? longitude,
  }) =>
      _res;
}

class Mutation$UpdateCurrentLocation {
  Mutation$UpdateCurrentLocation({required this.updateCurrentLocation});

  factory Mutation$UpdateCurrentLocation.fromJson(Map<String, dynamic> json) {
    final l$updateCurrentLocation = json['updateCurrentLocation'];
    return Mutation$UpdateCurrentLocation(
        updateCurrentLocation: (l$updateCurrentLocation as List<dynamic>)
            .map((e) =>
                Mutation$UpdateCurrentLocation$updateCurrentLocation.fromJson(
                    (e as Map<String, dynamic>)))
            .toList());
  }

  final List<Mutation$UpdateCurrentLocation$updateCurrentLocation>
      updateCurrentLocation;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateCurrentLocation = updateCurrentLocation;
    _resultData['updateCurrentLocation'] =
        l$updateCurrentLocation.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateCurrentLocation = updateCurrentLocation;
    return Object.hashAll(
        [Object.hashAll(l$updateCurrentLocation.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateCurrentLocation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateCurrentLocation = updateCurrentLocation;
    final lOther$updateCurrentLocation = other.updateCurrentLocation;
    if (l$updateCurrentLocation.length != lOther$updateCurrentLocation.length) {
      return false;
    }
    for (int i = 0; i < l$updateCurrentLocation.length; i++) {
      final l$updateCurrentLocation$entry = l$updateCurrentLocation[i];
      final lOther$updateCurrentLocation$entry =
          lOther$updateCurrentLocation[i];
      if (l$updateCurrentLocation$entry != lOther$updateCurrentLocation$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateCurrentLocation
    on Mutation$UpdateCurrentLocation {
  CopyWith$Mutation$UpdateCurrentLocation<Mutation$UpdateCurrentLocation>
      get copyWith => CopyWith$Mutation$UpdateCurrentLocation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateCurrentLocation<TRes> {
  factory CopyWith$Mutation$UpdateCurrentLocation(
    Mutation$UpdateCurrentLocation instance,
    TRes Function(Mutation$UpdateCurrentLocation) then,
  ) = _CopyWithImpl$Mutation$UpdateCurrentLocation;

  factory CopyWith$Mutation$UpdateCurrentLocation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCurrentLocation;

  TRes call(
      {List<Mutation$UpdateCurrentLocation$updateCurrentLocation>?
          updateCurrentLocation});
  TRes updateCurrentLocation(
      Iterable<Mutation$UpdateCurrentLocation$updateCurrentLocation> Function(
              Iterable<
                  CopyWith$Mutation$UpdateCurrentLocation$updateCurrentLocation<
                      Mutation$UpdateCurrentLocation$updateCurrentLocation>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateCurrentLocation<TRes>
    implements CopyWith$Mutation$UpdateCurrentLocation<TRes> {
  _CopyWithImpl$Mutation$UpdateCurrentLocation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCurrentLocation _instance;

  final TRes Function(Mutation$UpdateCurrentLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateCurrentLocation = _undefined}) =>
      _then(Mutation$UpdateCurrentLocation(
          updateCurrentLocation: updateCurrentLocation == _undefined ||
                  updateCurrentLocation == null
              ? _instance.updateCurrentLocation
              : (updateCurrentLocation as List<
                  Mutation$UpdateCurrentLocation$updateCurrentLocation>)));
  TRes updateCurrentLocation(
          Iterable<Mutation$UpdateCurrentLocation$updateCurrentLocation> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateCurrentLocation$updateCurrentLocation<
                          Mutation$UpdateCurrentLocation$updateCurrentLocation>>)
              _fn) =>
      call(
          updateCurrentLocation: _fn(_instance.updateCurrentLocation.map((e) =>
              CopyWith$Mutation$UpdateCurrentLocation$updateCurrentLocation(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateCurrentLocation<TRes>
    implements CopyWith$Mutation$UpdateCurrentLocation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCurrentLocation(this._res);

  TRes _res;

  call(
          {List<Mutation$UpdateCurrentLocation$updateCurrentLocation>?
              updateCurrentLocation}) =>
      _res;
  updateCurrentLocation(_fn) => _res;
}

const documentNodeMutationUpdateCurrentLocation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateCurrentLocation'),
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
        name: NameNode(value: 'updateCurrentLocation'),
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
Mutation$UpdateCurrentLocation _parserFn$Mutation$UpdateCurrentLocation(
        Map<String, dynamic> data) =>
    Mutation$UpdateCurrentLocation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateCurrentLocation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateCurrentLocation?,
);

class Options$Mutation$UpdateCurrentLocation
    extends graphql.MutationOptions<Mutation$UpdateCurrentLocation> {
  Options$Mutation$UpdateCurrentLocation({
    String? operationName,
    required Variables$Mutation$UpdateCurrentLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateCurrentLocation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateCurrentLocation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateCurrentLocation>? update,
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
                        : _parserFn$Mutation$UpdateCurrentLocation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateCurrentLocation,
          parserFn: _parserFn$Mutation$UpdateCurrentLocation,
        );

  final OnMutationCompleted$Mutation$UpdateCurrentLocation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateCurrentLocation
    extends graphql.WatchQueryOptions<Mutation$UpdateCurrentLocation> {
  WatchOptions$Mutation$UpdateCurrentLocation({
    String? operationName,
    required Variables$Mutation$UpdateCurrentLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateCurrentLocation? typedOptimisticResult,
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
          document: documentNodeMutationUpdateCurrentLocation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateCurrentLocation,
        );
}

extension ClientExtension$Mutation$UpdateCurrentLocation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateCurrentLocation>>
      mutate$UpdateCurrentLocation(
              Options$Mutation$UpdateCurrentLocation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateCurrentLocation>
      watchMutation$UpdateCurrentLocation(
              WatchOptions$Mutation$UpdateCurrentLocation options) =>
          this.watchMutation(options);
}

class Mutation$UpdateCurrentLocation$updateCurrentLocation {
  Mutation$UpdateCurrentLocation$updateCurrentLocation(
      {this.$__typename = 'Location'});

  factory Mutation$UpdateCurrentLocation$updateCurrentLocation.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCurrentLocation$updateCurrentLocation(
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
    if (!(other is Mutation$UpdateCurrentLocation$updateCurrentLocation) ||
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

extension UtilityExtension$Mutation$UpdateCurrentLocation$updateCurrentLocation
    on Mutation$UpdateCurrentLocation$updateCurrentLocation {
  CopyWith$Mutation$UpdateCurrentLocation$updateCurrentLocation<
          Mutation$UpdateCurrentLocation$updateCurrentLocation>
      get copyWith =>
          CopyWith$Mutation$UpdateCurrentLocation$updateCurrentLocation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateCurrentLocation$updateCurrentLocation<
    TRes> {
  factory CopyWith$Mutation$UpdateCurrentLocation$updateCurrentLocation(
    Mutation$UpdateCurrentLocation$updateCurrentLocation instance,
    TRes Function(Mutation$UpdateCurrentLocation$updateCurrentLocation) then,
  ) = _CopyWithImpl$Mutation$UpdateCurrentLocation$updateCurrentLocation;

  factory CopyWith$Mutation$UpdateCurrentLocation$updateCurrentLocation.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCurrentLocation$updateCurrentLocation;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateCurrentLocation$updateCurrentLocation<TRes>
    implements
        CopyWith$Mutation$UpdateCurrentLocation$updateCurrentLocation<TRes> {
  _CopyWithImpl$Mutation$UpdateCurrentLocation$updateCurrentLocation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCurrentLocation$updateCurrentLocation _instance;

  final TRes Function(Mutation$UpdateCurrentLocation$updateCurrentLocation)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$UpdateCurrentLocation$updateCurrentLocation(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$UpdateCurrentLocation$updateCurrentLocation<
        TRes>
    implements
        CopyWith$Mutation$UpdateCurrentLocation$updateCurrentLocation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCurrentLocation$updateCurrentLocation(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
