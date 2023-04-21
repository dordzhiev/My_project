import 'package:shared_preferences/shared_preferences.dart';

const kAccessTokenKey = 'access_token';
const kRefreshTokenKey = 'refresh_token';
const kUsernameKey = 'username';
const kUserIdKey = 'userId';

class SPService {
  static SPService? _instance;
  static late SharedPreferences _preferences;

  SPService._();

  static Future<SPService> getInstance() async {
    _instance ??= SPService._();
    _preferences = await SharedPreferences.getInstance();
    return _instance!;
  }

  String? get accessToken => _preferences.getString(kAccessTokenKey);

  set accessToken(String? value) {
    if (value != null) {
      _preferences.setString(kAccessTokenKey, value);
    } else {
      _preferences.remove(kAccessTokenKey);
    }
  }

  String? get refreshToken => _preferences.getString(kRefreshTokenKey);

  set refreshToken(String? value) {
    if (value != null) {
      _preferences.setString(kRefreshTokenKey, value);
    } else {
      _preferences.remove(kRefreshTokenKey);
    }
  }

  String get username => _preferences.getString(kUsernameKey) ?? '';

  set username(value) => _preferences.setString(kUsernameKey, value);

  int? get userId => _preferences.getInt(kUserIdKey);

  set userId(int? value) {
    if (value != null) {
      _preferences.setInt(kUserIdKey, value);
    } else {
      _preferences.remove(kUserIdKey);
    }
  }
}
