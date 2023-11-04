import 'package:courier_app/services/foreground/foreground_service.dart';
import 'package:courier_app/services/locator.dart';
import 'package:flutter/cupertino.dart';

class WorkingStatusProvider extends ChangeNotifier {
  final _foregroundService = getIt<ForegroundService>();
  bool _isAcceptingOrders = false;
  bool _isLoading = false;
  String? _errorMessage;

  bool get isAcceptingOrders {
    if (_isLoading) {
      return _isAcceptingOrders;
    }
    return _foregroundService.isActive;
  }

  bool get isLoading => _isLoading;

  String get errorMessage => _errorMessage ?? "";

  Future<void> handleAcceptOrders() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();
    try {
      await _foregroundService.startForegroundTask();
      _isAcceptingOrders = true;
    } catch (e) {
      _errorMessage = e.toString();
      rethrow;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
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
      rethrow;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
