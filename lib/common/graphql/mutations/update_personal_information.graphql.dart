import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$UpdatePersonalInformation {
  factory Variables$Mutation$UpdatePersonalInformation({
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
      Variables$Mutation$UpdatePersonalInformation._({
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

  Variables$Mutation$UpdatePersonalInformation._(this._$data);

  factory Variables$Mutation$UpdatePersonalInformation.fromJson(
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
    return Variables$Mutation$UpdatePersonalInformation._(result$data);
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

  CopyWith$Variables$Mutation$UpdatePersonalInformation<
          Variables$Mutation$UpdatePersonalInformation>
      get copyWith => CopyWith$Variables$Mutation$UpdatePersonalInformation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdatePersonalInformation) ||
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

abstract class CopyWith$Variables$Mutation$UpdatePersonalInformation<TRes> {
  factory CopyWith$Variables$Mutation$UpdatePersonalInformation(
    Variables$Mutation$UpdatePersonalInformation instance,
    TRes Function(Variables$Mutation$UpdatePersonalInformation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdatePersonalInformation;

  factory CopyWith$Variables$Mutation$UpdatePersonalInformation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdatePersonalInformation;

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

class _CopyWithImpl$Variables$Mutation$UpdatePersonalInformation<TRes>
    implements CopyWith$Variables$Mutation$UpdatePersonalInformation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdatePersonalInformation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdatePersonalInformation _instance;

  final TRes Function(Variables$Mutation$UpdatePersonalInformation) _then;

  static const _undefined = <dynamic, dynamic>{};

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
      _then(Variables$Mutation$UpdatePersonalInformation._({
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

class _CopyWithStubImpl$Variables$Mutation$UpdatePersonalInformation<TRes>
    implements CopyWith$Variables$Mutation$UpdatePersonalInformation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdatePersonalInformation(this._res);

  TRes _res;

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

class Mutation$UpdatePersonalInformation {
  Mutation$UpdatePersonalInformation({required this.updateUser});

  factory Mutation$UpdatePersonalInformation.fromJson(
      Map<String, dynamic> json) {
    final l$updateUser = json['updateUser'];
    return Mutation$UpdatePersonalInformation(
        updateUser: Mutation$UpdatePersonalInformation$updateUser.fromJson(
            (l$updateUser as Map<String, dynamic>)));
  }

  final Mutation$UpdatePersonalInformation$updateUser updateUser;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateUser = updateUser;
    _resultData['updateUser'] = l$updateUser.toJson();
    return _resultData;
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
    if (!(other is Mutation$UpdatePersonalInformation) ||
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

extension UtilityExtension$Mutation$UpdatePersonalInformation
    on Mutation$UpdatePersonalInformation {
  CopyWith$Mutation$UpdatePersonalInformation<
          Mutation$UpdatePersonalInformation>
      get copyWith => CopyWith$Mutation$UpdatePersonalInformation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdatePersonalInformation<TRes> {
  factory CopyWith$Mutation$UpdatePersonalInformation(
    Mutation$UpdatePersonalInformation instance,
    TRes Function(Mutation$UpdatePersonalInformation) then,
  ) = _CopyWithImpl$Mutation$UpdatePersonalInformation;

  factory CopyWith$Mutation$UpdatePersonalInformation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePersonalInformation;

  TRes call({Mutation$UpdatePersonalInformation$updateUser? updateUser});
  CopyWith$Mutation$UpdatePersonalInformation$updateUser<TRes> get updateUser;
}

class _CopyWithImpl$Mutation$UpdatePersonalInformation<TRes>
    implements CopyWith$Mutation$UpdatePersonalInformation<TRes> {
  _CopyWithImpl$Mutation$UpdatePersonalInformation(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePersonalInformation _instance;

  final TRes Function(Mutation$UpdatePersonalInformation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateUser = _undefined}) =>
      _then(Mutation$UpdatePersonalInformation(
          updateUser: updateUser == _undefined || updateUser == null
              ? _instance.updateUser
              : (updateUser as Mutation$UpdatePersonalInformation$updateUser)));
  CopyWith$Mutation$UpdatePersonalInformation$updateUser<TRes> get updateUser {
    final local$updateUser = _instance.updateUser;
    return CopyWith$Mutation$UpdatePersonalInformation$updateUser(
        local$updateUser, (e) => call(updateUser: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdatePersonalInformation<TRes>
    implements CopyWith$Mutation$UpdatePersonalInformation<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePersonalInformation(this._res);

  TRes _res;

  call({Mutation$UpdatePersonalInformation$updateUser? updateUser}) => _res;
  CopyWith$Mutation$UpdatePersonalInformation$updateUser<TRes> get updateUser =>
      CopyWith$Mutation$UpdatePersonalInformation$updateUser.stub(_res);
}

const documentNodeMutationUpdatePersonalInformation =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdatePersonalInformation'),
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
Mutation$UpdatePersonalInformation _parserFn$Mutation$UpdatePersonalInformation(
        Map<String, dynamic> data) =>
    Mutation$UpdatePersonalInformation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdatePersonalInformation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdatePersonalInformation?,
);

class Options$Mutation$UpdatePersonalInformation
    extends graphql.MutationOptions<Mutation$UpdatePersonalInformation> {
  Options$Mutation$UpdatePersonalInformation({
    String? operationName,
    required Variables$Mutation$UpdatePersonalInformation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePersonalInformation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdatePersonalInformation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdatePersonalInformation>? update,
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
                        : _parserFn$Mutation$UpdatePersonalInformation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdatePersonalInformation,
          parserFn: _parserFn$Mutation$UpdatePersonalInformation,
        );

  final OnMutationCompleted$Mutation$UpdatePersonalInformation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdatePersonalInformation
    extends graphql.WatchQueryOptions<Mutation$UpdatePersonalInformation> {
  WatchOptions$Mutation$UpdatePersonalInformation({
    String? operationName,
    required Variables$Mutation$UpdatePersonalInformation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePersonalInformation? typedOptimisticResult,
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
          document: documentNodeMutationUpdatePersonalInformation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdatePersonalInformation,
        );
}

extension ClientExtension$Mutation$UpdatePersonalInformation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdatePersonalInformation>>
      mutate$UpdatePersonalInformation(
              Options$Mutation$UpdatePersonalInformation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdatePersonalInformation>
      watchMutation$UpdatePersonalInformation(
              WatchOptions$Mutation$UpdatePersonalInformation options) =>
          this.watchMutation(options);
}

class Mutation$UpdatePersonalInformation$updateUser {
  Mutation$UpdatePersonalInformation$updateUser({this.$__typename = 'User'});

  factory Mutation$UpdatePersonalInformation$updateUser.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePersonalInformation$updateUser(
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
    if (!(other is Mutation$UpdatePersonalInformation$updateUser) ||
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

extension UtilityExtension$Mutation$UpdatePersonalInformation$updateUser
    on Mutation$UpdatePersonalInformation$updateUser {
  CopyWith$Mutation$UpdatePersonalInformation$updateUser<
          Mutation$UpdatePersonalInformation$updateUser>
      get copyWith => CopyWith$Mutation$UpdatePersonalInformation$updateUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdatePersonalInformation$updateUser<TRes> {
  factory CopyWith$Mutation$UpdatePersonalInformation$updateUser(
    Mutation$UpdatePersonalInformation$updateUser instance,
    TRes Function(Mutation$UpdatePersonalInformation$updateUser) then,
  ) = _CopyWithImpl$Mutation$UpdatePersonalInformation$updateUser;

  factory CopyWith$Mutation$UpdatePersonalInformation$updateUser.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePersonalInformation$updateUser;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdatePersonalInformation$updateUser<TRes>
    implements CopyWith$Mutation$UpdatePersonalInformation$updateUser<TRes> {
  _CopyWithImpl$Mutation$UpdatePersonalInformation$updateUser(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePersonalInformation$updateUser _instance;

  final TRes Function(Mutation$UpdatePersonalInformation$updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$UpdatePersonalInformation$updateUser(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$UpdatePersonalInformation$updateUser<TRes>
    implements CopyWith$Mutation$UpdatePersonalInformation$updateUser<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePersonalInformation$updateUser(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
