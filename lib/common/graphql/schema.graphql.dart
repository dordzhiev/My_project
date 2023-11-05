class Input$GetByParamsCourierInput {
  factory Input$GetByParamsCourierInput({
    required String firstName,
    required String lastName,
  }) =>
      Input$GetByParamsCourierInput._({
        r'firstName': firstName,
        r'lastName': lastName,
      });

  Input$GetByParamsCourierInput._(this._$data);

  factory Input$GetByParamsCourierInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    return Input$GetByParamsCourierInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get firstName => (_$data['firstName'] as String);
  String get lastName => (_$data['lastName'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    return result$data;
  }

  CopyWith$Input$GetByParamsCourierInput<Input$GetByParamsCourierInput>
      get copyWith => CopyWith$Input$GetByParamsCourierInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetByParamsCourierInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    return Object.hashAll([
      l$firstName,
      l$lastName,
    ]);
  }
}

abstract class CopyWith$Input$GetByParamsCourierInput<TRes> {
  factory CopyWith$Input$GetByParamsCourierInput(
    Input$GetByParamsCourierInput instance,
    TRes Function(Input$GetByParamsCourierInput) then,
  ) = _CopyWithImpl$Input$GetByParamsCourierInput;

  factory CopyWith$Input$GetByParamsCourierInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GetByParamsCourierInput;

  TRes call({
    String? firstName,
    String? lastName,
  });
}

class _CopyWithImpl$Input$GetByParamsCourierInput<TRes>
    implements CopyWith$Input$GetByParamsCourierInput<TRes> {
  _CopyWithImpl$Input$GetByParamsCourierInput(
    this._instance,
    this._then,
  );

  final Input$GetByParamsCourierInput _instance;

  final TRes Function(Input$GetByParamsCourierInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
  }) =>
      _then(Input$GetByParamsCourierInput._({
        ..._instance._$data,
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
      }));
}

class _CopyWithStubImpl$Input$GetByParamsCourierInput<TRes>
    implements CopyWith$Input$GetByParamsCourierInput<TRes> {
  _CopyWithStubImpl$Input$GetByParamsCourierInput(this._res);

  final TRes _res;

  @override
  call({
    String? firstName,
    String? lastName,
  }) =>
      _res;
}

class Input$GetOrdersInput {
  factory Input$GetOrdersInput({
    String? from,
    String? to,
    int? courierId,
    int? organizationId,
    bool? isNotCompleted,
  }) =>
      Input$GetOrdersInput._({
        if (from != null) r'from': from,
        if (to != null) r'to': to,
        if (courierId != null) r'courierId': courierId,
        if (organizationId != null) r'organizationId': organizationId,
        if (isNotCompleted != null) r'isNotCompleted': isNotCompleted,
      });

  Input$GetOrdersInput._(this._$data);

  factory Input$GetOrdersInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('from')) {
      final l$from = data['from'];
      result$data['from'] = (l$from as String?);
    }
    if (data.containsKey('to')) {
      final l$to = data['to'];
      result$data['to'] = (l$to as String?);
    }
    if (data.containsKey('courierId')) {
      final l$courierId = data['courierId'];
      result$data['courierId'] = (l$courierId as int?);
    }
    if (data.containsKey('organizationId')) {
      final l$organizationId = data['organizationId'];
      result$data['organizationId'] = (l$organizationId as int?);
    }
    if (data.containsKey('isNotCompleted')) {
      final l$isNotCompleted = data['isNotCompleted'];
      result$data['isNotCompleted'] = (l$isNotCompleted as bool?);
    }
    return Input$GetOrdersInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get from => (_$data['from'] as String?);
  String? get to => (_$data['to'] as String?);
  int? get courierId => (_$data['courierId'] as int?);
  int? get organizationId => (_$data['organizationId'] as int?);
  bool? get isNotCompleted => (_$data['isNotCompleted'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('from')) {
      final l$from = from;
      result$data['from'] = l$from;
    }
    if (_$data.containsKey('to')) {
      final l$to = to;
      result$data['to'] = l$to;
    }
    if (_$data.containsKey('courierId')) {
      final l$courierId = courierId;
      result$data['courierId'] = l$courierId;
    }
    if (_$data.containsKey('organizationId')) {
      final l$organizationId = organizationId;
      result$data['organizationId'] = l$organizationId;
    }
    if (_$data.containsKey('isNotCompleted')) {
      final l$isNotCompleted = isNotCompleted;
      result$data['isNotCompleted'] = l$isNotCompleted;
    }
    return result$data;
  }

  CopyWith$Input$GetOrdersInput<Input$GetOrdersInput> get copyWith =>
      CopyWith$Input$GetOrdersInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetOrdersInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$from = from;
    final lOther$from = other.from;
    if (_$data.containsKey('from') != other._$data.containsKey('from')) {
      return false;
    }
    if (l$from != lOther$from) {
      return false;
    }
    final l$to = to;
    final lOther$to = other.to;
    if (_$data.containsKey('to') != other._$data.containsKey('to')) {
      return false;
    }
    if (l$to != lOther$to) {
      return false;
    }
    final l$courierId = courierId;
    final lOther$courierId = other.courierId;
    if (_$data.containsKey('courierId') !=
        other._$data.containsKey('courierId')) {
      return false;
    }
    if (l$courierId != lOther$courierId) {
      return false;
    }
    final l$organizationId = organizationId;
    final lOther$organizationId = other.organizationId;
    if (_$data.containsKey('organizationId') !=
        other._$data.containsKey('organizationId')) {
      return false;
    }
    if (l$organizationId != lOther$organizationId) {
      return false;
    }
    final l$isNotCompleted = isNotCompleted;
    final lOther$isNotCompleted = other.isNotCompleted;
    if (_$data.containsKey('isNotCompleted') !=
        other._$data.containsKey('isNotCompleted')) {
      return false;
    }
    if (l$isNotCompleted != lOther$isNotCompleted) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$from = from;
    final l$to = to;
    final l$courierId = courierId;
    final l$organizationId = organizationId;
    final l$isNotCompleted = isNotCompleted;
    return Object.hashAll([
      _$data.containsKey('from') ? l$from : const {},
      _$data.containsKey('to') ? l$to : const {},
      _$data.containsKey('courierId') ? l$courierId : const {},
      _$data.containsKey('organizationId') ? l$organizationId : const {},
      _$data.containsKey('isNotCompleted') ? l$isNotCompleted : const {},
    ]);
  }
}

abstract class CopyWith$Input$GetOrdersInput<TRes> {
  factory CopyWith$Input$GetOrdersInput(
    Input$GetOrdersInput instance,
    TRes Function(Input$GetOrdersInput) then,
  ) = _CopyWithImpl$Input$GetOrdersInput;

  factory CopyWith$Input$GetOrdersInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GetOrdersInput;

  TRes call({
    String? from,
    String? to,
    int? courierId,
    int? organizationId,
    bool? isNotCompleted,
  });
}

class _CopyWithImpl$Input$GetOrdersInput<TRes>
    implements CopyWith$Input$GetOrdersInput<TRes> {
  _CopyWithImpl$Input$GetOrdersInput(
    this._instance,
    this._then,
  );

  final Input$GetOrdersInput _instance;

  final TRes Function(Input$GetOrdersInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? from = _undefined,
    Object? to = _undefined,
    Object? courierId = _undefined,
    Object? organizationId = _undefined,
    Object? isNotCompleted = _undefined,
  }) =>
      _then(Input$GetOrdersInput._({
        ..._instance._$data,
        if (from != _undefined) 'from': (from as String?),
        if (to != _undefined) 'to': (to as String?),
        if (courierId != _undefined) 'courierId': (courierId as int?),
        if (organizationId != _undefined)
          'organizationId': (organizationId as int?),
        if (isNotCompleted != _undefined)
          'isNotCompleted': (isNotCompleted as bool?),
      }));
}

class _CopyWithStubImpl$Input$GetOrdersInput<TRes>
    implements CopyWith$Input$GetOrdersInput<TRes> {
  _CopyWithStubImpl$Input$GetOrdersInput(this._res);

  final TRes _res;

  @override
  call({
    String? from,
    String? to,
    int? courierId,
    int? organizationId,
    bool? isNotCompleted,
  }) =>
      _res;
}

class Input$CreateUserInput {
  factory Input$CreateUserInput({
    required String username,
    required String password,
    String? firstName,
    String? lastName,
    String? middlename,
    String? phone,
    String? email,
    required String role,
    bool? isActive,
  }) =>
      Input$CreateUserInput._({
        r'username': username,
        r'password': password,
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (middlename != null) r'middlename': middlename,
        if (phone != null) r'phone': phone,
        if (email != null) r'email': email,
        r'role': role,
        if (isActive != null) r'isActive': isActive,
      });

  Input$CreateUserInput._(this._$data);

  factory Input$CreateUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
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
    final l$role = data['role'];
    result$data['role'] = (l$role as String);
    if (data.containsKey('isActive')) {
      final l$isActive = data['isActive'];
      result$data['isActive'] = (l$isActive as bool?);
    }
    return Input$CreateUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);
  String get password => (_$data['password'] as String);
  String? get firstName => (_$data['firstName'] as String?);
  String? get lastName => (_$data['lastName'] as String?);
  String? get middlename => (_$data['middlename'] as String?);
  String? get phone => (_$data['phone'] as String?);
  String? get email => (_$data['email'] as String?);
  String get role => (_$data['role'] as String);
  bool? get isActive => (_$data['isActive'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    final l$password = password;
    result$data['password'] = l$password;
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
    final l$role = role;
    result$data['role'] = l$role;
    if (_$data.containsKey('isActive')) {
      final l$isActive = isActive;
      result$data['isActive'] = l$isActive;
    }
    return result$data;
  }

  CopyWith$Input$CreateUserInput<Input$CreateUserInput> get copyWith =>
      CopyWith$Input$CreateUserInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateUserInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
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
    return Object.hashAll([
      l$username,
      l$password,
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('middlename') ? l$middlename : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('email') ? l$email : const {},
      l$role,
      _$data.containsKey('isActive') ? l$isActive : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateUserInput<TRes> {
  factory CopyWith$Input$CreateUserInput(
    Input$CreateUserInput instance,
    TRes Function(Input$CreateUserInput) then,
  ) = _CopyWithImpl$Input$CreateUserInput;

  factory CopyWith$Input$CreateUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateUserInput;

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
  });
}

class _CopyWithImpl$Input$CreateUserInput<TRes>
    implements CopyWith$Input$CreateUserInput<TRes> {
  _CopyWithImpl$Input$CreateUserInput(
    this._instance,
    this._then,
  );

  final Input$CreateUserInput _instance;

  final TRes Function(Input$CreateUserInput) _then;

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
  }) =>
      _then(Input$CreateUserInput._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (middlename != _undefined) 'middlename': (middlename as String?),
        if (phone != _undefined) 'phone': (phone as String?),
        if (email != _undefined) 'email': (email as String?),
        if (role != _undefined && role != null) 'role': (role as String),
        if (isActive != _undefined) 'isActive': (isActive as bool?),
      }));
}

class _CopyWithStubImpl$Input$CreateUserInput<TRes>
    implements CopyWith$Input$CreateUserInput<TRes> {
  _CopyWithStubImpl$Input$CreateUserInput(this._res);

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
  }) =>
      _res;
}

class Input$UpdateUserInput {
  factory Input$UpdateUserInput({
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
      Input$UpdateUserInput._({
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

  Input$UpdateUserInput._(this._$data);

  factory Input$UpdateUserInput.fromJson(Map<String, dynamic> data) {
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
    return Input$UpdateUserInput._(result$data);
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

  CopyWith$Input$UpdateUserInput<Input$UpdateUserInput> get copyWith =>
      CopyWith$Input$UpdateUserInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateUserInput || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$UpdateUserInput<TRes> {
  factory CopyWith$Input$UpdateUserInput(
    Input$UpdateUserInput instance,
    TRes Function(Input$UpdateUserInput) then,
  ) = _CopyWithImpl$Input$UpdateUserInput;

  factory CopyWith$Input$UpdateUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateUserInput;

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

class _CopyWithImpl$Input$UpdateUserInput<TRes>
    implements CopyWith$Input$UpdateUserInput<TRes> {
  _CopyWithImpl$Input$UpdateUserInput(
    this._instance,
    this._then,
  );

  final Input$UpdateUserInput _instance;

  final TRes Function(Input$UpdateUserInput) _then;

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
      _then(Input$UpdateUserInput._({
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

class _CopyWithStubImpl$Input$UpdateUserInput<TRes>
    implements CopyWith$Input$UpdateUserInput<TRes> {
  _CopyWithStubImpl$Input$UpdateUserInput(this._res);

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

class Input$UpdateLocationInput {
  factory Input$UpdateLocationInput({
    required double longitude,
    required double latitude,
  }) =>
      Input$UpdateLocationInput._({
        r'longitude': longitude,
        r'latitude': latitude,
      });

  Input$UpdateLocationInput._(this._$data);

  factory Input$UpdateLocationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$longitude = data['longitude'];
    result$data['longitude'] = (l$longitude as num).toDouble();
    final l$latitude = data['latitude'];
    result$data['latitude'] = (l$latitude as num).toDouble();
    return Input$UpdateLocationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double get longitude => (_$data['longitude'] as double);
  double get latitude => (_$data['latitude'] as double);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$longitude = longitude;
    result$data['longitude'] = l$longitude;
    final l$latitude = latitude;
    result$data['latitude'] = l$latitude;
    return result$data;
  }

  CopyWith$Input$UpdateLocationInput<Input$UpdateLocationInput> get copyWith =>
      CopyWith$Input$UpdateLocationInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateLocationInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$longitude = longitude;
    final l$latitude = latitude;
    return Object.hashAll([
      l$longitude,
      l$latitude,
    ]);
  }
}

abstract class CopyWith$Input$UpdateLocationInput<TRes> {
  factory CopyWith$Input$UpdateLocationInput(
    Input$UpdateLocationInput instance,
    TRes Function(Input$UpdateLocationInput) then,
  ) = _CopyWithImpl$Input$UpdateLocationInput;

  factory CopyWith$Input$UpdateLocationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateLocationInput;

  TRes call({
    double? longitude,
    double? latitude,
  });
}

class _CopyWithImpl$Input$UpdateLocationInput<TRes>
    implements CopyWith$Input$UpdateLocationInput<TRes> {
  _CopyWithImpl$Input$UpdateLocationInput(
    this._instance,
    this._then,
  );

  final Input$UpdateLocationInput _instance;

  final TRes Function(Input$UpdateLocationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? longitude = _undefined,
    Object? latitude = _undefined,
  }) =>
      _then(Input$UpdateLocationInput._({
        ..._instance._$data,
        if (longitude != _undefined && longitude != null)
          'longitude': (longitude as double),
        if (latitude != _undefined && latitude != null)
          'latitude': (latitude as double),
      }));
}

class _CopyWithStubImpl$Input$UpdateLocationInput<TRes>
    implements CopyWith$Input$UpdateLocationInput<TRes> {
  _CopyWithStubImpl$Input$UpdateLocationInput(this._res);

  final TRes _res;

  @override
  call({
    double? longitude,
    double? latitude,
  }) =>
      _res;
}

class Input$CreateCourierInput {
  factory Input$CreateCourierInput({
    required int userId,
    String? description,
    bool? isOnline,
    required int tariffId,
    required String courierType,
  }) =>
      Input$CreateCourierInput._({
        r'userId': userId,
        if (description != null) r'description': description,
        if (isOnline != null) r'isOnline': isOnline,
        r'tariffId': tariffId,
        r'courierType': courierType,
      });

  Input$CreateCourierInput._(this._$data);

  factory Input$CreateCourierInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as int);
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('isOnline')) {
      final l$isOnline = data['isOnline'];
      result$data['isOnline'] = (l$isOnline as bool?);
    }
    final l$tariffId = data['tariffId'];
    result$data['tariffId'] = (l$tariffId as int);
    final l$courierType = data['courierType'];
    result$data['courierType'] = (l$courierType as String);
    return Input$CreateCourierInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get userId => (_$data['userId'] as int);
  String? get description => (_$data['description'] as String?);
  bool? get isOnline => (_$data['isOnline'] as bool?);
  int get tariffId => (_$data['tariffId'] as int);
  String get courierType => (_$data['courierType'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('isOnline')) {
      final l$isOnline = isOnline;
      result$data['isOnline'] = l$isOnline;
    }
    final l$tariffId = tariffId;
    result$data['tariffId'] = l$tariffId;
    final l$courierType = courierType;
    result$data['courierType'] = l$courierType;
    return result$data;
  }

  CopyWith$Input$CreateCourierInput<Input$CreateCourierInput> get copyWith =>
      CopyWith$Input$CreateCourierInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateCourierInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$isOnline = isOnline;
    final lOther$isOnline = other.isOnline;
    if (_$data.containsKey('isOnline') !=
        other._$data.containsKey('isOnline')) {
      return false;
    }
    if (l$isOnline != lOther$isOnline) {
      return false;
    }
    final l$tariffId = tariffId;
    final lOther$tariffId = other.tariffId;
    if (l$tariffId != lOther$tariffId) {
      return false;
    }
    final l$courierType = courierType;
    final lOther$courierType = other.courierType;
    if (l$courierType != lOther$courierType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$description = description;
    final l$isOnline = isOnline;
    final l$tariffId = tariffId;
    final l$courierType = courierType;
    return Object.hashAll([
      l$userId,
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('isOnline') ? l$isOnline : const {},
      l$tariffId,
      l$courierType,
    ]);
  }
}

abstract class CopyWith$Input$CreateCourierInput<TRes> {
  factory CopyWith$Input$CreateCourierInput(
    Input$CreateCourierInput instance,
    TRes Function(Input$CreateCourierInput) then,
  ) = _CopyWithImpl$Input$CreateCourierInput;

  factory CopyWith$Input$CreateCourierInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateCourierInput;

  TRes call({
    int? userId,
    String? description,
    bool? isOnline,
    int? tariffId,
    String? courierType,
  });
}

class _CopyWithImpl$Input$CreateCourierInput<TRes>
    implements CopyWith$Input$CreateCourierInput<TRes> {
  _CopyWithImpl$Input$CreateCourierInput(
    this._instance,
    this._then,
  );

  final Input$CreateCourierInput _instance;

  final TRes Function(Input$CreateCourierInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? userId = _undefined,
    Object? description = _undefined,
    Object? isOnline = _undefined,
    Object? tariffId = _undefined,
    Object? courierType = _undefined,
  }) =>
      _then(Input$CreateCourierInput._({
        ..._instance._$data,
        if (userId != _undefined && userId != null) 'userId': (userId as int),
        if (description != _undefined) 'description': (description as String?),
        if (isOnline != _undefined) 'isOnline': (isOnline as bool?),
        if (tariffId != _undefined && tariffId != null)
          'tariffId': (tariffId as int),
        if (courierType != _undefined && courierType != null)
          'courierType': (courierType as String),
      }));
}

class _CopyWithStubImpl$Input$CreateCourierInput<TRes>
    implements CopyWith$Input$CreateCourierInput<TRes> {
  _CopyWithStubImpl$Input$CreateCourierInput(this._res);

  final TRes _res;

  @override
  call({
    int? userId,
    String? description,
    bool? isOnline,
    int? tariffId,
    String? courierType,
  }) =>
      _res;
}

class Input$UpdateCourierInput {
  factory Input$UpdateCourierInput({
    int? userId,
    String? description,
    bool? isOnline,
    int? tariffId,
    String? courierType,
    required int id,
  }) =>
      Input$UpdateCourierInput._({
        if (userId != null) r'userId': userId,
        if (description != null) r'description': description,
        if (isOnline != null) r'isOnline': isOnline,
        if (tariffId != null) r'tariffId': tariffId,
        if (courierType != null) r'courierType': courierType,
        r'id': id,
      });

  Input$UpdateCourierInput._(this._$data);

  factory Input$UpdateCourierInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('isOnline')) {
      final l$isOnline = data['isOnline'];
      result$data['isOnline'] = (l$isOnline as bool?);
    }
    if (data.containsKey('tariffId')) {
      final l$tariffId = data['tariffId'];
      result$data['tariffId'] = (l$tariffId as int?);
    }
    if (data.containsKey('courierType')) {
      final l$courierType = data['courierType'];
      result$data['courierType'] = (l$courierType as String?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$UpdateCourierInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);
  String? get description => (_$data['description'] as String?);
  bool? get isOnline => (_$data['isOnline'] as bool?);
  int? get tariffId => (_$data['tariffId'] as int?);
  String? get courierType => (_$data['courierType'] as String?);
  int get id => (_$data['id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('isOnline')) {
      final l$isOnline = isOnline;
      result$data['isOnline'] = l$isOnline;
    }
    if (_$data.containsKey('tariffId')) {
      final l$tariffId = tariffId;
      result$data['tariffId'] = l$tariffId;
    }
    if (_$data.containsKey('courierType')) {
      final l$courierType = courierType;
      result$data['courierType'] = l$courierType;
    }
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$UpdateCourierInput<Input$UpdateCourierInput> get copyWith =>
      CopyWith$Input$UpdateCourierInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateCourierInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$isOnline = isOnline;
    final lOther$isOnline = other.isOnline;
    if (_$data.containsKey('isOnline') !=
        other._$data.containsKey('isOnline')) {
      return false;
    }
    if (l$isOnline != lOther$isOnline) {
      return false;
    }
    final l$tariffId = tariffId;
    final lOther$tariffId = other.tariffId;
    if (_$data.containsKey('tariffId') !=
        other._$data.containsKey('tariffId')) {
      return false;
    }
    if (l$tariffId != lOther$tariffId) {
      return false;
    }
    final l$courierType = courierType;
    final lOther$courierType = other.courierType;
    if (_$data.containsKey('courierType') !=
        other._$data.containsKey('courierType')) {
      return false;
    }
    if (l$courierType != lOther$courierType) {
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
    final l$userId = userId;
    final l$description = description;
    final l$isOnline = isOnline;
    final l$tariffId = tariffId;
    final l$courierType = courierType;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('isOnline') ? l$isOnline : const {},
      _$data.containsKey('tariffId') ? l$tariffId : const {},
      _$data.containsKey('courierType') ? l$courierType : const {},
      l$id,
    ]);
  }
}

abstract class CopyWith$Input$UpdateCourierInput<TRes> {
  factory CopyWith$Input$UpdateCourierInput(
    Input$UpdateCourierInput instance,
    TRes Function(Input$UpdateCourierInput) then,
  ) = _CopyWithImpl$Input$UpdateCourierInput;

  factory CopyWith$Input$UpdateCourierInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateCourierInput;

  TRes call({
    int? userId,
    String? description,
    bool? isOnline,
    int? tariffId,
    String? courierType,
    int? id,
  });
}

class _CopyWithImpl$Input$UpdateCourierInput<TRes>
    implements CopyWith$Input$UpdateCourierInput<TRes> {
  _CopyWithImpl$Input$UpdateCourierInput(
    this._instance,
    this._then,
  );

  final Input$UpdateCourierInput _instance;

  final TRes Function(Input$UpdateCourierInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? userId = _undefined,
    Object? description = _undefined,
    Object? isOnline = _undefined,
    Object? tariffId = _undefined,
    Object? courierType = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$UpdateCourierInput._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (description != _undefined) 'description': (description as String?),
        if (isOnline != _undefined) 'isOnline': (isOnline as bool?),
        if (tariffId != _undefined) 'tariffId': (tariffId as int?),
        if (courierType != _undefined) 'courierType': (courierType as String?),
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Input$UpdateCourierInput<TRes>
    implements CopyWith$Input$UpdateCourierInput<TRes> {
  _CopyWithStubImpl$Input$UpdateCourierInput(this._res);

  final TRes _res;

  @override
  call({
    int? userId,
    String? description,
    bool? isOnline,
    int? tariffId,
    String? courierType,
    int? id,
  }) =>
      _res;
}

class Input$CreateSessionInput {
  factory Input$CreateSessionInput({
    DateTime? startTime,
    DateTime? endTime,
    required double courierId,
  }) =>
      Input$CreateSessionInput._({
        if (startTime != null) r'startTime': startTime,
        if (endTime != null) r'endTime': endTime,
        r'courierId': courierId,
      });

  Input$CreateSessionInput._(this._$data);

  factory Input$CreateSessionInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('startTime')) {
      final l$startTime = data['startTime'];
      result$data['startTime'] =
          l$startTime == null ? null : DateTime.parse((l$startTime as String));
    }
    if (data.containsKey('endTime')) {
      final l$endTime = data['endTime'];
      result$data['endTime'] =
          l$endTime == null ? null : DateTime.parse((l$endTime as String));
    }
    final l$courierId = data['courierId'];
    result$data['courierId'] = (l$courierId as num).toDouble();
    return Input$CreateSessionInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get startTime => (_$data['startTime'] as DateTime?);
  DateTime? get endTime => (_$data['endTime'] as DateTime?);
  double get courierId => (_$data['courierId'] as double);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('startTime')) {
      final l$startTime = startTime;
      result$data['startTime'] = l$startTime?.toIso8601String();
    }
    if (_$data.containsKey('endTime')) {
      final l$endTime = endTime;
      result$data['endTime'] = l$endTime?.toIso8601String();
    }
    final l$courierId = courierId;
    result$data['courierId'] = l$courierId;
    return result$data;
  }

  CopyWith$Input$CreateSessionInput<Input$CreateSessionInput> get copyWith =>
      CopyWith$Input$CreateSessionInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateSessionInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startTime = startTime;
    final lOther$startTime = other.startTime;
    if (_$data.containsKey('startTime') !=
        other._$data.containsKey('startTime')) {
      return false;
    }
    if (l$startTime != lOther$startTime) {
      return false;
    }
    final l$endTime = endTime;
    final lOther$endTime = other.endTime;
    if (_$data.containsKey('endTime') != other._$data.containsKey('endTime')) {
      return false;
    }
    if (l$endTime != lOther$endTime) {
      return false;
    }
    final l$courierId = courierId;
    final lOther$courierId = other.courierId;
    if (l$courierId != lOther$courierId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$startTime = startTime;
    final l$endTime = endTime;
    final l$courierId = courierId;
    return Object.hashAll([
      _$data.containsKey('startTime') ? l$startTime : const {},
      _$data.containsKey('endTime') ? l$endTime : const {},
      l$courierId,
    ]);
  }
}

abstract class CopyWith$Input$CreateSessionInput<TRes> {
  factory CopyWith$Input$CreateSessionInput(
    Input$CreateSessionInput instance,
    TRes Function(Input$CreateSessionInput) then,
  ) = _CopyWithImpl$Input$CreateSessionInput;

  factory CopyWith$Input$CreateSessionInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateSessionInput;

  TRes call({
    DateTime? startTime,
    DateTime? endTime,
    double? courierId,
  });
}

class _CopyWithImpl$Input$CreateSessionInput<TRes>
    implements CopyWith$Input$CreateSessionInput<TRes> {
  _CopyWithImpl$Input$CreateSessionInput(
    this._instance,
    this._then,
  );

  final Input$CreateSessionInput _instance;

  final TRes Function(Input$CreateSessionInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? startTime = _undefined,
    Object? endTime = _undefined,
    Object? courierId = _undefined,
  }) =>
      _then(Input$CreateSessionInput._({
        ..._instance._$data,
        if (startTime != _undefined) 'startTime': (startTime as DateTime?),
        if (endTime != _undefined) 'endTime': (endTime as DateTime?),
        if (courierId != _undefined && courierId != null)
          'courierId': (courierId as double),
      }));
}

class _CopyWithStubImpl$Input$CreateSessionInput<TRes>
    implements CopyWith$Input$CreateSessionInput<TRes> {
  _CopyWithStubImpl$Input$CreateSessionInput(this._res);

  final TRes _res;

  @override
  call({
    DateTime? startTime,
    DateTime? endTime,
    double? courierId,
  }) =>
      _res;
}

class Input$AssignCourierOrderInputInput {
  factory Input$AssignCourierOrderInputInput({
    required int courierId,
    required int id,
  }) =>
      Input$AssignCourierOrderInputInput._({
        r'courierId': courierId,
        r'id': id,
      });

  Input$AssignCourierOrderInputInput._(this._$data);

  factory Input$AssignCourierOrderInputInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$courierId = data['courierId'];
    result$data['courierId'] = (l$courierId as int);
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$AssignCourierOrderInputInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get courierId => (_$data['courierId'] as int);
  int get id => (_$data['id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$courierId = courierId;
    result$data['courierId'] = l$courierId;
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$AssignCourierOrderInputInput<
          Input$AssignCourierOrderInputInput>
      get copyWith => CopyWith$Input$AssignCourierOrderInputInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AssignCourierOrderInputInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$courierId = courierId;
    final lOther$courierId = other.courierId;
    if (l$courierId != lOther$courierId) {
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
    final l$courierId = courierId;
    final l$id = id;
    return Object.hashAll([
      l$courierId,
      l$id,
    ]);
  }
}

abstract class CopyWith$Input$AssignCourierOrderInputInput<TRes> {
  factory CopyWith$Input$AssignCourierOrderInputInput(
    Input$AssignCourierOrderInputInput instance,
    TRes Function(Input$AssignCourierOrderInputInput) then,
  ) = _CopyWithImpl$Input$AssignCourierOrderInputInput;

  factory CopyWith$Input$AssignCourierOrderInputInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AssignCourierOrderInputInput;

  TRes call({
    int? courierId,
    int? id,
  });
}

class _CopyWithImpl$Input$AssignCourierOrderInputInput<TRes>
    implements CopyWith$Input$AssignCourierOrderInputInput<TRes> {
  _CopyWithImpl$Input$AssignCourierOrderInputInput(
    this._instance,
    this._then,
  );

  final Input$AssignCourierOrderInputInput _instance;

  final TRes Function(Input$AssignCourierOrderInputInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? courierId = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$AssignCourierOrderInputInput._({
        ..._instance._$data,
        if (courierId != _undefined && courierId != null)
          'courierId': (courierId as int),
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Input$AssignCourierOrderInputInput<TRes>
    implements CopyWith$Input$AssignCourierOrderInputInput<TRes> {
  _CopyWithStubImpl$Input$AssignCourierOrderInputInput(this._res);

  final TRes _res;

  @override
  call({
    int? courierId,
    int? id,
  }) =>
      _res;
}

class Input$CreateOrderInput {
  factory Input$CreateOrderInput({
    String? fromAddressTitle,
    String? fromAddressPhone,
    String? toAddressTitle,
    required String toAddressPhone,
    String? status,
    String? orderDescription,
    int? deliveryCostForPartner,
    int? deliveryCostForCustomer,
    int? courierPaymentCost,
    bool? isPaymentCompleted,
    String? paymentType,
    bool? isPrepaidToPartner,
    required double orderAmount,
    required String fromAddress,
    double? fromLongitude,
    double? fromLatitude,
    required String toAddress,
    double? toLongitude,
    double? toLatitude,
    int? deliveryDistance,
    String? customerComment,
    required int organizationId,
    String? organizationServiceOrderId,
    int? courierId,
    int? approximateReadyTime,
    DateTime? deferredTo,
  }) =>
      Input$CreateOrderInput._({
        if (fromAddressTitle != null) r'fromAddressTitle': fromAddressTitle,
        if (fromAddressPhone != null) r'fromAddressPhone': fromAddressPhone,
        if (toAddressTitle != null) r'toAddressTitle': toAddressTitle,
        r'toAddressPhone': toAddressPhone,
        if (status != null) r'status': status,
        if (orderDescription != null) r'orderDescription': orderDescription,
        if (deliveryCostForPartner != null)
          r'deliveryCostForPartner': deliveryCostForPartner,
        if (deliveryCostForCustomer != null)
          r'deliveryCostForCustomer': deliveryCostForCustomer,
        if (courierPaymentCost != null)
          r'courierPaymentCost': courierPaymentCost,
        if (isPaymentCompleted != null)
          r'isPaymentCompleted': isPaymentCompleted,
        if (paymentType != null) r'paymentType': paymentType,
        if (isPrepaidToPartner != null)
          r'isPrepaidToPartner': isPrepaidToPartner,
        r'orderAmount': orderAmount,
        r'fromAddress': fromAddress,
        if (fromLongitude != null) r'fromLongitude': fromLongitude,
        if (fromLatitude != null) r'fromLatitude': fromLatitude,
        r'toAddress': toAddress,
        if (toLongitude != null) r'toLongitude': toLongitude,
        if (toLatitude != null) r'toLatitude': toLatitude,
        if (deliveryDistance != null) r'deliveryDistance': deliveryDistance,
        if (customerComment != null) r'customerComment': customerComment,
        r'organizationId': organizationId,
        if (organizationServiceOrderId != null)
          r'organizationServiceOrderId': organizationServiceOrderId,
        if (courierId != null) r'courierId': courierId,
        if (approximateReadyTime != null)
          r'approximateReadyTime': approximateReadyTime,
        if (deferredTo != null) r'deferredTo': deferredTo,
      });

  Input$CreateOrderInput._(this._$data);

  factory Input$CreateOrderInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('fromAddressTitle')) {
      final l$fromAddressTitle = data['fromAddressTitle'];
      result$data['fromAddressTitle'] = (l$fromAddressTitle as String?);
    }
    if (data.containsKey('fromAddressPhone')) {
      final l$fromAddressPhone = data['fromAddressPhone'];
      result$data['fromAddressPhone'] = (l$fromAddressPhone as String?);
    }
    if (data.containsKey('toAddressTitle')) {
      final l$toAddressTitle = data['toAddressTitle'];
      result$data['toAddressTitle'] = (l$toAddressTitle as String?);
    }
    final l$toAddressPhone = data['toAddressPhone'];
    result$data['toAddressPhone'] = (l$toAddressPhone as String);
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as String?);
    }
    if (data.containsKey('orderDescription')) {
      final l$orderDescription = data['orderDescription'];
      result$data['orderDescription'] = (l$orderDescription as String?);
    }
    if (data.containsKey('deliveryCostForPartner')) {
      final l$deliveryCostForPartner = data['deliveryCostForPartner'];
      result$data['deliveryCostForPartner'] =
          (l$deliveryCostForPartner as int?);
    }
    if (data.containsKey('deliveryCostForCustomer')) {
      final l$deliveryCostForCustomer = data['deliveryCostForCustomer'];
      result$data['deliveryCostForCustomer'] =
          (l$deliveryCostForCustomer as int?);
    }
    if (data.containsKey('courierPaymentCost')) {
      final l$courierPaymentCost = data['courierPaymentCost'];
      result$data['courierPaymentCost'] = (l$courierPaymentCost as int?);
    }
    if (data.containsKey('isPaymentCompleted')) {
      final l$isPaymentCompleted = data['isPaymentCompleted'];
      result$data['isPaymentCompleted'] = (l$isPaymentCompleted as bool?);
    }
    if (data.containsKey('paymentType')) {
      final l$paymentType = data['paymentType'];
      result$data['paymentType'] = (l$paymentType as String?);
    }
    if (data.containsKey('isPrepaidToPartner')) {
      final l$isPrepaidToPartner = data['isPrepaidToPartner'];
      result$data['isPrepaidToPartner'] = (l$isPrepaidToPartner as bool?);
    }
    final l$orderAmount = data['orderAmount'];
    result$data['orderAmount'] = (l$orderAmount as num).toDouble();
    final l$fromAddress = data['fromAddress'];
    result$data['fromAddress'] = (l$fromAddress as String);
    if (data.containsKey('fromLongitude')) {
      final l$fromLongitude = data['fromLongitude'];
      result$data['fromLongitude'] = (l$fromLongitude as num?)?.toDouble();
    }
    if (data.containsKey('fromLatitude')) {
      final l$fromLatitude = data['fromLatitude'];
      result$data['fromLatitude'] = (l$fromLatitude as num?)?.toDouble();
    }
    final l$toAddress = data['toAddress'];
    result$data['toAddress'] = (l$toAddress as String);
    if (data.containsKey('toLongitude')) {
      final l$toLongitude = data['toLongitude'];
      result$data['toLongitude'] = (l$toLongitude as num?)?.toDouble();
    }
    if (data.containsKey('toLatitude')) {
      final l$toLatitude = data['toLatitude'];
      result$data['toLatitude'] = (l$toLatitude as num?)?.toDouble();
    }
    if (data.containsKey('deliveryDistance')) {
      final l$deliveryDistance = data['deliveryDistance'];
      result$data['deliveryDistance'] = (l$deliveryDistance as int?);
    }
    if (data.containsKey('customerComment')) {
      final l$customerComment = data['customerComment'];
      result$data['customerComment'] = (l$customerComment as String?);
    }
    final l$organizationId = data['organizationId'];
    result$data['organizationId'] = (l$organizationId as int);
    if (data.containsKey('organizationServiceOrderId')) {
      final l$organizationServiceOrderId = data['organizationServiceOrderId'];
      result$data['organizationServiceOrderId'] =
          (l$organizationServiceOrderId as String?);
    }
    if (data.containsKey('courierId')) {
      final l$courierId = data['courierId'];
      result$data['courierId'] = (l$courierId as int?);
    }
    if (data.containsKey('approximateReadyTime')) {
      final l$approximateReadyTime = data['approximateReadyTime'];
      result$data['approximateReadyTime'] = (l$approximateReadyTime as int?);
    }
    if (data.containsKey('deferredTo')) {
      final l$deferredTo = data['deferredTo'];
      result$data['deferredTo'] = l$deferredTo == null
          ? null
          : DateTime.parse((l$deferredTo as String));
    }
    return Input$CreateOrderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get fromAddressTitle => (_$data['fromAddressTitle'] as String?);
  String? get fromAddressPhone => (_$data['fromAddressPhone'] as String?);
  String? get toAddressTitle => (_$data['toAddressTitle'] as String?);
  String get toAddressPhone => (_$data['toAddressPhone'] as String);
  String? get status => (_$data['status'] as String?);
  String? get orderDescription => (_$data['orderDescription'] as String?);
  int? get deliveryCostForPartner => (_$data['deliveryCostForPartner'] as int?);
  int? get deliveryCostForCustomer =>
      (_$data['deliveryCostForCustomer'] as int?);
  int? get courierPaymentCost => (_$data['courierPaymentCost'] as int?);
  bool? get isPaymentCompleted => (_$data['isPaymentCompleted'] as bool?);
  String? get paymentType => (_$data['paymentType'] as String?);
  bool? get isPrepaidToPartner => (_$data['isPrepaidToPartner'] as bool?);
  double get orderAmount => (_$data['orderAmount'] as double);
  String get fromAddress => (_$data['fromAddress'] as String);
  double? get fromLongitude => (_$data['fromLongitude'] as double?);
  double? get fromLatitude => (_$data['fromLatitude'] as double?);
  String get toAddress => (_$data['toAddress'] as String);
  double? get toLongitude => (_$data['toLongitude'] as double?);
  double? get toLatitude => (_$data['toLatitude'] as double?);
  int? get deliveryDistance => (_$data['deliveryDistance'] as int?);
  String? get customerComment => (_$data['customerComment'] as String?);
  int get organizationId => (_$data['organizationId'] as int);
  String? get organizationServiceOrderId =>
      (_$data['organizationServiceOrderId'] as String?);
  int? get courierId => (_$data['courierId'] as int?);
  int? get approximateReadyTime => (_$data['approximateReadyTime'] as int?);
  DateTime? get deferredTo => (_$data['deferredTo'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('fromAddressTitle')) {
      final l$fromAddressTitle = fromAddressTitle;
      result$data['fromAddressTitle'] = l$fromAddressTitle;
    }
    if (_$data.containsKey('fromAddressPhone')) {
      final l$fromAddressPhone = fromAddressPhone;
      result$data['fromAddressPhone'] = l$fromAddressPhone;
    }
    if (_$data.containsKey('toAddressTitle')) {
      final l$toAddressTitle = toAddressTitle;
      result$data['toAddressTitle'] = l$toAddressTitle;
    }
    final l$toAddressPhone = toAddressPhone;
    result$data['toAddressPhone'] = l$toAddressPhone;
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('orderDescription')) {
      final l$orderDescription = orderDescription;
      result$data['orderDescription'] = l$orderDescription;
    }
    if (_$data.containsKey('deliveryCostForPartner')) {
      final l$deliveryCostForPartner = deliveryCostForPartner;
      result$data['deliveryCostForPartner'] = l$deliveryCostForPartner;
    }
    if (_$data.containsKey('deliveryCostForCustomer')) {
      final l$deliveryCostForCustomer = deliveryCostForCustomer;
      result$data['deliveryCostForCustomer'] = l$deliveryCostForCustomer;
    }
    if (_$data.containsKey('courierPaymentCost')) {
      final l$courierPaymentCost = courierPaymentCost;
      result$data['courierPaymentCost'] = l$courierPaymentCost;
    }
    if (_$data.containsKey('isPaymentCompleted')) {
      final l$isPaymentCompleted = isPaymentCompleted;
      result$data['isPaymentCompleted'] = l$isPaymentCompleted;
    }
    if (_$data.containsKey('paymentType')) {
      final l$paymentType = paymentType;
      result$data['paymentType'] = l$paymentType;
    }
    if (_$data.containsKey('isPrepaidToPartner')) {
      final l$isPrepaidToPartner = isPrepaidToPartner;
      result$data['isPrepaidToPartner'] = l$isPrepaidToPartner;
    }
    final l$orderAmount = orderAmount;
    result$data['orderAmount'] = l$orderAmount;
    final l$fromAddress = fromAddress;
    result$data['fromAddress'] = l$fromAddress;
    if (_$data.containsKey('fromLongitude')) {
      final l$fromLongitude = fromLongitude;
      result$data['fromLongitude'] = l$fromLongitude;
    }
    if (_$data.containsKey('fromLatitude')) {
      final l$fromLatitude = fromLatitude;
      result$data['fromLatitude'] = l$fromLatitude;
    }
    final l$toAddress = toAddress;
    result$data['toAddress'] = l$toAddress;
    if (_$data.containsKey('toLongitude')) {
      final l$toLongitude = toLongitude;
      result$data['toLongitude'] = l$toLongitude;
    }
    if (_$data.containsKey('toLatitude')) {
      final l$toLatitude = toLatitude;
      result$data['toLatitude'] = l$toLatitude;
    }
    if (_$data.containsKey('deliveryDistance')) {
      final l$deliveryDistance = deliveryDistance;
      result$data['deliveryDistance'] = l$deliveryDistance;
    }
    if (_$data.containsKey('customerComment')) {
      final l$customerComment = customerComment;
      result$data['customerComment'] = l$customerComment;
    }
    final l$organizationId = organizationId;
    result$data['organizationId'] = l$organizationId;
    if (_$data.containsKey('organizationServiceOrderId')) {
      final l$organizationServiceOrderId = organizationServiceOrderId;
      result$data['organizationServiceOrderId'] = l$organizationServiceOrderId;
    }
    if (_$data.containsKey('courierId')) {
      final l$courierId = courierId;
      result$data['courierId'] = l$courierId;
    }
    if (_$data.containsKey('approximateReadyTime')) {
      final l$approximateReadyTime = approximateReadyTime;
      result$data['approximateReadyTime'] = l$approximateReadyTime;
    }
    if (_$data.containsKey('deferredTo')) {
      final l$deferredTo = deferredTo;
      result$data['deferredTo'] = l$deferredTo?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$CreateOrderInput<Input$CreateOrderInput> get copyWith =>
      CopyWith$Input$CreateOrderInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateOrderInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fromAddressTitle = fromAddressTitle;
    final lOther$fromAddressTitle = other.fromAddressTitle;
    if (_$data.containsKey('fromAddressTitle') !=
        other._$data.containsKey('fromAddressTitle')) {
      return false;
    }
    if (l$fromAddressTitle != lOther$fromAddressTitle) {
      return false;
    }
    final l$fromAddressPhone = fromAddressPhone;
    final lOther$fromAddressPhone = other.fromAddressPhone;
    if (_$data.containsKey('fromAddressPhone') !=
        other._$data.containsKey('fromAddressPhone')) {
      return false;
    }
    if (l$fromAddressPhone != lOther$fromAddressPhone) {
      return false;
    }
    final l$toAddressTitle = toAddressTitle;
    final lOther$toAddressTitle = other.toAddressTitle;
    if (_$data.containsKey('toAddressTitle') !=
        other._$data.containsKey('toAddressTitle')) {
      return false;
    }
    if (l$toAddressTitle != lOther$toAddressTitle) {
      return false;
    }
    final l$toAddressPhone = toAddressPhone;
    final lOther$toAddressPhone = other.toAddressPhone;
    if (l$toAddressPhone != lOther$toAddressPhone) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$orderDescription = orderDescription;
    final lOther$orderDescription = other.orderDescription;
    if (_$data.containsKey('orderDescription') !=
        other._$data.containsKey('orderDescription')) {
      return false;
    }
    if (l$orderDescription != lOther$orderDescription) {
      return false;
    }
    final l$deliveryCostForPartner = deliveryCostForPartner;
    final lOther$deliveryCostForPartner = other.deliveryCostForPartner;
    if (_$data.containsKey('deliveryCostForPartner') !=
        other._$data.containsKey('deliveryCostForPartner')) {
      return false;
    }
    if (l$deliveryCostForPartner != lOther$deliveryCostForPartner) {
      return false;
    }
    final l$deliveryCostForCustomer = deliveryCostForCustomer;
    final lOther$deliveryCostForCustomer = other.deliveryCostForCustomer;
    if (_$data.containsKey('deliveryCostForCustomer') !=
        other._$data.containsKey('deliveryCostForCustomer')) {
      return false;
    }
    if (l$deliveryCostForCustomer != lOther$deliveryCostForCustomer) {
      return false;
    }
    final l$courierPaymentCost = courierPaymentCost;
    final lOther$courierPaymentCost = other.courierPaymentCost;
    if (_$data.containsKey('courierPaymentCost') !=
        other._$data.containsKey('courierPaymentCost')) {
      return false;
    }
    if (l$courierPaymentCost != lOther$courierPaymentCost) {
      return false;
    }
    final l$isPaymentCompleted = isPaymentCompleted;
    final lOther$isPaymentCompleted = other.isPaymentCompleted;
    if (_$data.containsKey('isPaymentCompleted') !=
        other._$data.containsKey('isPaymentCompleted')) {
      return false;
    }
    if (l$isPaymentCompleted != lOther$isPaymentCompleted) {
      return false;
    }
    final l$paymentType = paymentType;
    final lOther$paymentType = other.paymentType;
    if (_$data.containsKey('paymentType') !=
        other._$data.containsKey('paymentType')) {
      return false;
    }
    if (l$paymentType != lOther$paymentType) {
      return false;
    }
    final l$isPrepaidToPartner = isPrepaidToPartner;
    final lOther$isPrepaidToPartner = other.isPrepaidToPartner;
    if (_$data.containsKey('isPrepaidToPartner') !=
        other._$data.containsKey('isPrepaidToPartner')) {
      return false;
    }
    if (l$isPrepaidToPartner != lOther$isPrepaidToPartner) {
      return false;
    }
    final l$orderAmount = orderAmount;
    final lOther$orderAmount = other.orderAmount;
    if (l$orderAmount != lOther$orderAmount) {
      return false;
    }
    final l$fromAddress = fromAddress;
    final lOther$fromAddress = other.fromAddress;
    if (l$fromAddress != lOther$fromAddress) {
      return false;
    }
    final l$fromLongitude = fromLongitude;
    final lOther$fromLongitude = other.fromLongitude;
    if (_$data.containsKey('fromLongitude') !=
        other._$data.containsKey('fromLongitude')) {
      return false;
    }
    if (l$fromLongitude != lOther$fromLongitude) {
      return false;
    }
    final l$fromLatitude = fromLatitude;
    final lOther$fromLatitude = other.fromLatitude;
    if (_$data.containsKey('fromLatitude') !=
        other._$data.containsKey('fromLatitude')) {
      return false;
    }
    if (l$fromLatitude != lOther$fromLatitude) {
      return false;
    }
    final l$toAddress = toAddress;
    final lOther$toAddress = other.toAddress;
    if (l$toAddress != lOther$toAddress) {
      return false;
    }
    final l$toLongitude = toLongitude;
    final lOther$toLongitude = other.toLongitude;
    if (_$data.containsKey('toLongitude') !=
        other._$data.containsKey('toLongitude')) {
      return false;
    }
    if (l$toLongitude != lOther$toLongitude) {
      return false;
    }
    final l$toLatitude = toLatitude;
    final lOther$toLatitude = other.toLatitude;
    if (_$data.containsKey('toLatitude') !=
        other._$data.containsKey('toLatitude')) {
      return false;
    }
    if (l$toLatitude != lOther$toLatitude) {
      return false;
    }
    final l$deliveryDistance = deliveryDistance;
    final lOther$deliveryDistance = other.deliveryDistance;
    if (_$data.containsKey('deliveryDistance') !=
        other._$data.containsKey('deliveryDistance')) {
      return false;
    }
    if (l$deliveryDistance != lOther$deliveryDistance) {
      return false;
    }
    final l$customerComment = customerComment;
    final lOther$customerComment = other.customerComment;
    if (_$data.containsKey('customerComment') !=
        other._$data.containsKey('customerComment')) {
      return false;
    }
    if (l$customerComment != lOther$customerComment) {
      return false;
    }
    final l$organizationId = organizationId;
    final lOther$organizationId = other.organizationId;
    if (l$organizationId != lOther$organizationId) {
      return false;
    }
    final l$organizationServiceOrderId = organizationServiceOrderId;
    final lOther$organizationServiceOrderId = other.organizationServiceOrderId;
    if (_$data.containsKey('organizationServiceOrderId') !=
        other._$data.containsKey('organizationServiceOrderId')) {
      return false;
    }
    if (l$organizationServiceOrderId != lOther$organizationServiceOrderId) {
      return false;
    }
    final l$courierId = courierId;
    final lOther$courierId = other.courierId;
    if (_$data.containsKey('courierId') !=
        other._$data.containsKey('courierId')) {
      return false;
    }
    if (l$courierId != lOther$courierId) {
      return false;
    }
    final l$approximateReadyTime = approximateReadyTime;
    final lOther$approximateReadyTime = other.approximateReadyTime;
    if (_$data.containsKey('approximateReadyTime') !=
        other._$data.containsKey('approximateReadyTime')) {
      return false;
    }
    if (l$approximateReadyTime != lOther$approximateReadyTime) {
      return false;
    }
    final l$deferredTo = deferredTo;
    final lOther$deferredTo = other.deferredTo;
    if (_$data.containsKey('deferredTo') !=
        other._$data.containsKey('deferredTo')) {
      return false;
    }
    if (l$deferredTo != lOther$deferredTo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fromAddressTitle = fromAddressTitle;
    final l$fromAddressPhone = fromAddressPhone;
    final l$toAddressTitle = toAddressTitle;
    final l$toAddressPhone = toAddressPhone;
    final l$status = status;
    final l$orderDescription = orderDescription;
    final l$deliveryCostForPartner = deliveryCostForPartner;
    final l$deliveryCostForCustomer = deliveryCostForCustomer;
    final l$courierPaymentCost = courierPaymentCost;
    final l$isPaymentCompleted = isPaymentCompleted;
    final l$paymentType = paymentType;
    final l$isPrepaidToPartner = isPrepaidToPartner;
    final l$orderAmount = orderAmount;
    final l$fromAddress = fromAddress;
    final l$fromLongitude = fromLongitude;
    final l$fromLatitude = fromLatitude;
    final l$toAddress = toAddress;
    final l$toLongitude = toLongitude;
    final l$toLatitude = toLatitude;
    final l$deliveryDistance = deliveryDistance;
    final l$customerComment = customerComment;
    final l$organizationId = organizationId;
    final l$organizationServiceOrderId = organizationServiceOrderId;
    final l$courierId = courierId;
    final l$approximateReadyTime = approximateReadyTime;
    final l$deferredTo = deferredTo;
    return Object.hashAll([
      _$data.containsKey('fromAddressTitle') ? l$fromAddressTitle : const {},
      _$data.containsKey('fromAddressPhone') ? l$fromAddressPhone : const {},
      _$data.containsKey('toAddressTitle') ? l$toAddressTitle : const {},
      l$toAddressPhone,
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('orderDescription') ? l$orderDescription : const {},
      _$data.containsKey('deliveryCostForPartner')
          ? l$deliveryCostForPartner
          : const {},
      _$data.containsKey('deliveryCostForCustomer')
          ? l$deliveryCostForCustomer
          : const {},
      _$data.containsKey('courierPaymentCost')
          ? l$courierPaymentCost
          : const {},
      _$data.containsKey('isPaymentCompleted')
          ? l$isPaymentCompleted
          : const {},
      _$data.containsKey('paymentType') ? l$paymentType : const {},
      _$data.containsKey('isPrepaidToPartner')
          ? l$isPrepaidToPartner
          : const {},
      l$orderAmount,
      l$fromAddress,
      _$data.containsKey('fromLongitude') ? l$fromLongitude : const {},
      _$data.containsKey('fromLatitude') ? l$fromLatitude : const {},
      l$toAddress,
      _$data.containsKey('toLongitude') ? l$toLongitude : const {},
      _$data.containsKey('toLatitude') ? l$toLatitude : const {},
      _$data.containsKey('deliveryDistance') ? l$deliveryDistance : const {},
      _$data.containsKey('customerComment') ? l$customerComment : const {},
      l$organizationId,
      _$data.containsKey('organizationServiceOrderId')
          ? l$organizationServiceOrderId
          : const {},
      _$data.containsKey('courierId') ? l$courierId : const {},
      _$data.containsKey('approximateReadyTime')
          ? l$approximateReadyTime
          : const {},
      _$data.containsKey('deferredTo') ? l$deferredTo : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateOrderInput<TRes> {
  factory CopyWith$Input$CreateOrderInput(
    Input$CreateOrderInput instance,
    TRes Function(Input$CreateOrderInput) then,
  ) = _CopyWithImpl$Input$CreateOrderInput;

  factory CopyWith$Input$CreateOrderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateOrderInput;

  TRes call({
    String? fromAddressTitle,
    String? fromAddressPhone,
    String? toAddressTitle,
    String? toAddressPhone,
    String? status,
    String? orderDescription,
    int? deliveryCostForPartner,
    int? deliveryCostForCustomer,
    int? courierPaymentCost,
    bool? isPaymentCompleted,
    String? paymentType,
    bool? isPrepaidToPartner,
    double? orderAmount,
    String? fromAddress,
    double? fromLongitude,
    double? fromLatitude,
    String? toAddress,
    double? toLongitude,
    double? toLatitude,
    int? deliveryDistance,
    String? customerComment,
    int? organizationId,
    String? organizationServiceOrderId,
    int? courierId,
    int? approximateReadyTime,
    DateTime? deferredTo,
  });
}

class _CopyWithImpl$Input$CreateOrderInput<TRes>
    implements CopyWith$Input$CreateOrderInput<TRes> {
  _CopyWithImpl$Input$CreateOrderInput(
    this._instance,
    this._then,
  );

  final Input$CreateOrderInput _instance;

  final TRes Function(Input$CreateOrderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? fromAddressTitle = _undefined,
    Object? fromAddressPhone = _undefined,
    Object? toAddressTitle = _undefined,
    Object? toAddressPhone = _undefined,
    Object? status = _undefined,
    Object? orderDescription = _undefined,
    Object? deliveryCostForPartner = _undefined,
    Object? deliveryCostForCustomer = _undefined,
    Object? courierPaymentCost = _undefined,
    Object? isPaymentCompleted = _undefined,
    Object? paymentType = _undefined,
    Object? isPrepaidToPartner = _undefined,
    Object? orderAmount = _undefined,
    Object? fromAddress = _undefined,
    Object? fromLongitude = _undefined,
    Object? fromLatitude = _undefined,
    Object? toAddress = _undefined,
    Object? toLongitude = _undefined,
    Object? toLatitude = _undefined,
    Object? deliveryDistance = _undefined,
    Object? customerComment = _undefined,
    Object? organizationId = _undefined,
    Object? organizationServiceOrderId = _undefined,
    Object? courierId = _undefined,
    Object? approximateReadyTime = _undefined,
    Object? deferredTo = _undefined,
  }) =>
      _then(Input$CreateOrderInput._({
        ..._instance._$data,
        if (fromAddressTitle != _undefined)
          'fromAddressTitle': (fromAddressTitle as String?),
        if (fromAddressPhone != _undefined)
          'fromAddressPhone': (fromAddressPhone as String?),
        if (toAddressTitle != _undefined)
          'toAddressTitle': (toAddressTitle as String?),
        if (toAddressPhone != _undefined && toAddressPhone != null)
          'toAddressPhone': (toAddressPhone as String),
        if (status != _undefined) 'status': (status as String?),
        if (orderDescription != _undefined)
          'orderDescription': (orderDescription as String?),
        if (deliveryCostForPartner != _undefined)
          'deliveryCostForPartner': (deliveryCostForPartner as int?),
        if (deliveryCostForCustomer != _undefined)
          'deliveryCostForCustomer': (deliveryCostForCustomer as int?),
        if (courierPaymentCost != _undefined)
          'courierPaymentCost': (courierPaymentCost as int?),
        if (isPaymentCompleted != _undefined)
          'isPaymentCompleted': (isPaymentCompleted as bool?),
        if (paymentType != _undefined) 'paymentType': (paymentType as String?),
        if (isPrepaidToPartner != _undefined)
          'isPrepaidToPartner': (isPrepaidToPartner as bool?),
        if (orderAmount != _undefined && orderAmount != null)
          'orderAmount': (orderAmount as double),
        if (fromAddress != _undefined && fromAddress != null)
          'fromAddress': (fromAddress as String),
        if (fromLongitude != _undefined)
          'fromLongitude': (fromLongitude as double?),
        if (fromLatitude != _undefined)
          'fromLatitude': (fromLatitude as double?),
        if (toAddress != _undefined && toAddress != null)
          'toAddress': (toAddress as String),
        if (toLongitude != _undefined) 'toLongitude': (toLongitude as double?),
        if (toLatitude != _undefined) 'toLatitude': (toLatitude as double?),
        if (deliveryDistance != _undefined)
          'deliveryDistance': (deliveryDistance as int?),
        if (customerComment != _undefined)
          'customerComment': (customerComment as String?),
        if (organizationId != _undefined && organizationId != null)
          'organizationId': (organizationId as int),
        if (organizationServiceOrderId != _undefined)
          'organizationServiceOrderId': (organizationServiceOrderId as String?),
        if (courierId != _undefined) 'courierId': (courierId as int?),
        if (approximateReadyTime != _undefined)
          'approximateReadyTime': (approximateReadyTime as int?),
        if (deferredTo != _undefined) 'deferredTo': (deferredTo as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$CreateOrderInput<TRes>
    implements CopyWith$Input$CreateOrderInput<TRes> {
  _CopyWithStubImpl$Input$CreateOrderInput(this._res);

  final TRes _res;

  @override
  call({
    String? fromAddressTitle,
    String? fromAddressPhone,
    String? toAddressTitle,
    String? toAddressPhone,
    String? status,
    String? orderDescription,
    int? deliveryCostForPartner,
    int? deliveryCostForCustomer,
    int? courierPaymentCost,
    bool? isPaymentCompleted,
    String? paymentType,
    bool? isPrepaidToPartner,
    double? orderAmount,
    String? fromAddress,
    double? fromLongitude,
    double? fromLatitude,
    String? toAddress,
    double? toLongitude,
    double? toLatitude,
    int? deliveryDistance,
    String? customerComment,
    int? organizationId,
    String? organizationServiceOrderId,
    int? courierId,
    int? approximateReadyTime,
    DateTime? deferredTo,
  }) =>
      _res;
}

class Input$UpdateOrderInput {
  factory Input$UpdateOrderInput({
    int? id,
    String? fromAddressTitle,
    String? toAddressTitle,
    String? toAddressPhone,
    String? status,
    String? orderDescription,
    int? deliveryCostForPartner,
    int? deliveryCostForCustomer,
    int? courierPaymentCost,
    bool? isPaymentCompleted,
    String? paymentType,
    bool? isPrepaidToPartner,
    int? orderAmount,
    String? fromAddress,
    double? fromLongitude,
    double? fromLatitude,
    String? toAddress,
    double? toLongitude,
    double? toLatitude,
    int? deliveryDistance,
    String? customerComment,
    int? organizationId,
    String? organizationServiceOrderId,
    int? courierId,
    int? approximateReadyTime,
    DateTime? orderReadyAt,
    DateTime? orderCanceledAt,
    DateTime? orderPickedAt,
    DateTime? orderDeliveredAt,
    DateTime? courierArrivedAt,
    DateTime? courierPickedAt,
    DateTime? courierDeliveredAt,
    DateTime? courierClosedOrderAt,
  }) =>
      Input$UpdateOrderInput._({
        if (id != null) r'id': id,
        if (fromAddressTitle != null) r'fromAddressTitle': fromAddressTitle,
        if (toAddressTitle != null) r'toAddressTitle': toAddressTitle,
        if (toAddressPhone != null) r'toAddressPhone': toAddressPhone,
        if (status != null) r'status': status,
        if (orderDescription != null) r'orderDescription': orderDescription,
        if (deliveryCostForPartner != null)
          r'deliveryCostForPartner': deliveryCostForPartner,
        if (deliveryCostForCustomer != null)
          r'deliveryCostForCustomer': deliveryCostForCustomer,
        if (courierPaymentCost != null)
          r'courierPaymentCost': courierPaymentCost,
        if (isPaymentCompleted != null)
          r'isPaymentCompleted': isPaymentCompleted,
        if (paymentType != null) r'paymentType': paymentType,
        if (isPrepaidToPartner != null)
          r'isPrepaidToPartner': isPrepaidToPartner,
        if (orderAmount != null) r'orderAmount': orderAmount,
        if (fromAddress != null) r'fromAddress': fromAddress,
        if (fromLongitude != null) r'fromLongitude': fromLongitude,
        if (fromLatitude != null) r'fromLatitude': fromLatitude,
        if (toAddress != null) r'toAddress': toAddress,
        if (toLongitude != null) r'toLongitude': toLongitude,
        if (toLatitude != null) r'toLatitude': toLatitude,
        if (deliveryDistance != null) r'deliveryDistance': deliveryDistance,
        if (customerComment != null) r'customerComment': customerComment,
        if (organizationId != null) r'organizationId': organizationId,
        if (organizationServiceOrderId != null)
          r'organizationServiceOrderId': organizationServiceOrderId,
        if (courierId != null) r'courierId': courierId,
        if (approximateReadyTime != null)
          r'approximateReadyTime': approximateReadyTime,
        if (orderReadyAt != null) r'orderReadyAt': orderReadyAt,
        if (orderCanceledAt != null) r'orderCanceledAt': orderCanceledAt,
        if (orderPickedAt != null) r'orderPickedAt': orderPickedAt,
        if (orderDeliveredAt != null) r'orderDeliveredAt': orderDeliveredAt,
        if (courierArrivedAt != null) r'courierArrivedAt': courierArrivedAt,
        if (courierPickedAt != null) r'courierPickedAt': courierPickedAt,
        if (courierDeliveredAt != null)
          r'courierDeliveredAt': courierDeliveredAt,
        if (courierClosedOrderAt != null)
          r'courierClosedOrderAt': courierClosedOrderAt,
      });

  Input$UpdateOrderInput._(this._$data);

  factory Input$UpdateOrderInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('fromAddressTitle')) {
      final l$fromAddressTitle = data['fromAddressTitle'];
      result$data['fromAddressTitle'] = (l$fromAddressTitle as String?);
    }
    if (data.containsKey('toAddressTitle')) {
      final l$toAddressTitle = data['toAddressTitle'];
      result$data['toAddressTitle'] = (l$toAddressTitle as String?);
    }
    if (data.containsKey('toAddressPhone')) {
      final l$toAddressPhone = data['toAddressPhone'];
      result$data['toAddressPhone'] = (l$toAddressPhone as String?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as String?);
    }
    if (data.containsKey('orderDescription')) {
      final l$orderDescription = data['orderDescription'];
      result$data['orderDescription'] = (l$orderDescription as String?);
    }
    if (data.containsKey('deliveryCostForPartner')) {
      final l$deliveryCostForPartner = data['deliveryCostForPartner'];
      result$data['deliveryCostForPartner'] =
          (l$deliveryCostForPartner as int?);
    }
    if (data.containsKey('deliveryCostForCustomer')) {
      final l$deliveryCostForCustomer = data['deliveryCostForCustomer'];
      result$data['deliveryCostForCustomer'] =
          (l$deliveryCostForCustomer as int?);
    }
    if (data.containsKey('courierPaymentCost')) {
      final l$courierPaymentCost = data['courierPaymentCost'];
      result$data['courierPaymentCost'] = (l$courierPaymentCost as int?);
    }
    if (data.containsKey('isPaymentCompleted')) {
      final l$isPaymentCompleted = data['isPaymentCompleted'];
      result$data['isPaymentCompleted'] = (l$isPaymentCompleted as bool?);
    }
    if (data.containsKey('paymentType')) {
      final l$paymentType = data['paymentType'];
      result$data['paymentType'] = (l$paymentType as String?);
    }
    if (data.containsKey('isPrepaidToPartner')) {
      final l$isPrepaidToPartner = data['isPrepaidToPartner'];
      result$data['isPrepaidToPartner'] = (l$isPrepaidToPartner as bool?);
    }
    if (data.containsKey('orderAmount')) {
      final l$orderAmount = data['orderAmount'];
      result$data['orderAmount'] = (l$orderAmount as int?);
    }
    if (data.containsKey('fromAddress')) {
      final l$fromAddress = data['fromAddress'];
      result$data['fromAddress'] = (l$fromAddress as String?);
    }
    if (data.containsKey('fromLongitude')) {
      final l$fromLongitude = data['fromLongitude'];
      result$data['fromLongitude'] = (l$fromLongitude as num?)?.toDouble();
    }
    if (data.containsKey('fromLatitude')) {
      final l$fromLatitude = data['fromLatitude'];
      result$data['fromLatitude'] = (l$fromLatitude as num?)?.toDouble();
    }
    if (data.containsKey('toAddress')) {
      final l$toAddress = data['toAddress'];
      result$data['toAddress'] = (l$toAddress as String?);
    }
    if (data.containsKey('toLongitude')) {
      final l$toLongitude = data['toLongitude'];
      result$data['toLongitude'] = (l$toLongitude as num?)?.toDouble();
    }
    if (data.containsKey('toLatitude')) {
      final l$toLatitude = data['toLatitude'];
      result$data['toLatitude'] = (l$toLatitude as num?)?.toDouble();
    }
    if (data.containsKey('deliveryDistance')) {
      final l$deliveryDistance = data['deliveryDistance'];
      result$data['deliveryDistance'] = (l$deliveryDistance as int?);
    }
    if (data.containsKey('customerComment')) {
      final l$customerComment = data['customerComment'];
      result$data['customerComment'] = (l$customerComment as String?);
    }
    if (data.containsKey('organizationId')) {
      final l$organizationId = data['organizationId'];
      result$data['organizationId'] = (l$organizationId as int?);
    }
    if (data.containsKey('organizationServiceOrderId')) {
      final l$organizationServiceOrderId = data['organizationServiceOrderId'];
      result$data['organizationServiceOrderId'] =
          (l$organizationServiceOrderId as String?);
    }
    if (data.containsKey('courierId')) {
      final l$courierId = data['courierId'];
      result$data['courierId'] = (l$courierId as int?);
    }
    if (data.containsKey('approximateReadyTime')) {
      final l$approximateReadyTime = data['approximateReadyTime'];
      result$data['approximateReadyTime'] = (l$approximateReadyTime as int?);
    }
    if (data.containsKey('orderReadyAt')) {
      final l$orderReadyAt = data['orderReadyAt'];
      result$data['orderReadyAt'] = l$orderReadyAt == null
          ? null
          : DateTime.parse((l$orderReadyAt as String));
    }
    if (data.containsKey('orderCanceledAt')) {
      final l$orderCanceledAt = data['orderCanceledAt'];
      result$data['orderCanceledAt'] = l$orderCanceledAt == null
          ? null
          : DateTime.parse((l$orderCanceledAt as String));
    }
    if (data.containsKey('orderPickedAt')) {
      final l$orderPickedAt = data['orderPickedAt'];
      result$data['orderPickedAt'] = l$orderPickedAt == null
          ? null
          : DateTime.parse((l$orderPickedAt as String));
    }
    if (data.containsKey('orderDeliveredAt')) {
      final l$orderDeliveredAt = data['orderDeliveredAt'];
      result$data['orderDeliveredAt'] = l$orderDeliveredAt == null
          ? null
          : DateTime.parse((l$orderDeliveredAt as String));
    }
    if (data.containsKey('courierArrivedAt')) {
      final l$courierArrivedAt = data['courierArrivedAt'];
      result$data['courierArrivedAt'] = l$courierArrivedAt == null
          ? null
          : DateTime.parse((l$courierArrivedAt as String));
    }
    if (data.containsKey('courierPickedAt')) {
      final l$courierPickedAt = data['courierPickedAt'];
      result$data['courierPickedAt'] = l$courierPickedAt == null
          ? null
          : DateTime.parse((l$courierPickedAt as String));
    }
    if (data.containsKey('courierDeliveredAt')) {
      final l$courierDeliveredAt = data['courierDeliveredAt'];
      result$data['courierDeliveredAt'] = l$courierDeliveredAt == null
          ? null
          : DateTime.parse((l$courierDeliveredAt as String));
    }
    if (data.containsKey('courierClosedOrderAt')) {
      final l$courierClosedOrderAt = data['courierClosedOrderAt'];
      result$data['courierClosedOrderAt'] = l$courierClosedOrderAt == null
          ? null
          : DateTime.parse((l$courierClosedOrderAt as String));
    }
    return Input$UpdateOrderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);
  String? get fromAddressTitle => (_$data['fromAddressTitle'] as String?);
  String? get toAddressTitle => (_$data['toAddressTitle'] as String?);
  String? get toAddressPhone => (_$data['toAddressPhone'] as String?);
  String? get status => (_$data['status'] as String?);
  String? get orderDescription => (_$data['orderDescription'] as String?);
  int? get deliveryCostForPartner => (_$data['deliveryCostForPartner'] as int?);
  int? get deliveryCostForCustomer =>
      (_$data['deliveryCostForCustomer'] as int?);
  int? get courierPaymentCost => (_$data['courierPaymentCost'] as int?);
  bool? get isPaymentCompleted => (_$data['isPaymentCompleted'] as bool?);
  String? get paymentType => (_$data['paymentType'] as String?);
  bool? get isPrepaidToPartner => (_$data['isPrepaidToPartner'] as bool?);
  int? get orderAmount => (_$data['orderAmount'] as int?);
  String? get fromAddress => (_$data['fromAddress'] as String?);
  double? get fromLongitude => (_$data['fromLongitude'] as double?);
  double? get fromLatitude => (_$data['fromLatitude'] as double?);
  String? get toAddress => (_$data['toAddress'] as String?);
  double? get toLongitude => (_$data['toLongitude'] as double?);
  double? get toLatitude => (_$data['toLatitude'] as double?);
  int? get deliveryDistance => (_$data['deliveryDistance'] as int?);
  String? get customerComment => (_$data['customerComment'] as String?);
  int? get organizationId => (_$data['organizationId'] as int?);
  String? get organizationServiceOrderId =>
      (_$data['organizationServiceOrderId'] as String?);
  int? get courierId => (_$data['courierId'] as int?);
  int? get approximateReadyTime => (_$data['approximateReadyTime'] as int?);
  DateTime? get orderReadyAt => (_$data['orderReadyAt'] as DateTime?);
  DateTime? get orderCanceledAt => (_$data['orderCanceledAt'] as DateTime?);
  DateTime? get orderPickedAt => (_$data['orderPickedAt'] as DateTime?);
  DateTime? get orderDeliveredAt => (_$data['orderDeliveredAt'] as DateTime?);
  DateTime? get courierArrivedAt => (_$data['courierArrivedAt'] as DateTime?);
  DateTime? get courierPickedAt => (_$data['courierPickedAt'] as DateTime?);
  DateTime? get courierDeliveredAt =>
      (_$data['courierDeliveredAt'] as DateTime?);
  DateTime? get courierClosedOrderAt =>
      (_$data['courierClosedOrderAt'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('fromAddressTitle')) {
      final l$fromAddressTitle = fromAddressTitle;
      result$data['fromAddressTitle'] = l$fromAddressTitle;
    }
    if (_$data.containsKey('toAddressTitle')) {
      final l$toAddressTitle = toAddressTitle;
      result$data['toAddressTitle'] = l$toAddressTitle;
    }
    if (_$data.containsKey('toAddressPhone')) {
      final l$toAddressPhone = toAddressPhone;
      result$data['toAddressPhone'] = l$toAddressPhone;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    if (_$data.containsKey('orderDescription')) {
      final l$orderDescription = orderDescription;
      result$data['orderDescription'] = l$orderDescription;
    }
    if (_$data.containsKey('deliveryCostForPartner')) {
      final l$deliveryCostForPartner = deliveryCostForPartner;
      result$data['deliveryCostForPartner'] = l$deliveryCostForPartner;
    }
    if (_$data.containsKey('deliveryCostForCustomer')) {
      final l$deliveryCostForCustomer = deliveryCostForCustomer;
      result$data['deliveryCostForCustomer'] = l$deliveryCostForCustomer;
    }
    if (_$data.containsKey('courierPaymentCost')) {
      final l$courierPaymentCost = courierPaymentCost;
      result$data['courierPaymentCost'] = l$courierPaymentCost;
    }
    if (_$data.containsKey('isPaymentCompleted')) {
      final l$isPaymentCompleted = isPaymentCompleted;
      result$data['isPaymentCompleted'] = l$isPaymentCompleted;
    }
    if (_$data.containsKey('paymentType')) {
      final l$paymentType = paymentType;
      result$data['paymentType'] = l$paymentType;
    }
    if (_$data.containsKey('isPrepaidToPartner')) {
      final l$isPrepaidToPartner = isPrepaidToPartner;
      result$data['isPrepaidToPartner'] = l$isPrepaidToPartner;
    }
    if (_$data.containsKey('orderAmount')) {
      final l$orderAmount = orderAmount;
      result$data['orderAmount'] = l$orderAmount;
    }
    if (_$data.containsKey('fromAddress')) {
      final l$fromAddress = fromAddress;
      result$data['fromAddress'] = l$fromAddress;
    }
    if (_$data.containsKey('fromLongitude')) {
      final l$fromLongitude = fromLongitude;
      result$data['fromLongitude'] = l$fromLongitude;
    }
    if (_$data.containsKey('fromLatitude')) {
      final l$fromLatitude = fromLatitude;
      result$data['fromLatitude'] = l$fromLatitude;
    }
    if (_$data.containsKey('toAddress')) {
      final l$toAddress = toAddress;
      result$data['toAddress'] = l$toAddress;
    }
    if (_$data.containsKey('toLongitude')) {
      final l$toLongitude = toLongitude;
      result$data['toLongitude'] = l$toLongitude;
    }
    if (_$data.containsKey('toLatitude')) {
      final l$toLatitude = toLatitude;
      result$data['toLatitude'] = l$toLatitude;
    }
    if (_$data.containsKey('deliveryDistance')) {
      final l$deliveryDistance = deliveryDistance;
      result$data['deliveryDistance'] = l$deliveryDistance;
    }
    if (_$data.containsKey('customerComment')) {
      final l$customerComment = customerComment;
      result$data['customerComment'] = l$customerComment;
    }
    if (_$data.containsKey('organizationId')) {
      final l$organizationId = organizationId;
      result$data['organizationId'] = l$organizationId;
    }
    if (_$data.containsKey('organizationServiceOrderId')) {
      final l$organizationServiceOrderId = organizationServiceOrderId;
      result$data['organizationServiceOrderId'] = l$organizationServiceOrderId;
    }
    if (_$data.containsKey('courierId')) {
      final l$courierId = courierId;
      result$data['courierId'] = l$courierId;
    }
    if (_$data.containsKey('approximateReadyTime')) {
      final l$approximateReadyTime = approximateReadyTime;
      result$data['approximateReadyTime'] = l$approximateReadyTime;
    }
    if (_$data.containsKey('orderReadyAt')) {
      final l$orderReadyAt = orderReadyAt;
      result$data['orderReadyAt'] = l$orderReadyAt?.toIso8601String();
    }
    if (_$data.containsKey('orderCanceledAt')) {
      final l$orderCanceledAt = orderCanceledAt;
      result$data['orderCanceledAt'] = l$orderCanceledAt?.toIso8601String();
    }
    if (_$data.containsKey('orderPickedAt')) {
      final l$orderPickedAt = orderPickedAt;
      result$data['orderPickedAt'] = l$orderPickedAt?.toIso8601String();
    }
    if (_$data.containsKey('orderDeliveredAt')) {
      final l$orderDeliveredAt = orderDeliveredAt;
      result$data['orderDeliveredAt'] = l$orderDeliveredAt?.toIso8601String();
    }
    if (_$data.containsKey('courierArrivedAt')) {
      final l$courierArrivedAt = courierArrivedAt;
      result$data['courierArrivedAt'] = l$courierArrivedAt?.toIso8601String();
    }
    if (_$data.containsKey('courierPickedAt')) {
      final l$courierPickedAt = courierPickedAt;
      result$data['courierPickedAt'] = l$courierPickedAt?.toIso8601String();
    }
    if (_$data.containsKey('courierDeliveredAt')) {
      final l$courierDeliveredAt = courierDeliveredAt;
      result$data['courierDeliveredAt'] =
          l$courierDeliveredAt?.toIso8601String();
    }
    if (_$data.containsKey('courierClosedOrderAt')) {
      final l$courierClosedOrderAt = courierClosedOrderAt;
      result$data['courierClosedOrderAt'] =
          l$courierClosedOrderAt?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$UpdateOrderInput<Input$UpdateOrderInput> get copyWith =>
      CopyWith$Input$UpdateOrderInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateOrderInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$fromAddressTitle = fromAddressTitle;
    final lOther$fromAddressTitle = other.fromAddressTitle;
    if (_$data.containsKey('fromAddressTitle') !=
        other._$data.containsKey('fromAddressTitle')) {
      return false;
    }
    if (l$fromAddressTitle != lOther$fromAddressTitle) {
      return false;
    }
    final l$toAddressTitle = toAddressTitle;
    final lOther$toAddressTitle = other.toAddressTitle;
    if (_$data.containsKey('toAddressTitle') !=
        other._$data.containsKey('toAddressTitle')) {
      return false;
    }
    if (l$toAddressTitle != lOther$toAddressTitle) {
      return false;
    }
    final l$toAddressPhone = toAddressPhone;
    final lOther$toAddressPhone = other.toAddressPhone;
    if (_$data.containsKey('toAddressPhone') !=
        other._$data.containsKey('toAddressPhone')) {
      return false;
    }
    if (l$toAddressPhone != lOther$toAddressPhone) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$orderDescription = orderDescription;
    final lOther$orderDescription = other.orderDescription;
    if (_$data.containsKey('orderDescription') !=
        other._$data.containsKey('orderDescription')) {
      return false;
    }
    if (l$orderDescription != lOther$orderDescription) {
      return false;
    }
    final l$deliveryCostForPartner = deliveryCostForPartner;
    final lOther$deliveryCostForPartner = other.deliveryCostForPartner;
    if (_$data.containsKey('deliveryCostForPartner') !=
        other._$data.containsKey('deliveryCostForPartner')) {
      return false;
    }
    if (l$deliveryCostForPartner != lOther$deliveryCostForPartner) {
      return false;
    }
    final l$deliveryCostForCustomer = deliveryCostForCustomer;
    final lOther$deliveryCostForCustomer = other.deliveryCostForCustomer;
    if (_$data.containsKey('deliveryCostForCustomer') !=
        other._$data.containsKey('deliveryCostForCustomer')) {
      return false;
    }
    if (l$deliveryCostForCustomer != lOther$deliveryCostForCustomer) {
      return false;
    }
    final l$courierPaymentCost = courierPaymentCost;
    final lOther$courierPaymentCost = other.courierPaymentCost;
    if (_$data.containsKey('courierPaymentCost') !=
        other._$data.containsKey('courierPaymentCost')) {
      return false;
    }
    if (l$courierPaymentCost != lOther$courierPaymentCost) {
      return false;
    }
    final l$isPaymentCompleted = isPaymentCompleted;
    final lOther$isPaymentCompleted = other.isPaymentCompleted;
    if (_$data.containsKey('isPaymentCompleted') !=
        other._$data.containsKey('isPaymentCompleted')) {
      return false;
    }
    if (l$isPaymentCompleted != lOther$isPaymentCompleted) {
      return false;
    }
    final l$paymentType = paymentType;
    final lOther$paymentType = other.paymentType;
    if (_$data.containsKey('paymentType') !=
        other._$data.containsKey('paymentType')) {
      return false;
    }
    if (l$paymentType != lOther$paymentType) {
      return false;
    }
    final l$isPrepaidToPartner = isPrepaidToPartner;
    final lOther$isPrepaidToPartner = other.isPrepaidToPartner;
    if (_$data.containsKey('isPrepaidToPartner') !=
        other._$data.containsKey('isPrepaidToPartner')) {
      return false;
    }
    if (l$isPrepaidToPartner != lOther$isPrepaidToPartner) {
      return false;
    }
    final l$orderAmount = orderAmount;
    final lOther$orderAmount = other.orderAmount;
    if (_$data.containsKey('orderAmount') !=
        other._$data.containsKey('orderAmount')) {
      return false;
    }
    if (l$orderAmount != lOther$orderAmount) {
      return false;
    }
    final l$fromAddress = fromAddress;
    final lOther$fromAddress = other.fromAddress;
    if (_$data.containsKey('fromAddress') !=
        other._$data.containsKey('fromAddress')) {
      return false;
    }
    if (l$fromAddress != lOther$fromAddress) {
      return false;
    }
    final l$fromLongitude = fromLongitude;
    final lOther$fromLongitude = other.fromLongitude;
    if (_$data.containsKey('fromLongitude') !=
        other._$data.containsKey('fromLongitude')) {
      return false;
    }
    if (l$fromLongitude != lOther$fromLongitude) {
      return false;
    }
    final l$fromLatitude = fromLatitude;
    final lOther$fromLatitude = other.fromLatitude;
    if (_$data.containsKey('fromLatitude') !=
        other._$data.containsKey('fromLatitude')) {
      return false;
    }
    if (l$fromLatitude != lOther$fromLatitude) {
      return false;
    }
    final l$toAddress = toAddress;
    final lOther$toAddress = other.toAddress;
    if (_$data.containsKey('toAddress') !=
        other._$data.containsKey('toAddress')) {
      return false;
    }
    if (l$toAddress != lOther$toAddress) {
      return false;
    }
    final l$toLongitude = toLongitude;
    final lOther$toLongitude = other.toLongitude;
    if (_$data.containsKey('toLongitude') !=
        other._$data.containsKey('toLongitude')) {
      return false;
    }
    if (l$toLongitude != lOther$toLongitude) {
      return false;
    }
    final l$toLatitude = toLatitude;
    final lOther$toLatitude = other.toLatitude;
    if (_$data.containsKey('toLatitude') !=
        other._$data.containsKey('toLatitude')) {
      return false;
    }
    if (l$toLatitude != lOther$toLatitude) {
      return false;
    }
    final l$deliveryDistance = deliveryDistance;
    final lOther$deliveryDistance = other.deliveryDistance;
    if (_$data.containsKey('deliveryDistance') !=
        other._$data.containsKey('deliveryDistance')) {
      return false;
    }
    if (l$deliveryDistance != lOther$deliveryDistance) {
      return false;
    }
    final l$customerComment = customerComment;
    final lOther$customerComment = other.customerComment;
    if (_$data.containsKey('customerComment') !=
        other._$data.containsKey('customerComment')) {
      return false;
    }
    if (l$customerComment != lOther$customerComment) {
      return false;
    }
    final l$organizationId = organizationId;
    final lOther$organizationId = other.organizationId;
    if (_$data.containsKey('organizationId') !=
        other._$data.containsKey('organizationId')) {
      return false;
    }
    if (l$organizationId != lOther$organizationId) {
      return false;
    }
    final l$organizationServiceOrderId = organizationServiceOrderId;
    final lOther$organizationServiceOrderId = other.organizationServiceOrderId;
    if (_$data.containsKey('organizationServiceOrderId') !=
        other._$data.containsKey('organizationServiceOrderId')) {
      return false;
    }
    if (l$organizationServiceOrderId != lOther$organizationServiceOrderId) {
      return false;
    }
    final l$courierId = courierId;
    final lOther$courierId = other.courierId;
    if (_$data.containsKey('courierId') !=
        other._$data.containsKey('courierId')) {
      return false;
    }
    if (l$courierId != lOther$courierId) {
      return false;
    }
    final l$approximateReadyTime = approximateReadyTime;
    final lOther$approximateReadyTime = other.approximateReadyTime;
    if (_$data.containsKey('approximateReadyTime') !=
        other._$data.containsKey('approximateReadyTime')) {
      return false;
    }
    if (l$approximateReadyTime != lOther$approximateReadyTime) {
      return false;
    }
    final l$orderReadyAt = orderReadyAt;
    final lOther$orderReadyAt = other.orderReadyAt;
    if (_$data.containsKey('orderReadyAt') !=
        other._$data.containsKey('orderReadyAt')) {
      return false;
    }
    if (l$orderReadyAt != lOther$orderReadyAt) {
      return false;
    }
    final l$orderCanceledAt = orderCanceledAt;
    final lOther$orderCanceledAt = other.orderCanceledAt;
    if (_$data.containsKey('orderCanceledAt') !=
        other._$data.containsKey('orderCanceledAt')) {
      return false;
    }
    if (l$orderCanceledAt != lOther$orderCanceledAt) {
      return false;
    }
    final l$orderPickedAt = orderPickedAt;
    final lOther$orderPickedAt = other.orderPickedAt;
    if (_$data.containsKey('orderPickedAt') !=
        other._$data.containsKey('orderPickedAt')) {
      return false;
    }
    if (l$orderPickedAt != lOther$orderPickedAt) {
      return false;
    }
    final l$orderDeliveredAt = orderDeliveredAt;
    final lOther$orderDeliveredAt = other.orderDeliveredAt;
    if (_$data.containsKey('orderDeliveredAt') !=
        other._$data.containsKey('orderDeliveredAt')) {
      return false;
    }
    if (l$orderDeliveredAt != lOther$orderDeliveredAt) {
      return false;
    }
    final l$courierArrivedAt = courierArrivedAt;
    final lOther$courierArrivedAt = other.courierArrivedAt;
    if (_$data.containsKey('courierArrivedAt') !=
        other._$data.containsKey('courierArrivedAt')) {
      return false;
    }
    if (l$courierArrivedAt != lOther$courierArrivedAt) {
      return false;
    }
    final l$courierPickedAt = courierPickedAt;
    final lOther$courierPickedAt = other.courierPickedAt;
    if (_$data.containsKey('courierPickedAt') !=
        other._$data.containsKey('courierPickedAt')) {
      return false;
    }
    if (l$courierPickedAt != lOther$courierPickedAt) {
      return false;
    }
    final l$courierDeliveredAt = courierDeliveredAt;
    final lOther$courierDeliveredAt = other.courierDeliveredAt;
    if (_$data.containsKey('courierDeliveredAt') !=
        other._$data.containsKey('courierDeliveredAt')) {
      return false;
    }
    if (l$courierDeliveredAt != lOther$courierDeliveredAt) {
      return false;
    }
    final l$courierClosedOrderAt = courierClosedOrderAt;
    final lOther$courierClosedOrderAt = other.courierClosedOrderAt;
    if (_$data.containsKey('courierClosedOrderAt') !=
        other._$data.containsKey('courierClosedOrderAt')) {
      return false;
    }
    if (l$courierClosedOrderAt != lOther$courierClosedOrderAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$fromAddressTitle = fromAddressTitle;
    final l$toAddressTitle = toAddressTitle;
    final l$toAddressPhone = toAddressPhone;
    final l$status = status;
    final l$orderDescription = orderDescription;
    final l$deliveryCostForPartner = deliveryCostForPartner;
    final l$deliveryCostForCustomer = deliveryCostForCustomer;
    final l$courierPaymentCost = courierPaymentCost;
    final l$isPaymentCompleted = isPaymentCompleted;
    final l$paymentType = paymentType;
    final l$isPrepaidToPartner = isPrepaidToPartner;
    final l$orderAmount = orderAmount;
    final l$fromAddress = fromAddress;
    final l$fromLongitude = fromLongitude;
    final l$fromLatitude = fromLatitude;
    final l$toAddress = toAddress;
    final l$toLongitude = toLongitude;
    final l$toLatitude = toLatitude;
    final l$deliveryDistance = deliveryDistance;
    final l$customerComment = customerComment;
    final l$organizationId = organizationId;
    final l$organizationServiceOrderId = organizationServiceOrderId;
    final l$courierId = courierId;
    final l$approximateReadyTime = approximateReadyTime;
    final l$orderReadyAt = orderReadyAt;
    final l$orderCanceledAt = orderCanceledAt;
    final l$orderPickedAt = orderPickedAt;
    final l$orderDeliveredAt = orderDeliveredAt;
    final l$courierArrivedAt = courierArrivedAt;
    final l$courierPickedAt = courierPickedAt;
    final l$courierDeliveredAt = courierDeliveredAt;
    final l$courierClosedOrderAt = courierClosedOrderAt;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('fromAddressTitle') ? l$fromAddressTitle : const {},
      _$data.containsKey('toAddressTitle') ? l$toAddressTitle : const {},
      _$data.containsKey('toAddressPhone') ? l$toAddressPhone : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('orderDescription') ? l$orderDescription : const {},
      _$data.containsKey('deliveryCostForPartner')
          ? l$deliveryCostForPartner
          : const {},
      _$data.containsKey('deliveryCostForCustomer')
          ? l$deliveryCostForCustomer
          : const {},
      _$data.containsKey('courierPaymentCost')
          ? l$courierPaymentCost
          : const {},
      _$data.containsKey('isPaymentCompleted')
          ? l$isPaymentCompleted
          : const {},
      _$data.containsKey('paymentType') ? l$paymentType : const {},
      _$data.containsKey('isPrepaidToPartner')
          ? l$isPrepaidToPartner
          : const {},
      _$data.containsKey('orderAmount') ? l$orderAmount : const {},
      _$data.containsKey('fromAddress') ? l$fromAddress : const {},
      _$data.containsKey('fromLongitude') ? l$fromLongitude : const {},
      _$data.containsKey('fromLatitude') ? l$fromLatitude : const {},
      _$data.containsKey('toAddress') ? l$toAddress : const {},
      _$data.containsKey('toLongitude') ? l$toLongitude : const {},
      _$data.containsKey('toLatitude') ? l$toLatitude : const {},
      _$data.containsKey('deliveryDistance') ? l$deliveryDistance : const {},
      _$data.containsKey('customerComment') ? l$customerComment : const {},
      _$data.containsKey('organizationId') ? l$organizationId : const {},
      _$data.containsKey('organizationServiceOrderId')
          ? l$organizationServiceOrderId
          : const {},
      _$data.containsKey('courierId') ? l$courierId : const {},
      _$data.containsKey('approximateReadyTime')
          ? l$approximateReadyTime
          : const {},
      _$data.containsKey('orderReadyAt') ? l$orderReadyAt : const {},
      _$data.containsKey('orderCanceledAt') ? l$orderCanceledAt : const {},
      _$data.containsKey('orderPickedAt') ? l$orderPickedAt : const {},
      _$data.containsKey('orderDeliveredAt') ? l$orderDeliveredAt : const {},
      _$data.containsKey('courierArrivedAt') ? l$courierArrivedAt : const {},
      _$data.containsKey('courierPickedAt') ? l$courierPickedAt : const {},
      _$data.containsKey('courierDeliveredAt')
          ? l$courierDeliveredAt
          : const {},
      _$data.containsKey('courierClosedOrderAt')
          ? l$courierClosedOrderAt
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateOrderInput<TRes> {
  factory CopyWith$Input$UpdateOrderInput(
    Input$UpdateOrderInput instance,
    TRes Function(Input$UpdateOrderInput) then,
  ) = _CopyWithImpl$Input$UpdateOrderInput;

  factory CopyWith$Input$UpdateOrderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOrderInput;

  TRes call({
    int? id,
    String? fromAddressTitle,
    String? toAddressTitle,
    String? toAddressPhone,
    String? status,
    String? orderDescription,
    int? deliveryCostForPartner,
    int? deliveryCostForCustomer,
    int? courierPaymentCost,
    bool? isPaymentCompleted,
    String? paymentType,
    bool? isPrepaidToPartner,
    int? orderAmount,
    String? fromAddress,
    double? fromLongitude,
    double? fromLatitude,
    String? toAddress,
    double? toLongitude,
    double? toLatitude,
    int? deliveryDistance,
    String? customerComment,
    int? organizationId,
    String? organizationServiceOrderId,
    int? courierId,
    int? approximateReadyTime,
    DateTime? orderReadyAt,
    DateTime? orderCanceledAt,
    DateTime? orderPickedAt,
    DateTime? orderDeliveredAt,
    DateTime? courierArrivedAt,
    DateTime? courierPickedAt,
    DateTime? courierDeliveredAt,
    DateTime? courierClosedOrderAt,
  });
}

class _CopyWithImpl$Input$UpdateOrderInput<TRes>
    implements CopyWith$Input$UpdateOrderInput<TRes> {
  _CopyWithImpl$Input$UpdateOrderInput(
    this._instance,
    this._then,
  );

  final Input$UpdateOrderInput _instance;

  final TRes Function(Input$UpdateOrderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? fromAddressTitle = _undefined,
    Object? toAddressTitle = _undefined,
    Object? toAddressPhone = _undefined,
    Object? status = _undefined,
    Object? orderDescription = _undefined,
    Object? deliveryCostForPartner = _undefined,
    Object? deliveryCostForCustomer = _undefined,
    Object? courierPaymentCost = _undefined,
    Object? isPaymentCompleted = _undefined,
    Object? paymentType = _undefined,
    Object? isPrepaidToPartner = _undefined,
    Object? orderAmount = _undefined,
    Object? fromAddress = _undefined,
    Object? fromLongitude = _undefined,
    Object? fromLatitude = _undefined,
    Object? toAddress = _undefined,
    Object? toLongitude = _undefined,
    Object? toLatitude = _undefined,
    Object? deliveryDistance = _undefined,
    Object? customerComment = _undefined,
    Object? organizationId = _undefined,
    Object? organizationServiceOrderId = _undefined,
    Object? courierId = _undefined,
    Object? approximateReadyTime = _undefined,
    Object? orderReadyAt = _undefined,
    Object? orderCanceledAt = _undefined,
    Object? orderPickedAt = _undefined,
    Object? orderDeliveredAt = _undefined,
    Object? courierArrivedAt = _undefined,
    Object? courierPickedAt = _undefined,
    Object? courierDeliveredAt = _undefined,
    Object? courierClosedOrderAt = _undefined,
  }) =>
      _then(Input$UpdateOrderInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (fromAddressTitle != _undefined)
          'fromAddressTitle': (fromAddressTitle as String?),
        if (toAddressTitle != _undefined)
          'toAddressTitle': (toAddressTitle as String?),
        if (toAddressPhone != _undefined)
          'toAddressPhone': (toAddressPhone as String?),
        if (status != _undefined) 'status': (status as String?),
        if (orderDescription != _undefined)
          'orderDescription': (orderDescription as String?),
        if (deliveryCostForPartner != _undefined)
          'deliveryCostForPartner': (deliveryCostForPartner as int?),
        if (deliveryCostForCustomer != _undefined)
          'deliveryCostForCustomer': (deliveryCostForCustomer as int?),
        if (courierPaymentCost != _undefined)
          'courierPaymentCost': (courierPaymentCost as int?),
        if (isPaymentCompleted != _undefined)
          'isPaymentCompleted': (isPaymentCompleted as bool?),
        if (paymentType != _undefined) 'paymentType': (paymentType as String?),
        if (isPrepaidToPartner != _undefined)
          'isPrepaidToPartner': (isPrepaidToPartner as bool?),
        if (orderAmount != _undefined) 'orderAmount': (orderAmount as int?),
        if (fromAddress != _undefined) 'fromAddress': (fromAddress as String?),
        if (fromLongitude != _undefined)
          'fromLongitude': (fromLongitude as double?),
        if (fromLatitude != _undefined)
          'fromLatitude': (fromLatitude as double?),
        if (toAddress != _undefined) 'toAddress': (toAddress as String?),
        if (toLongitude != _undefined) 'toLongitude': (toLongitude as double?),
        if (toLatitude != _undefined) 'toLatitude': (toLatitude as double?),
        if (deliveryDistance != _undefined)
          'deliveryDistance': (deliveryDistance as int?),
        if (customerComment != _undefined)
          'customerComment': (customerComment as String?),
        if (organizationId != _undefined)
          'organizationId': (organizationId as int?),
        if (organizationServiceOrderId != _undefined)
          'organizationServiceOrderId': (organizationServiceOrderId as String?),
        if (courierId != _undefined) 'courierId': (courierId as int?),
        if (approximateReadyTime != _undefined)
          'approximateReadyTime': (approximateReadyTime as int?),
        if (orderReadyAt != _undefined)
          'orderReadyAt': (orderReadyAt as DateTime?),
        if (orderCanceledAt != _undefined)
          'orderCanceledAt': (orderCanceledAt as DateTime?),
        if (orderPickedAt != _undefined)
          'orderPickedAt': (orderPickedAt as DateTime?),
        if (orderDeliveredAt != _undefined)
          'orderDeliveredAt': (orderDeliveredAt as DateTime?),
        if (courierArrivedAt != _undefined)
          'courierArrivedAt': (courierArrivedAt as DateTime?),
        if (courierPickedAt != _undefined)
          'courierPickedAt': (courierPickedAt as DateTime?),
        if (courierDeliveredAt != _undefined)
          'courierDeliveredAt': (courierDeliveredAt as DateTime?),
        if (courierClosedOrderAt != _undefined)
          'courierClosedOrderAt': (courierClosedOrderAt as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$UpdateOrderInput<TRes>
    implements CopyWith$Input$UpdateOrderInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOrderInput(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    String? fromAddressTitle,
    String? toAddressTitle,
    String? toAddressPhone,
    String? status,
    String? orderDescription,
    int? deliveryCostForPartner,
    int? deliveryCostForCustomer,
    int? courierPaymentCost,
    bool? isPaymentCompleted,
    String? paymentType,
    bool? isPrepaidToPartner,
    int? orderAmount,
    String? fromAddress,
    double? fromLongitude,
    double? fromLatitude,
    String? toAddress,
    double? toLongitude,
    double? toLatitude,
    int? deliveryDistance,
    String? customerComment,
    int? organizationId,
    String? organizationServiceOrderId,
    int? courierId,
    int? approximateReadyTime,
    DateTime? orderReadyAt,
    DateTime? orderCanceledAt,
    DateTime? orderPickedAt,
    DateTime? orderDeliveredAt,
    DateTime? courierArrivedAt,
    DateTime? courierPickedAt,
    DateTime? courierDeliveredAt,
    DateTime? courierClosedOrderAt,
  }) =>
      _res;
}

class Input$PartnerUpdateOrderInput {
  factory Input$PartnerUpdateOrderInput({
    int? id,
    String? status,
  }) =>
      Input$PartnerUpdateOrderInput._({
        if (id != null) r'id': id,
        if (status != null) r'status': status,
      });

  Input$PartnerUpdateOrderInput._(this._$data);

  factory Input$PartnerUpdateOrderInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = (l$status as String?);
    }
    return Input$PartnerUpdateOrderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);
  String? get status => (_$data['status'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status;
    }
    return result$data;
  }

  CopyWith$Input$PartnerUpdateOrderInput<Input$PartnerUpdateOrderInput>
      get copyWith => CopyWith$Input$PartnerUpdateOrderInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PartnerUpdateOrderInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
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
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('status') ? l$status : const {},
    ]);
  }
}

abstract class CopyWith$Input$PartnerUpdateOrderInput<TRes> {
  factory CopyWith$Input$PartnerUpdateOrderInput(
    Input$PartnerUpdateOrderInput instance,
    TRes Function(Input$PartnerUpdateOrderInput) then,
  ) = _CopyWithImpl$Input$PartnerUpdateOrderInput;

  factory CopyWith$Input$PartnerUpdateOrderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PartnerUpdateOrderInput;

  TRes call({
    int? id,
    String? status,
  });
}

class _CopyWithImpl$Input$PartnerUpdateOrderInput<TRes>
    implements CopyWith$Input$PartnerUpdateOrderInput<TRes> {
  _CopyWithImpl$Input$PartnerUpdateOrderInput(
    this._instance,
    this._then,
  );

  final Input$PartnerUpdateOrderInput _instance;

  final TRes Function(Input$PartnerUpdateOrderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
  }) =>
      _then(Input$PartnerUpdateOrderInput._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (status != _undefined) 'status': (status as String?),
      }));
}

class _CopyWithStubImpl$Input$PartnerUpdateOrderInput<TRes>
    implements CopyWith$Input$PartnerUpdateOrderInput<TRes> {
  _CopyWithStubImpl$Input$PartnerUpdateOrderInput(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    String? status,
  }) =>
      _res;
}

class Input$CreateCourierTariffInput {
  factory Input$CreateCourierTariffInput({
    required String name,
    String? description,
    double? loadCost,
    double? unloadCost,
    double? distanceCost,
    bool? isActive,
  }) =>
      Input$CreateCourierTariffInput._({
        r'name': name,
        if (description != null) r'description': description,
        if (loadCost != null) r'loadCost': loadCost,
        if (unloadCost != null) r'unloadCost': unloadCost,
        if (distanceCost != null) r'distanceCost': distanceCost,
        if (isActive != null) r'isActive': isActive,
      });

  Input$CreateCourierTariffInput._(this._$data);

  factory Input$CreateCourierTariffInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('loadCost')) {
      final l$loadCost = data['loadCost'];
      result$data['loadCost'] = (l$loadCost as num?)?.toDouble();
    }
    if (data.containsKey('unloadCost')) {
      final l$unloadCost = data['unloadCost'];
      result$data['unloadCost'] = (l$unloadCost as num?)?.toDouble();
    }
    if (data.containsKey('distanceCost')) {
      final l$distanceCost = data['distanceCost'];
      result$data['distanceCost'] = (l$distanceCost as num?)?.toDouble();
    }
    if (data.containsKey('isActive')) {
      final l$isActive = data['isActive'];
      result$data['isActive'] = (l$isActive as bool?);
    }
    return Input$CreateCourierTariffInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  String? get description => (_$data['description'] as String?);
  double? get loadCost => (_$data['loadCost'] as double?);
  double? get unloadCost => (_$data['unloadCost'] as double?);
  double? get distanceCost => (_$data['distanceCost'] as double?);
  bool? get isActive => (_$data['isActive'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('loadCost')) {
      final l$loadCost = loadCost;
      result$data['loadCost'] = l$loadCost;
    }
    if (_$data.containsKey('unloadCost')) {
      final l$unloadCost = unloadCost;
      result$data['unloadCost'] = l$unloadCost;
    }
    if (_$data.containsKey('distanceCost')) {
      final l$distanceCost = distanceCost;
      result$data['distanceCost'] = l$distanceCost;
    }
    if (_$data.containsKey('isActive')) {
      final l$isActive = isActive;
      result$data['isActive'] = l$isActive;
    }
    return result$data;
  }

  CopyWith$Input$CreateCourierTariffInput<Input$CreateCourierTariffInput>
      get copyWith => CopyWith$Input$CreateCourierTariffInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateCourierTariffInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$loadCost = loadCost;
    final lOther$loadCost = other.loadCost;
    if (_$data.containsKey('loadCost') !=
        other._$data.containsKey('loadCost')) {
      return false;
    }
    if (l$loadCost != lOther$loadCost) {
      return false;
    }
    final l$unloadCost = unloadCost;
    final lOther$unloadCost = other.unloadCost;
    if (_$data.containsKey('unloadCost') !=
        other._$data.containsKey('unloadCost')) {
      return false;
    }
    if (l$unloadCost != lOther$unloadCost) {
      return false;
    }
    final l$distanceCost = distanceCost;
    final lOther$distanceCost = other.distanceCost;
    if (_$data.containsKey('distanceCost') !=
        other._$data.containsKey('distanceCost')) {
      return false;
    }
    if (l$distanceCost != lOther$distanceCost) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    final l$loadCost = loadCost;
    final l$unloadCost = unloadCost;
    final l$distanceCost = distanceCost;
    final l$isActive = isActive;
    return Object.hashAll([
      l$name,
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('loadCost') ? l$loadCost : const {},
      _$data.containsKey('unloadCost') ? l$unloadCost : const {},
      _$data.containsKey('distanceCost') ? l$distanceCost : const {},
      _$data.containsKey('isActive') ? l$isActive : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateCourierTariffInput<TRes> {
  factory CopyWith$Input$CreateCourierTariffInput(
    Input$CreateCourierTariffInput instance,
    TRes Function(Input$CreateCourierTariffInput) then,
  ) = _CopyWithImpl$Input$CreateCourierTariffInput;

  factory CopyWith$Input$CreateCourierTariffInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateCourierTariffInput;

  TRes call({
    String? name,
    String? description,
    double? loadCost,
    double? unloadCost,
    double? distanceCost,
    bool? isActive,
  });
}

class _CopyWithImpl$Input$CreateCourierTariffInput<TRes>
    implements CopyWith$Input$CreateCourierTariffInput<TRes> {
  _CopyWithImpl$Input$CreateCourierTariffInput(
    this._instance,
    this._then,
  );

  final Input$CreateCourierTariffInput _instance;

  final TRes Function(Input$CreateCourierTariffInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? loadCost = _undefined,
    Object? unloadCost = _undefined,
    Object? distanceCost = _undefined,
    Object? isActive = _undefined,
  }) =>
      _then(Input$CreateCourierTariffInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (description != _undefined) 'description': (description as String?),
        if (loadCost != _undefined) 'loadCost': (loadCost as double?),
        if (unloadCost != _undefined) 'unloadCost': (unloadCost as double?),
        if (distanceCost != _undefined)
          'distanceCost': (distanceCost as double?),
        if (isActive != _undefined) 'isActive': (isActive as bool?),
      }));
}

class _CopyWithStubImpl$Input$CreateCourierTariffInput<TRes>
    implements CopyWith$Input$CreateCourierTariffInput<TRes> {
  _CopyWithStubImpl$Input$CreateCourierTariffInput(this._res);

  final TRes _res;

  @override
  call({
    String? name,
    String? description,
    double? loadCost,
    double? unloadCost,
    double? distanceCost,
    bool? isActive,
  }) =>
      _res;
}

class Input$UpdateCourierTariffInput {
  factory Input$UpdateCourierTariffInput({
    required int id,
    String? name,
    String? description,
    double? loadCost,
    double? unloadCost,
    double? distanceCost,
    bool? isActive,
  }) =>
      Input$UpdateCourierTariffInput._({
        r'id': id,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if (loadCost != null) r'loadCost': loadCost,
        if (unloadCost != null) r'unloadCost': unloadCost,
        if (distanceCost != null) r'distanceCost': distanceCost,
        if (isActive != null) r'isActive': isActive,
      });

  Input$UpdateCourierTariffInput._(this._$data);

  factory Input$UpdateCourierTariffInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('loadCost')) {
      final l$loadCost = data['loadCost'];
      result$data['loadCost'] = (l$loadCost as num?)?.toDouble();
    }
    if (data.containsKey('unloadCost')) {
      final l$unloadCost = data['unloadCost'];
      result$data['unloadCost'] = (l$unloadCost as num?)?.toDouble();
    }
    if (data.containsKey('distanceCost')) {
      final l$distanceCost = data['distanceCost'];
      result$data['distanceCost'] = (l$distanceCost as num?)?.toDouble();
    }
    if (data.containsKey('isActive')) {
      final l$isActive = data['isActive'];
      result$data['isActive'] = (l$isActive as bool?);
    }
    return Input$UpdateCourierTariffInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  String? get name => (_$data['name'] as String?);
  String? get description => (_$data['description'] as String?);
  double? get loadCost => (_$data['loadCost'] as double?);
  double? get unloadCost => (_$data['unloadCost'] as double?);
  double? get distanceCost => (_$data['distanceCost'] as double?);
  bool? get isActive => (_$data['isActive'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('loadCost')) {
      final l$loadCost = loadCost;
      result$data['loadCost'] = l$loadCost;
    }
    if (_$data.containsKey('unloadCost')) {
      final l$unloadCost = unloadCost;
      result$data['unloadCost'] = l$unloadCost;
    }
    if (_$data.containsKey('distanceCost')) {
      final l$distanceCost = distanceCost;
      result$data['distanceCost'] = l$distanceCost;
    }
    if (_$data.containsKey('isActive')) {
      final l$isActive = isActive;
      result$data['isActive'] = l$isActive;
    }
    return result$data;
  }

  CopyWith$Input$UpdateCourierTariffInput<Input$UpdateCourierTariffInput>
      get copyWith => CopyWith$Input$UpdateCourierTariffInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateCourierTariffInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$loadCost = loadCost;
    final lOther$loadCost = other.loadCost;
    if (_$data.containsKey('loadCost') !=
        other._$data.containsKey('loadCost')) {
      return false;
    }
    if (l$loadCost != lOther$loadCost) {
      return false;
    }
    final l$unloadCost = unloadCost;
    final lOther$unloadCost = other.unloadCost;
    if (_$data.containsKey('unloadCost') !=
        other._$data.containsKey('unloadCost')) {
      return false;
    }
    if (l$unloadCost != lOther$unloadCost) {
      return false;
    }
    final l$distanceCost = distanceCost;
    final lOther$distanceCost = other.distanceCost;
    if (_$data.containsKey('distanceCost') !=
        other._$data.containsKey('distanceCost')) {
      return false;
    }
    if (l$distanceCost != lOther$distanceCost) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$loadCost = loadCost;
    final l$unloadCost = unloadCost;
    final l$distanceCost = distanceCost;
    final l$isActive = isActive;
    return Object.hashAll([
      l$id,
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('loadCost') ? l$loadCost : const {},
      _$data.containsKey('unloadCost') ? l$unloadCost : const {},
      _$data.containsKey('distanceCost') ? l$distanceCost : const {},
      _$data.containsKey('isActive') ? l$isActive : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateCourierTariffInput<TRes> {
  factory CopyWith$Input$UpdateCourierTariffInput(
    Input$UpdateCourierTariffInput instance,
    TRes Function(Input$UpdateCourierTariffInput) then,
  ) = _CopyWithImpl$Input$UpdateCourierTariffInput;

  factory CopyWith$Input$UpdateCourierTariffInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateCourierTariffInput;

  TRes call({
    int? id,
    String? name,
    String? description,
    double? loadCost,
    double? unloadCost,
    double? distanceCost,
    bool? isActive,
  });
}

class _CopyWithImpl$Input$UpdateCourierTariffInput<TRes>
    implements CopyWith$Input$UpdateCourierTariffInput<TRes> {
  _CopyWithImpl$Input$UpdateCourierTariffInput(
    this._instance,
    this._then,
  );

  final Input$UpdateCourierTariffInput _instance;

  final TRes Function(Input$UpdateCourierTariffInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? loadCost = _undefined,
    Object? unloadCost = _undefined,
    Object? distanceCost = _undefined,
    Object? isActive = _undefined,
  }) =>
      _then(Input$UpdateCourierTariffInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (name != _undefined) 'name': (name as String?),
        if (description != _undefined) 'description': (description as String?),
        if (loadCost != _undefined) 'loadCost': (loadCost as double?),
        if (unloadCost != _undefined) 'unloadCost': (unloadCost as double?),
        if (distanceCost != _undefined)
          'distanceCost': (distanceCost as double?),
        if (isActive != _undefined) 'isActive': (isActive as bool?),
      }));
}

class _CopyWithStubImpl$Input$UpdateCourierTariffInput<TRes>
    implements CopyWith$Input$UpdateCourierTariffInput<TRes> {
  _CopyWithStubImpl$Input$UpdateCourierTariffInput(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    String? name,
    String? description,
    double? loadCost,
    double? unloadCost,
    double? distanceCost,
    bool? isActive,
  }) =>
      _res;
}

class Input$CreateOrganizationInput {
  factory Input$CreateOrganizationInput({
    required String name,
    required Enum$OrganizationType type,
    String? description,
    required String inn,
    required int ownerId,
    required int tariffId,
  }) =>
      Input$CreateOrganizationInput._({
        r'name': name,
        r'type': type,
        if (description != null) r'description': description,
        r'inn': inn,
        r'ownerId': ownerId,
        r'tariffId': tariffId,
      });

  Input$CreateOrganizationInput._(this._$data);

  factory Input$CreateOrganizationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$type = data['type'];
    result$data['type'] = fromJson$Enum$OrganizationType((l$type as String));
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    final l$inn = data['inn'];
    result$data['inn'] = (l$inn as String);
    final l$ownerId = data['ownerId'];
    result$data['ownerId'] = (l$ownerId as int);
    final l$tariffId = data['tariffId'];
    result$data['tariffId'] = (l$tariffId as int);
    return Input$CreateOrganizationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Enum$OrganizationType get type => (_$data['type'] as Enum$OrganizationType);
  String? get description => (_$data['description'] as String?);
  String get inn => (_$data['inn'] as String);
  int get ownerId => (_$data['ownerId'] as int);
  int get tariffId => (_$data['tariffId'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$type = type;
    result$data['type'] = toJson$Enum$OrganizationType(l$type);
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    final l$inn = inn;
    result$data['inn'] = l$inn;
    final l$ownerId = ownerId;
    result$data['ownerId'] = l$ownerId;
    final l$tariffId = tariffId;
    result$data['tariffId'] = l$tariffId;
    return result$data;
  }

  CopyWith$Input$CreateOrganizationInput<Input$CreateOrganizationInput>
      get copyWith => CopyWith$Input$CreateOrganizationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateOrganizationInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$inn = inn;
    final lOther$inn = other.inn;
    if (l$inn != lOther$inn) {
      return false;
    }
    final l$ownerId = ownerId;
    final lOther$ownerId = other.ownerId;
    if (l$ownerId != lOther$ownerId) {
      return false;
    }
    final l$tariffId = tariffId;
    final lOther$tariffId = other.tariffId;
    if (l$tariffId != lOther$tariffId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$type = type;
    final l$description = description;
    final l$inn = inn;
    final l$ownerId = ownerId;
    final l$tariffId = tariffId;
    return Object.hashAll([
      l$name,
      l$type,
      _$data.containsKey('description') ? l$description : const {},
      l$inn,
      l$ownerId,
      l$tariffId,
    ]);
  }
}

abstract class CopyWith$Input$CreateOrganizationInput<TRes> {
  factory CopyWith$Input$CreateOrganizationInput(
    Input$CreateOrganizationInput instance,
    TRes Function(Input$CreateOrganizationInput) then,
  ) = _CopyWithImpl$Input$CreateOrganizationInput;

  factory CopyWith$Input$CreateOrganizationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateOrganizationInput;

  TRes call({
    String? name,
    Enum$OrganizationType? type,
    String? description,
    String? inn,
    int? ownerId,
    int? tariffId,
  });
}

class _CopyWithImpl$Input$CreateOrganizationInput<TRes>
    implements CopyWith$Input$CreateOrganizationInput<TRes> {
  _CopyWithImpl$Input$CreateOrganizationInput(
    this._instance,
    this._then,
  );

  final Input$CreateOrganizationInput _instance;

  final TRes Function(Input$CreateOrganizationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? name = _undefined,
    Object? type = _undefined,
    Object? description = _undefined,
    Object? inn = _undefined,
    Object? ownerId = _undefined,
    Object? tariffId = _undefined,
  }) =>
      _then(Input$CreateOrganizationInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (type != _undefined && type != null)
          'type': (type as Enum$OrganizationType),
        if (description != _undefined) 'description': (description as String?),
        if (inn != _undefined && inn != null) 'inn': (inn as String),
        if (ownerId != _undefined && ownerId != null)
          'ownerId': (ownerId as int),
        if (tariffId != _undefined && tariffId != null)
          'tariffId': (tariffId as int),
      }));
}

class _CopyWithStubImpl$Input$CreateOrganizationInput<TRes>
    implements CopyWith$Input$CreateOrganizationInput<TRes> {
  _CopyWithStubImpl$Input$CreateOrganizationInput(this._res);

  final TRes _res;

  @override
  call({
    String? name,
    Enum$OrganizationType? type,
    String? description,
    String? inn,
    int? ownerId,
    int? tariffId,
  }) =>
      _res;
}

class Input$UpdateOrganizationInput {
  factory Input$UpdateOrganizationInput({
    String? name,
    Enum$OrganizationType? type,
    String? description,
    String? inn,
    int? ownerId,
    int? tariffId,
    required int id,
  }) =>
      Input$UpdateOrganizationInput._({
        if (name != null) r'name': name,
        if (type != null) r'type': type,
        if (description != null) r'description': description,
        if (inn != null) r'inn': inn,
        if (ownerId != null) r'ownerId': ownerId,
        if (tariffId != null) r'tariffId': tariffId,
        r'id': id,
      });

  Input$UpdateOrganizationInput._(this._$data);

  factory Input$UpdateOrganizationInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$OrganizationType((l$type as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('inn')) {
      final l$inn = data['inn'];
      result$data['inn'] = (l$inn as String?);
    }
    if (data.containsKey('ownerId')) {
      final l$ownerId = data['ownerId'];
      result$data['ownerId'] = (l$ownerId as int?);
    }
    if (data.containsKey('tariffId')) {
      final l$tariffId = data['tariffId'];
      result$data['tariffId'] = (l$tariffId as int?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$UpdateOrganizationInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  Enum$OrganizationType? get type => (_$data['type'] as Enum$OrganizationType?);
  String? get description => (_$data['description'] as String?);
  String? get inn => (_$data['inn'] as String?);
  int? get ownerId => (_$data['ownerId'] as int?);
  int? get tariffId => (_$data['tariffId'] as int?);
  int get id => (_$data['id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$OrganizationType(l$type);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('inn')) {
      final l$inn = inn;
      result$data['inn'] = l$inn;
    }
    if (_$data.containsKey('ownerId')) {
      final l$ownerId = ownerId;
      result$data['ownerId'] = l$ownerId;
    }
    if (_$data.containsKey('tariffId')) {
      final l$tariffId = tariffId;
      result$data['tariffId'] = l$tariffId;
    }
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$UpdateOrganizationInput<Input$UpdateOrganizationInput>
      get copyWith => CopyWith$Input$UpdateOrganizationInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateOrganizationInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$inn = inn;
    final lOther$inn = other.inn;
    if (_$data.containsKey('inn') != other._$data.containsKey('inn')) {
      return false;
    }
    if (l$inn != lOther$inn) {
      return false;
    }
    final l$ownerId = ownerId;
    final lOther$ownerId = other.ownerId;
    if (_$data.containsKey('ownerId') != other._$data.containsKey('ownerId')) {
      return false;
    }
    if (l$ownerId != lOther$ownerId) {
      return false;
    }
    final l$tariffId = tariffId;
    final lOther$tariffId = other.tariffId;
    if (_$data.containsKey('tariffId') !=
        other._$data.containsKey('tariffId')) {
      return false;
    }
    if (l$tariffId != lOther$tariffId) {
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
    final l$name = name;
    final l$type = type;
    final l$description = description;
    final l$inn = inn;
    final l$ownerId = ownerId;
    final l$tariffId = tariffId;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('inn') ? l$inn : const {},
      _$data.containsKey('ownerId') ? l$ownerId : const {},
      _$data.containsKey('tariffId') ? l$tariffId : const {},
      l$id,
    ]);
  }
}

abstract class CopyWith$Input$UpdateOrganizationInput<TRes> {
  factory CopyWith$Input$UpdateOrganizationInput(
    Input$UpdateOrganizationInput instance,
    TRes Function(Input$UpdateOrganizationInput) then,
  ) = _CopyWithImpl$Input$UpdateOrganizationInput;

  factory CopyWith$Input$UpdateOrganizationInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOrganizationInput;

  TRes call({
    String? name,
    Enum$OrganizationType? type,
    String? description,
    String? inn,
    int? ownerId,
    int? tariffId,
    int? id,
  });
}

class _CopyWithImpl$Input$UpdateOrganizationInput<TRes>
    implements CopyWith$Input$UpdateOrganizationInput<TRes> {
  _CopyWithImpl$Input$UpdateOrganizationInput(
    this._instance,
    this._then,
  );

  final Input$UpdateOrganizationInput _instance;

  final TRes Function(Input$UpdateOrganizationInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? name = _undefined,
    Object? type = _undefined,
    Object? description = _undefined,
    Object? inn = _undefined,
    Object? ownerId = _undefined,
    Object? tariffId = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$UpdateOrganizationInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (type != _undefined) 'type': (type as Enum$OrganizationType?),
        if (description != _undefined) 'description': (description as String?),
        if (inn != _undefined) 'inn': (inn as String?),
        if (ownerId != _undefined) 'ownerId': (ownerId as int?),
        if (tariffId != _undefined) 'tariffId': (tariffId as int?),
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Input$UpdateOrganizationInput<TRes>
    implements CopyWith$Input$UpdateOrganizationInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOrganizationInput(this._res);

  final TRes _res;

  @override
  call({
    String? name,
    Enum$OrganizationType? type,
    String? description,
    String? inn,
    int? ownerId,
    int? tariffId,
    int? id,
  }) =>
      _res;
}

class Input$CreateOrganizationTariffInput {
  factory Input$CreateOrganizationTariffInput({
    required String name,
    String? description,
    double? loadCost,
    double? unloadCost,
    double? distanceCost,
    bool? isActive,
    double? acquiringCost,
  }) =>
      Input$CreateOrganizationTariffInput._({
        r'name': name,
        if (description != null) r'description': description,
        if (loadCost != null) r'loadCost': loadCost,
        if (unloadCost != null) r'unloadCost': unloadCost,
        if (distanceCost != null) r'distanceCost': distanceCost,
        if (isActive != null) r'isActive': isActive,
        if (acquiringCost != null) r'acquiringCost': acquiringCost,
      });

  Input$CreateOrganizationTariffInput._(this._$data);

  factory Input$CreateOrganizationTariffInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('loadCost')) {
      final l$loadCost = data['loadCost'];
      result$data['loadCost'] = (l$loadCost as num?)?.toDouble();
    }
    if (data.containsKey('unloadCost')) {
      final l$unloadCost = data['unloadCost'];
      result$data['unloadCost'] = (l$unloadCost as num?)?.toDouble();
    }
    if (data.containsKey('distanceCost')) {
      final l$distanceCost = data['distanceCost'];
      result$data['distanceCost'] = (l$distanceCost as num?)?.toDouble();
    }
    if (data.containsKey('isActive')) {
      final l$isActive = data['isActive'];
      result$data['isActive'] = (l$isActive as bool?);
    }
    if (data.containsKey('acquiringCost')) {
      final l$acquiringCost = data['acquiringCost'];
      result$data['acquiringCost'] = (l$acquiringCost as num?)?.toDouble();
    }
    return Input$CreateOrganizationTariffInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  String? get description => (_$data['description'] as String?);
  double? get loadCost => (_$data['loadCost'] as double?);
  double? get unloadCost => (_$data['unloadCost'] as double?);
  double? get distanceCost => (_$data['distanceCost'] as double?);
  bool? get isActive => (_$data['isActive'] as bool?);
  double? get acquiringCost => (_$data['acquiringCost'] as double?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('loadCost')) {
      final l$loadCost = loadCost;
      result$data['loadCost'] = l$loadCost;
    }
    if (_$data.containsKey('unloadCost')) {
      final l$unloadCost = unloadCost;
      result$data['unloadCost'] = l$unloadCost;
    }
    if (_$data.containsKey('distanceCost')) {
      final l$distanceCost = distanceCost;
      result$data['distanceCost'] = l$distanceCost;
    }
    if (_$data.containsKey('isActive')) {
      final l$isActive = isActive;
      result$data['isActive'] = l$isActive;
    }
    if (_$data.containsKey('acquiringCost')) {
      final l$acquiringCost = acquiringCost;
      result$data['acquiringCost'] = l$acquiringCost;
    }
    return result$data;
  }

  CopyWith$Input$CreateOrganizationTariffInput<
          Input$CreateOrganizationTariffInput>
      get copyWith => CopyWith$Input$CreateOrganizationTariffInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateOrganizationTariffInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$loadCost = loadCost;
    final lOther$loadCost = other.loadCost;
    if (_$data.containsKey('loadCost') !=
        other._$data.containsKey('loadCost')) {
      return false;
    }
    if (l$loadCost != lOther$loadCost) {
      return false;
    }
    final l$unloadCost = unloadCost;
    final lOther$unloadCost = other.unloadCost;
    if (_$data.containsKey('unloadCost') !=
        other._$data.containsKey('unloadCost')) {
      return false;
    }
    if (l$unloadCost != lOther$unloadCost) {
      return false;
    }
    final l$distanceCost = distanceCost;
    final lOther$distanceCost = other.distanceCost;
    if (_$data.containsKey('distanceCost') !=
        other._$data.containsKey('distanceCost')) {
      return false;
    }
    if (l$distanceCost != lOther$distanceCost) {
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
    final l$acquiringCost = acquiringCost;
    final lOther$acquiringCost = other.acquiringCost;
    if (_$data.containsKey('acquiringCost') !=
        other._$data.containsKey('acquiringCost')) {
      return false;
    }
    if (l$acquiringCost != lOther$acquiringCost) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    final l$loadCost = loadCost;
    final l$unloadCost = unloadCost;
    final l$distanceCost = distanceCost;
    final l$isActive = isActive;
    final l$acquiringCost = acquiringCost;
    return Object.hashAll([
      l$name,
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('loadCost') ? l$loadCost : const {},
      _$data.containsKey('unloadCost') ? l$unloadCost : const {},
      _$data.containsKey('distanceCost') ? l$distanceCost : const {},
      _$data.containsKey('isActive') ? l$isActive : const {},
      _$data.containsKey('acquiringCost') ? l$acquiringCost : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateOrganizationTariffInput<TRes> {
  factory CopyWith$Input$CreateOrganizationTariffInput(
    Input$CreateOrganizationTariffInput instance,
    TRes Function(Input$CreateOrganizationTariffInput) then,
  ) = _CopyWithImpl$Input$CreateOrganizationTariffInput;

  factory CopyWith$Input$CreateOrganizationTariffInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateOrganizationTariffInput;

  TRes call({
    String? name,
    String? description,
    double? loadCost,
    double? unloadCost,
    double? distanceCost,
    bool? isActive,
    double? acquiringCost,
  });
}

class _CopyWithImpl$Input$CreateOrganizationTariffInput<TRes>
    implements CopyWith$Input$CreateOrganizationTariffInput<TRes> {
  _CopyWithImpl$Input$CreateOrganizationTariffInput(
    this._instance,
    this._then,
  );

  final Input$CreateOrganizationTariffInput _instance;

  final TRes Function(Input$CreateOrganizationTariffInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? loadCost = _undefined,
    Object? unloadCost = _undefined,
    Object? distanceCost = _undefined,
    Object? isActive = _undefined,
    Object? acquiringCost = _undefined,
  }) =>
      _then(Input$CreateOrganizationTariffInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (description != _undefined) 'description': (description as String?),
        if (loadCost != _undefined) 'loadCost': (loadCost as double?),
        if (unloadCost != _undefined) 'unloadCost': (unloadCost as double?),
        if (distanceCost != _undefined)
          'distanceCost': (distanceCost as double?),
        if (isActive != _undefined) 'isActive': (isActive as bool?),
        if (acquiringCost != _undefined)
          'acquiringCost': (acquiringCost as double?),
      }));
}

class _CopyWithStubImpl$Input$CreateOrganizationTariffInput<TRes>
    implements CopyWith$Input$CreateOrganizationTariffInput<TRes> {
  _CopyWithStubImpl$Input$CreateOrganizationTariffInput(this._res);

  final TRes _res;

  @override
  call({
    String? name,
    String? description,
    double? loadCost,
    double? unloadCost,
    double? distanceCost,
    bool? isActive,
    double? acquiringCost,
  }) =>
      _res;
}

class Input$UpdateOrganizationTariffInput {
  factory Input$UpdateOrganizationTariffInput({
    required int id,
    String? name,
    String? description,
    double? loadCost,
    double? unloadCost,
    double? distanceCost,
    double? acquiringCost,
    bool? isActive,
  }) =>
      Input$UpdateOrganizationTariffInput._({
        r'id': id,
        if (name != null) r'name': name,
        if (description != null) r'description': description,
        if (loadCost != null) r'loadCost': loadCost,
        if (unloadCost != null) r'unloadCost': unloadCost,
        if (distanceCost != null) r'distanceCost': distanceCost,
        if (acquiringCost != null) r'acquiringCost': acquiringCost,
        if (isActive != null) r'isActive': isActive,
      });

  Input$UpdateOrganizationTariffInput._(this._$data);

  factory Input$UpdateOrganizationTariffInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('loadCost')) {
      final l$loadCost = data['loadCost'];
      result$data['loadCost'] = (l$loadCost as num?)?.toDouble();
    }
    if (data.containsKey('unloadCost')) {
      final l$unloadCost = data['unloadCost'];
      result$data['unloadCost'] = (l$unloadCost as num?)?.toDouble();
    }
    if (data.containsKey('distanceCost')) {
      final l$distanceCost = data['distanceCost'];
      result$data['distanceCost'] = (l$distanceCost as num?)?.toDouble();
    }
    if (data.containsKey('acquiringCost')) {
      final l$acquiringCost = data['acquiringCost'];
      result$data['acquiringCost'] = (l$acquiringCost as num?)?.toDouble();
    }
    if (data.containsKey('isActive')) {
      final l$isActive = data['isActive'];
      result$data['isActive'] = (l$isActive as bool?);
    }
    return Input$UpdateOrganizationTariffInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  String? get name => (_$data['name'] as String?);
  String? get description => (_$data['description'] as String?);
  double? get loadCost => (_$data['loadCost'] as double?);
  double? get unloadCost => (_$data['unloadCost'] as double?);
  double? get distanceCost => (_$data['distanceCost'] as double?);
  double? get acquiringCost => (_$data['acquiringCost'] as double?);
  bool? get isActive => (_$data['isActive'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('loadCost')) {
      final l$loadCost = loadCost;
      result$data['loadCost'] = l$loadCost;
    }
    if (_$data.containsKey('unloadCost')) {
      final l$unloadCost = unloadCost;
      result$data['unloadCost'] = l$unloadCost;
    }
    if (_$data.containsKey('distanceCost')) {
      final l$distanceCost = distanceCost;
      result$data['distanceCost'] = l$distanceCost;
    }
    if (_$data.containsKey('acquiringCost')) {
      final l$acquiringCost = acquiringCost;
      result$data['acquiringCost'] = l$acquiringCost;
    }
    if (_$data.containsKey('isActive')) {
      final l$isActive = isActive;
      result$data['isActive'] = l$isActive;
    }
    return result$data;
  }

  CopyWith$Input$UpdateOrganizationTariffInput<
          Input$UpdateOrganizationTariffInput>
      get copyWith => CopyWith$Input$UpdateOrganizationTariffInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateOrganizationTariffInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$loadCost = loadCost;
    final lOther$loadCost = other.loadCost;
    if (_$data.containsKey('loadCost') !=
        other._$data.containsKey('loadCost')) {
      return false;
    }
    if (l$loadCost != lOther$loadCost) {
      return false;
    }
    final l$unloadCost = unloadCost;
    final lOther$unloadCost = other.unloadCost;
    if (_$data.containsKey('unloadCost') !=
        other._$data.containsKey('unloadCost')) {
      return false;
    }
    if (l$unloadCost != lOther$unloadCost) {
      return false;
    }
    final l$distanceCost = distanceCost;
    final lOther$distanceCost = other.distanceCost;
    if (_$data.containsKey('distanceCost') !=
        other._$data.containsKey('distanceCost')) {
      return false;
    }
    if (l$distanceCost != lOther$distanceCost) {
      return false;
    }
    final l$acquiringCost = acquiringCost;
    final lOther$acquiringCost = other.acquiringCost;
    if (_$data.containsKey('acquiringCost') !=
        other._$data.containsKey('acquiringCost')) {
      return false;
    }
    if (l$acquiringCost != lOther$acquiringCost) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$loadCost = loadCost;
    final l$unloadCost = unloadCost;
    final l$distanceCost = distanceCost;
    final l$acquiringCost = acquiringCost;
    final l$isActive = isActive;
    return Object.hashAll([
      l$id,
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('loadCost') ? l$loadCost : const {},
      _$data.containsKey('unloadCost') ? l$unloadCost : const {},
      _$data.containsKey('distanceCost') ? l$distanceCost : const {},
      _$data.containsKey('acquiringCost') ? l$acquiringCost : const {},
      _$data.containsKey('isActive') ? l$isActive : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateOrganizationTariffInput<TRes> {
  factory CopyWith$Input$UpdateOrganizationTariffInput(
    Input$UpdateOrganizationTariffInput instance,
    TRes Function(Input$UpdateOrganizationTariffInput) then,
  ) = _CopyWithImpl$Input$UpdateOrganizationTariffInput;

  factory CopyWith$Input$UpdateOrganizationTariffInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOrganizationTariffInput;

  TRes call({
    int? id,
    String? name,
    String? description,
    double? loadCost,
    double? unloadCost,
    double? distanceCost,
    double? acquiringCost,
    bool? isActive,
  });
}

class _CopyWithImpl$Input$UpdateOrganizationTariffInput<TRes>
    implements CopyWith$Input$UpdateOrganizationTariffInput<TRes> {
  _CopyWithImpl$Input$UpdateOrganizationTariffInput(
    this._instance,
    this._then,
  );

  final Input$UpdateOrganizationTariffInput _instance;

  final TRes Function(Input$UpdateOrganizationTariffInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? loadCost = _undefined,
    Object? unloadCost = _undefined,
    Object? distanceCost = _undefined,
    Object? acquiringCost = _undefined,
    Object? isActive = _undefined,
  }) =>
      _then(Input$UpdateOrganizationTariffInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (name != _undefined) 'name': (name as String?),
        if (description != _undefined) 'description': (description as String?),
        if (loadCost != _undefined) 'loadCost': (loadCost as double?),
        if (unloadCost != _undefined) 'unloadCost': (unloadCost as double?),
        if (distanceCost != _undefined)
          'distanceCost': (distanceCost as double?),
        if (acquiringCost != _undefined)
          'acquiringCost': (acquiringCost as double?),
        if (isActive != _undefined) 'isActive': (isActive as bool?),
      }));
}

class _CopyWithStubImpl$Input$UpdateOrganizationTariffInput<TRes>
    implements CopyWith$Input$UpdateOrganizationTariffInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOrganizationTariffInput(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    String? name,
    String? description,
    double? loadCost,
    double? unloadCost,
    double? distanceCost,
    double? acquiringCost,
    bool? isActive,
  }) =>
      _res;
}

class Input$CreateFirebaseCloudInput {
  factory Input$CreateFirebaseCloudInput({required int exampleField}) =>
      Input$CreateFirebaseCloudInput._({
        r'exampleField': exampleField,
      });

  Input$CreateFirebaseCloudInput._(this._$data);

  factory Input$CreateFirebaseCloudInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$exampleField = data['exampleField'];
    result$data['exampleField'] = (l$exampleField as int);
    return Input$CreateFirebaseCloudInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get exampleField => (_$data['exampleField'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$exampleField = exampleField;
    result$data['exampleField'] = l$exampleField;
    return result$data;
  }

  CopyWith$Input$CreateFirebaseCloudInput<Input$CreateFirebaseCloudInput>
      get copyWith => CopyWith$Input$CreateFirebaseCloudInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateFirebaseCloudInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$exampleField = exampleField;
    final lOther$exampleField = other.exampleField;
    if (l$exampleField != lOther$exampleField) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$exampleField = exampleField;
    return Object.hashAll([l$exampleField]);
  }
}

abstract class CopyWith$Input$CreateFirebaseCloudInput<TRes> {
  factory CopyWith$Input$CreateFirebaseCloudInput(
    Input$CreateFirebaseCloudInput instance,
    TRes Function(Input$CreateFirebaseCloudInput) then,
  ) = _CopyWithImpl$Input$CreateFirebaseCloudInput;

  factory CopyWith$Input$CreateFirebaseCloudInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateFirebaseCloudInput;

  TRes call({int? exampleField});
}

class _CopyWithImpl$Input$CreateFirebaseCloudInput<TRes>
    implements CopyWith$Input$CreateFirebaseCloudInput<TRes> {
  _CopyWithImpl$Input$CreateFirebaseCloudInput(
    this._instance,
    this._then,
  );

  final Input$CreateFirebaseCloudInput _instance;

  final TRes Function(Input$CreateFirebaseCloudInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? exampleField = _undefined}) =>
      _then(Input$CreateFirebaseCloudInput._({
        ..._instance._$data,
        if (exampleField != _undefined && exampleField != null)
          'exampleField': (exampleField as int),
      }));
}

class _CopyWithStubImpl$Input$CreateFirebaseCloudInput<TRes>
    implements CopyWith$Input$CreateFirebaseCloudInput<TRes> {
  _CopyWithStubImpl$Input$CreateFirebaseCloudInput(this._res);

  final TRes _res;

  @override
  call({int? exampleField}) => _res;
}

class Input$UpdateFirebaseCloudInput {
  factory Input$UpdateFirebaseCloudInput({
    int? exampleField,
    required int id,
  }) =>
      Input$UpdateFirebaseCloudInput._({
        if (exampleField != null) r'exampleField': exampleField,
        r'id': id,
      });

  Input$UpdateFirebaseCloudInput._(this._$data);

  factory Input$UpdateFirebaseCloudInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('exampleField')) {
      final l$exampleField = data['exampleField'];
      result$data['exampleField'] = (l$exampleField as int?);
    }
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$UpdateFirebaseCloudInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get exampleField => (_$data['exampleField'] as int?);
  int get id => (_$data['id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('exampleField')) {
      final l$exampleField = exampleField;
      result$data['exampleField'] = l$exampleField;
    }
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$UpdateFirebaseCloudInput<Input$UpdateFirebaseCloudInput>
      get copyWith => CopyWith$Input$UpdateFirebaseCloudInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateFirebaseCloudInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$exampleField = exampleField;
    final lOther$exampleField = other.exampleField;
    if (_$data.containsKey('exampleField') !=
        other._$data.containsKey('exampleField')) {
      return false;
    }
    if (l$exampleField != lOther$exampleField) {
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
    final l$exampleField = exampleField;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('exampleField') ? l$exampleField : const {},
      l$id,
    ]);
  }
}

abstract class CopyWith$Input$UpdateFirebaseCloudInput<TRes> {
  factory CopyWith$Input$UpdateFirebaseCloudInput(
    Input$UpdateFirebaseCloudInput instance,
    TRes Function(Input$UpdateFirebaseCloudInput) then,
  ) = _CopyWithImpl$Input$UpdateFirebaseCloudInput;

  factory CopyWith$Input$UpdateFirebaseCloudInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateFirebaseCloudInput;

  TRes call({
    int? exampleField,
    int? id,
  });
}

class _CopyWithImpl$Input$UpdateFirebaseCloudInput<TRes>
    implements CopyWith$Input$UpdateFirebaseCloudInput<TRes> {
  _CopyWithImpl$Input$UpdateFirebaseCloudInput(
    this._instance,
    this._then,
  );

  final Input$UpdateFirebaseCloudInput _instance;

  final TRes Function(Input$UpdateFirebaseCloudInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? exampleField = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$UpdateFirebaseCloudInput._({
        ..._instance._$data,
        if (exampleField != _undefined) 'exampleField': (exampleField as int?),
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Input$UpdateFirebaseCloudInput<TRes>
    implements CopyWith$Input$UpdateFirebaseCloudInput<TRes> {
  _CopyWithStubImpl$Input$UpdateFirebaseCloudInput(this._res);

  final TRes _res;

  @override
  call({
    int? exampleField,
    int? id,
  }) =>
      _res;
}

class Input$LoginUserInput {
  factory Input$LoginUserInput({
    required String username,
    required String password,
  }) =>
      Input$LoginUserInput._({
        r'username': username,
        r'password': password,
      });

  Input$LoginUserInput._(this._$data);

  factory Input$LoginUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$LoginUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);
  String get password => (_$data['password'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$LoginUserInput<Input$LoginUserInput> get copyWith =>
      CopyWith$Input$LoginUserInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LoginUserInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$password = password;
    return Object.hashAll([
      l$username,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$LoginUserInput<TRes> {
  factory CopyWith$Input$LoginUserInput(
    Input$LoginUserInput instance,
    TRes Function(Input$LoginUserInput) then,
  ) = _CopyWithImpl$Input$LoginUserInput;

  factory CopyWith$Input$LoginUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginUserInput;

  TRes call({
    String? username,
    String? password,
  });
}

class _CopyWithImpl$Input$LoginUserInput<TRes>
    implements CopyWith$Input$LoginUserInput<TRes> {
  _CopyWithImpl$Input$LoginUserInput(
    this._instance,
    this._then,
  );

  final Input$LoginUserInput _instance;

  final TRes Function(Input$LoginUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? username = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Input$LoginUserInput._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Input$LoginUserInput<TRes>
    implements CopyWith$Input$LoginUserInput<TRes> {
  _CopyWithStubImpl$Input$LoginUserInput(this._res);

  final TRes _res;

  @override
  call({
    String? username,
    String? password,
  }) =>
      _res;
}

enum Enum$CourierType { WALKING, BICYCLE, CAR, $unknown }

String toJson$Enum$CourierType(Enum$CourierType e) {
  switch (e) {
    case Enum$CourierType.WALKING:
      return r'WALKING';
    case Enum$CourierType.BICYCLE:
      return r'BICYCLE';
    case Enum$CourierType.CAR:
      return r'CAR';
    case Enum$CourierType.$unknown:
      return r'$unknown';
  }
}

Enum$CourierType fromJson$Enum$CourierType(String value) {
  switch (value) {
    case r'WALKING':
      return Enum$CourierType.WALKING;
    case r'BICYCLE':
      return Enum$CourierType.BICYCLE;
    case r'CAR':
      return Enum$CourierType.CAR;
    default:
      return Enum$CourierType.$unknown;
  }
}

enum Enum$OrderStatus {
  REGISTERED,
  READY,
  CANCELED,
  ON_THE_WAY,
  DELIVERED,
  $unknown
}

String toJson$Enum$OrderStatus(Enum$OrderStatus e) {
  switch (e) {
    case Enum$OrderStatus.REGISTERED:
      return r'REGISTERED';
    case Enum$OrderStatus.READY:
      return r'READY';
    case Enum$OrderStatus.CANCELED:
      return r'CANCELED';
    case Enum$OrderStatus.ON_THE_WAY:
      return r'ON_THE_WAY';
    case Enum$OrderStatus.DELIVERED:
      return r'DELIVERED';
    case Enum$OrderStatus.$unknown:
      return r'$unknown';
  }
}

Enum$OrderStatus fromJson$Enum$OrderStatus(String value) {
  switch (value) {
    case r'REGISTERED':
      return Enum$OrderStatus.REGISTERED;
    case r'READY':
      return Enum$OrderStatus.READY;
    case r'CANCELED':
      return Enum$OrderStatus.CANCELED;
    case r'ON_THE_WAY':
      return Enum$OrderStatus.ON_THE_WAY;
    case r'DELIVERED':
      return Enum$OrderStatus.DELIVERED;
    default:
      return Enum$OrderStatus.$unknown;
  }
}

enum Enum$OrderPaymentType { CASH, CARD, QR, MOBILE, ONLINE, $unknown }

String toJson$Enum$OrderPaymentType(Enum$OrderPaymentType e) {
  switch (e) {
    case Enum$OrderPaymentType.CASH:
      return r'CASH';
    case Enum$OrderPaymentType.CARD:
      return r'CARD';
    case Enum$OrderPaymentType.QR:
      return r'QR';
    case Enum$OrderPaymentType.MOBILE:
      return r'MOBILE';
    case Enum$OrderPaymentType.ONLINE:
      return r'ONLINE';
    case Enum$OrderPaymentType.$unknown:
      return r'$unknown';
  }
}

Enum$OrderPaymentType fromJson$Enum$OrderPaymentType(String value) {
  switch (value) {
    case r'CASH':
      return Enum$OrderPaymentType.CASH;
    case r'CARD':
      return Enum$OrderPaymentType.CARD;
    case r'QR':
      return Enum$OrderPaymentType.QR;
    case r'MOBILE':
      return Enum$OrderPaymentType.MOBILE;
    case r'ONLINE':
      return Enum$OrderPaymentType.ONLINE;
    default:
      return Enum$OrderPaymentType.$unknown;
  }
}

enum Enum$OrganizationType { RESTAURANT, ONLINE_STORE, GROCERIES, $unknown }

String toJson$Enum$OrganizationType(Enum$OrganizationType e) {
  switch (e) {
    case Enum$OrganizationType.RESTAURANT:
      return r'RESTAURANT';
    case Enum$OrganizationType.ONLINE_STORE:
      return r'ONLINE_STORE';
    case Enum$OrganizationType.GROCERIES:
      return r'GROCERIES';
    case Enum$OrganizationType.$unknown:
      return r'$unknown';
  }
}

Enum$OrganizationType fromJson$Enum$OrganizationType(String value) {
  switch (value) {
    case r'RESTAURANT':
      return Enum$OrganizationType.RESTAURANT;
    case r'ONLINE_STORE':
      return Enum$OrganizationType.ONLINE_STORE;
    case r'GROCERIES':
      return Enum$OrganizationType.GROCERIES;
    default:
      return Enum$OrganizationType.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
