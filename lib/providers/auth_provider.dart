import 'package:courier_app/services/api_service.dart';
import 'package:courier_app/services/shared_preferences_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class AuthProvider with ChangeNotifier {
  final SPService _spService = GetIt.instance<SPService>();
  final APIService _apiService = GetIt.instance<APIService>();
  bool _isLoading = false;
  String? _errorMessage;

  bool get isLoading => _isLoading;

  String get errorMessage => _errorMessage ?? "";

  Future<void> login({
    required String username,
    required String password,
  }) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    _spService.username = username;
    _spService.password = password;

    try {
      await _apiService.login(username, password);
    } catch (e) {
      _errorMessage = 'Не удалось авторизоваться:\n$e';
    }
    _isLoading = false;
    notifyListeners();
  }
}
