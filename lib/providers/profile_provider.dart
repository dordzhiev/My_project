import 'package:courier_app/services/foreground_service/foreground_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ProfileProvider extends ChangeNotifier {
  final _foregroundService = GetIt.instance<ForegroundService>();
  bool _isAcceptingOrders = false;
  bool _isLoading = false;
  String? _errorMessage;

  bool get isAcceptingOrders {
    if (_isLoading) {
      return _isAcceptingOrders;
    }
    if (_foregroundService.isActive) {
      return true;
    }
    return false;
  }

  bool get isLoading => _isLoading;

  String get errorMessage => _errorMessage ?? '';

  Future<void> handleAcceptOrders() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();
    try {
      await _foregroundService.startForegroundTask();
      _isAcceptingOrders = true;
    } catch (e) {
      _errorMessage = e.toString();
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> handleDeclineOrders() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();
    try {
      await _foregroundService.stopForegroundTask();
      _isAcceptingOrders = false;
    } catch (e) {
      _errorMessage = e.toString();
    }
    _isLoading = false;
    notifyListeners();
  }
}
