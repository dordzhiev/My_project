import 'dart:collection';

import 'package:courier_app/common/graphql/fragments/order.graphql.dart';
import 'package:courier_app/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class OrderHistoryProvider extends ChangeNotifier {
  final APIService _apiService = GetIt.instance<APIService>();
  List<Fragment$Order> _orders = [];
  String? _errorMessage;

  UnmodifiableListView<Fragment$Order> get orders => UnmodifiableListView(_orders);

  String get errorMessage => _errorMessage ?? '';

  bool get hasError => _errorMessage != null ? true : false;

  Future<List<Fragment$Order>> fetchOrderHistory() async {
    _errorMessage = null;
    _orders = _apiService.readOrderHistory();
    notifyListeners();

    try {
      _orders = await _apiService.fetchOrderHistory();
    } catch (e) {
      _errorMessage = e.toString();
    }
    notifyListeners();

    return _orders;
  }
}
