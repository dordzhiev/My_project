import 'package:courier_app/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class AuthProvider with ChangeNotifier {
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

    try {
      await _apiService.login(username, password);
    } catch (e) {
      _errorMessage = 'Не удалось авторизироваться:\n$e';
    }
    _isLoading = false;
    notifyListeners();
  }

  void logout() async {
    _apiService.logout();
  }
}
