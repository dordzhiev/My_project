import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$PersonalInformation {
  Fragment$PersonalInformation({
    required this.username,
    this.firstname,
    this.lastname,
    this.middlename,
    this.phoneNumber,
    this.email,
  });

  factory Fragment$PersonalInformation.fromJson(Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$firstname = json['firstname'];
    final l$lastname = json['lastname'];
    final l$middlename = json['middlename'];
    final l$phoneNumber = json['phoneNumber'];
    final l$email = json['email'];
    return Fragment$PersonalInformation(
      username: (l$username as String),
      firstname: (l$firstname as String?),
      lastname: (l$lastname as String?),
      middlename: (l$middlename as String?),
      phoneNumber: (l$phoneNumber as String?),
      email: (l$email as String?),
    );
  }

  final String username;

  final String? firstname;

  final String? lastname;

  final String? middlename;

  final String? phoneNumber;

  final String? email;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$username = username;
    _resultData['username'] = l$username;
    final l$firstname = firstname;
    _resultData['firstname'] = l$firstname;
    final l$lastname = lastname;
    _resultData['lastname'] = l$lastname;
    final l$middlename = middlename;
    _resultData['middlename'] = l$middlename;
    final l$phoneNumber = phoneNumber;
    _resultData['phoneNumber'] = l$phoneNumber;
    final l$email = email;
    _resultData['email'] = l$email;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$firstname = firstname;
    final l$lastname = lastname;
    final l$middlename = middlename;
    final l$phoneNumber = phoneNumber;
    final l$email = email;
    return Object.hashAll([
      l$username,
      l$firstname,
      l$lastname,
      l$middlename,
      l$phoneNumber,
      l$email,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PersonalInformation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$firstname = firstname;
    final lOther$firstname = other.firstname;
    if (l$firstname != lOther$firstname) {
      return false;
    }
    final l$lastname = lastname;
    final lOther$lastname = other.lastname;
    if (l$lastname != lOther$lastname) {
      return false;
    }
    final l$middlename = middlename;
    final lOther$middlename = other.middlename;
    if (l$middlename != lOther$middlename) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$PersonalInformation
    on Fragment$PersonalInformation {
  CopyWith$Fragment$PersonalInformation<Fragment$PersonalInformation>
      get copyWith => CopyWith$Fragment$PersonalInformation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PersonalInformation<TRes> {
  factory CopyWith$Fragment$PersonalInformation(
    Fragment$PersonalInformation instance,
    TRes Function(Fragment$PersonalInformation) then,
  ) = _CopyWithImpl$Fragment$PersonalInformation;

  factory CopyWith$Fragment$PersonalInformation.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PersonalInformation;

  TRes call({
    String? username,
    String? firstname,
    String? lastname,
    String? middlename,
    String? phoneNumber,
    String? email,
  });
}

class _CopyWithImpl$Fragment$PersonalInformation<TRes>
    implements CopyWith$Fragment$PersonalInformation<TRes> {
  _CopyWithImpl$Fragment$PersonalInformation(
    this._instance,
    this._then,
  );

  final Fragment$PersonalInformation _instance;

  final TRes Function(Fragment$PersonalInformation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? firstname = _undefined,
    Object? lastname = _undefined,
    Object? middlename = _undefined,
    Object? phoneNumber = _undefined,
    Object? email = _undefined,
  }) =>
      _then(Fragment$PersonalInformation(
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        firstname: firstname == _undefined
            ? _instance.firstname
            : (firstname as String?),
        lastname:
            lastname == _undefined ? _instance.lastname : (lastname as String?),
        middlename: middlename == _undefined
            ? _instance.middlename
            : (middlename as String?),
        phoneNumber: phoneNumber == _undefined
            ? _instance.phoneNumber
            : (phoneNumber as String?),
        email: email == _undefined ? _instance.email : (email as String?),
      ));
}

class _CopyWithStubImpl$Fragment$PersonalInformation<TRes>
    implements CopyWith$Fragment$PersonalInformation<TRes> {
  _CopyWithStubImpl$Fragment$PersonalInformation(this._res);

  TRes _res;

  call({
    String? username,
    String? firstname,
    String? lastname,
    String? middlename,
    String? phoneNumber,
    String? email,
  }) =>
      _res;
}

const fragmentDefinitionPersonalInformation = FragmentDefinitionNode(
  name: NameNode(value: 'PersonalInformation'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'username'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'firstName'),
      alias: NameNode(value: 'firstname'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lastName'),
      alias: NameNode(value: 'lastname'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'middlename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'phone'),
      alias: NameNode(value: 'phoneNumber'),
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'email'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentPersonalInformation = DocumentNode(definitions: [
  fragmentDefinitionPersonalInformation,
]);

extension ClientExtension$Fragment$PersonalInformation
    on graphql.GraphQLClient {
  void writeFragment$PersonalInformation({
    required Fragment$PersonalInformation data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PersonalInformation',
            document: documentNodeFragmentPersonalInformation,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PersonalInformation? readFragment$PersonalInformation({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PersonalInformation',
          document: documentNodeFragmentPersonalInformation,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$PersonalInformation.fromJson(result);
  }
}
