import '../fragments/personal_info.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$UpdatePersonalInfo {
  factory Variables$Mutation$UpdatePersonalInfo({
    String? username,
    String? password,
    String? firstName,
    String? lastName,
    String? middlename,
    String? phone,
    String? email,
    String? role,
    bool? isActive,
    required int id,
  }) =>
      Variables$Mutation$UpdatePersonalInfo._({
        if (username != null) r'username': username,
        if (password != null) r'password': password,
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (middlename != null) r'middlename': middlename,
        if (phone != null) r'phone': phone,
        if (email != null) r'email': email,
        if (role != null) r'role': role,
        if (isActive != null) r'isActive': isActive,
        r'id': id,
      });

  Variables$Mutation$UpdatePersonalInfo._(this._$data);

  factory Variables$Mutation$UpdatePersonalInfo.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('middlename')) {
      final l$middlename = data['middlename'];
      result$data['middlename'] = (l$middlename as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('role')) {
      final l$role = data['role'];
      result$data['role'] = (l$role as String?);
    }
    if (data.containsKey('isActive')) {
      final l$isActive = data['isActive'];
      result$data['isActive'] = (l$isActive as bool?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Variables$Mutation$UpdatePersonalInfo._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get username => (_$data['username'] as String?);
  String? get password => (_$data['password'] as String?);
  String? get firstName => (_$data['firstName'] as String?);
  String? get lastName => (_$data['lastName'] as String?);
  String? get middlename => (_$data['middlename'] as String?);
  String? get phone => (_$data['phone'] as String?);
  String? get email => (_$data['email'] as String?);
  String? get role => (_$data['role'] as String?);
  bool? get isActive => (_$data['isActive'] as bool?);
  int get id => (_$data['id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('middlename')) {
      final l$middlename = middlename;
      result$data['middlename'] = l$middlename;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('role')) {
      final l$role = role;
      result$data['role'] = l$role;
    }
    if (_$data.containsKey('isActive')) {
      final l$isActive = isActive;
      result$data['isActive'] = l$isActive;
    }
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdatePersonalInfo<
          Variables$Mutation$UpdatePersonalInfo>
      get copyWith => CopyWith$Variables$Mutation$UpdatePersonalInfo(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdatePersonalInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$middlename = middlename;
    final lOther$middlename = other.middlename;
    if (_$data.containsKey('middlename') !=
        other._$data.containsKey('middlename')) {
      return false;
    }
    if (l$middlename != lOther$middlename) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (_$data.containsKey('role') != other._$data.containsKey('role')) {
      return false;
    }
    if (l$role != lOther$role) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (_$data.containsKey('isActive') !=
        other._$data.containsKey('isActive')) {
      return false;
    }
    if (l$isActive != lOther$isActive) {
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
    final l$username = username;
    final l$password = password;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$middlename = middlename;
    final l$phone = phone;
    final l$email = email;
    final l$role = role;
    final l$isActive = isActive;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('username') ? l$username : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('middlename') ? l$middlename : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('role') ? l$role : const {},
      _$data.containsKey('isActive') ? l$isActive : const {},
      l$id,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdatePersonalInfo<TRes> {
  factory CopyWith$Variables$Mutation$UpdatePersonalInfo(
    Variables$Mutation$UpdatePersonalInfo instance,
    TRes Function(Variables$Mutation$UpdatePersonalInfo) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdatePersonalInfo;

  factory CopyWith$Variables$Mutation$UpdatePersonalInfo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdatePersonalInfo;

  TRes call({
    String? username,
    String? password,
    String? firstName,
    String? lastName,
    String? middlename,
    String? phone,
    String? email,
    String? role,
    bool? isActive,
    int? id,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdatePersonalInfo<TRes>
    implements CopyWith$Variables$Mutation$UpdatePersonalInfo<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdatePersonalInfo(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdatePersonalInfo _instance;

  final TRes Function(Variables$Mutation$UpdatePersonalInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? username = _undefined,
    Object? password = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? middlename = _undefined,
    Object? phone = _undefined,
    Object? email = _undefined,
    Object? role = _undefined,
    Object? isActive = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Variables$Mutation$UpdatePersonalInfo._({
        ..._instance._$data,
        if (username != _undefined) 'username': (username as String?),
        if (password != _undefined) 'password': (password as String?),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (middlename != _undefined) 'middlename': (middlename as String?),
        if (phone != _undefined) 'phone': (phone as String?),
        if (email != _undefined) 'email': (email as String?),
        if (role != _undefined) 'role': (role as String?),
        if (isActive != _undefined) 'isActive': (isActive as bool?),
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdatePersonalInfo<TRes>
    implements CopyWith$Variables$Mutation$UpdatePersonalInfo<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdatePersonalInfo(this._res);

  final TRes _res;

  @override
  call({
    String? username,
    String? password,
    String? firstName,
    String? lastName,
    String? middlename,
    String? phone,
    String? email,
    String? role,
    bool? isActive,
    int? id,
  }) =>
      _res;
}

class Mutation$UpdatePersonalInfo {
  Mutation$UpdatePersonalInfo({required this.updateUser});

  factory Mutation$UpdatePersonalInfo.fromJson(Map<String, dynamic> json) {
    final l$updateUser = json['updateUser'];
    return Mutation$UpdatePersonalInfo(
        updateUser: Fragment$PersonalInfo.fromJson(
            (l$updateUser as Map<String, dynamic>)));
  }

  final Fragment$PersonalInfo updateUser;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$updateUser = updateUser;
    resultData['updateUser'] = l$updateUser.toJson();
    return resultData;
  }

  @override
  int get hashCode {
    final l$updateUser = updateUser;
    return Object.hashAll([l$updateUser]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdatePersonalInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateUser = updateUser;
    final lOther$updateUser = other.updateUser;
    if (l$updateUser != lOther$updateUser) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdatePersonalInfo
    on Mutation$UpdatePersonalInfo {
  CopyWith$Mutation$UpdatePersonalInfo<Mutation$UpdatePersonalInfo>
      get copyWith => CopyWith$Mutation$UpdatePersonalInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdatePersonalInfo<TRes> {
  factory CopyWith$Mutation$UpdatePersonalInfo(
    Mutation$UpdatePersonalInfo instance,
    TRes Function(Mutation$UpdatePersonalInfo) then,
  ) = _CopyWithImpl$Mutation$UpdatePersonalInfo;

  factory CopyWith$Mutation$UpdatePersonalInfo.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePersonalInfo;

  TRes call({Fragment$PersonalInfo? updateUser});
  CopyWith$Fragment$PersonalInfo<TRes> get updateUser;
}

class _CopyWithImpl$Mutation$UpdatePersonalInfo<TRes>
    implements CopyWith$Mutation$UpdatePersonalInfo<TRes> {
  _CopyWithImpl$Mutation$UpdatePersonalInfo(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePersonalInfo _instance;

  final TRes Function(Mutation$UpdatePersonalInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? updateUser = _undefined}) => _then(
      Mutation$UpdatePersonalInfo(
          updateUser: updateUser == _undefined || updateUser == null
              ? _instance.updateUser
              : (updateUser as Fragment$PersonalInfo)));
  @override
  CopyWith$Fragment$PersonalInfo<TRes> get updateUser {
    final local$updateUser = _instance.updateUser;
    return CopyWith$Fragment$PersonalInfo(
        local$updateUser, (e) => call(updateUser: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdatePersonalInfo<TRes>
    implements CopyWith$Mutation$UpdatePersonalInfo<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePersonalInfo(this._res);

  final TRes _res;

  @override
  call({Fragment$PersonalInfo? updateUser}) => _res;
  @override
  CopyWith$Fragment$PersonalInfo<TRes> get updateUser =>
      CopyWith$Fragment$PersonalInfo.stub(_res);
}

const documentNodeMutationUpdatePersonalInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdatePersonalInfo'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'firstName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'middlename')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'phone')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'role')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isActive')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'updateUserInput'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'username'),
                value: VariableNode(name: NameNode(value: 'username')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'password'),
                value: VariableNode(name: NameNode(value: 'password')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'firstName'),
                value: VariableNode(name: NameNode(value: 'firstName')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'lastName'),
                value: VariableNode(name: NameNode(value: 'lastName')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'middlename'),
                value: VariableNode(name: NameNode(value: 'middlename')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'phone'),
                value: VariableNode(name: NameNode(value: 'phone')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'email'),
                value: VariableNode(name: NameNode(value: 'email')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'role'),
                value: VariableNode(name: NameNode(value: 'role')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'isActive'),
                value: VariableNode(name: NameNode(value: 'isActive')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ]),
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
Mutation$UpdatePersonalInfo _parserFn$Mutation$UpdatePersonalInfo(
        Map<String, dynamic> data) =>
    Mutation$UpdatePersonalInfo.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdatePersonalInfo = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdatePersonalInfo?,
);

class Options$Mutation$UpdatePersonalInfo
    extends graphql.MutationOptions<Mutation$UpdatePersonalInfo> {
  Options$Mutation$UpdatePersonalInfo({
    super.operationName,
    required Variables$Mutation$UpdatePersonalInfo variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePersonalInfo? typedOptimisticResult,
    super.context,
    OnMutationCompleted$Mutation$UpdatePersonalInfo? onCompleted,
    super.update,
    super.onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdatePersonalInfo(data),
                  ),
          document: documentNodeMutationUpdatePersonalInfo,
          parserFn: _parserFn$Mutation$UpdatePersonalInfo,
        );

  final OnMutationCompleted$Mutation$UpdatePersonalInfo? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdatePersonalInfo
    extends graphql.WatchQueryOptions<Mutation$UpdatePersonalInfo> {
  WatchOptions$Mutation$UpdatePersonalInfo({
    super.operationName,
    required Variables$Mutation$UpdatePersonalInfo variables,
    super.fetchPolicy,
    super.errorPolicy,
    super.cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePersonalInfo? typedOptimisticResult,
    super.context,
    super.pollInterval,
    super.eagerlyFetchResults,
    super.carryForwardDataOnException,
    super.fetchResults,
  }) : super(
          variables: variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          document: documentNodeMutationUpdatePersonalInfo,
          parserFn: _parserFn$Mutation$UpdatePersonalInfo,
        );
}

extension ClientExtension$Mutation$UpdatePersonalInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdatePersonalInfo>>
      mutate$UpdatePersonalInfo(
              Options$Mutation$UpdatePersonalInfo options) async =>
          await mutate(options);
  graphql.ObservableQuery<Mutation$UpdatePersonalInfo>
      watchMutation$UpdatePersonalInfo(
              WatchOptions$Mutation$UpdatePersonalInfo options) =>
          watchMutation(options);
}
