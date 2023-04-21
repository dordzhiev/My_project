import 'package:courier_app/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ProfileProvider extends ChangeNotifier {
  APIService apiService = GetIt.instance<APIService>();
  bool _isAcceptingOrders = false;
  bool _isLoading = false;

  bool get isAcceptingOrders => _isAcceptingOrders;

  bool get isLoading => _isLoading;

  Future<void> handleAcceptOrders() async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 5));
    _isAcceptingOrders = true;
    _isLoading = false;
    notifyListeners();
  }

  Future<void> handleDeclineOrders() async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 5));
    _isAcceptingOrders = false;
    _isLoading = false;
    notifyListeners();
  }
}
