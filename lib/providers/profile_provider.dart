import 'package:courier_app/common/graphql/fragments/personal_info.graphql.dart';
import 'package:courier_app/services/api_service.dart';
import 'package:courier_app/services/locator.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ProfileProvider extends ChangeNotifier {
  final APIService _apiService = GetIt.instance<APIService>();
  Fragment$PersonalInfo? personalInfo;
  bool _isLoading = false;
  String? _errorMessage;

  Future<void> fetchPersonalInfo() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();
    try {
      personalInfo = await getIt<APIService>().fetchPersonalInfo();
    } catch (e) {
      _errorMessage = e.toString();
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> updatePersonalInfo(Fragment$PersonalInfo personalInfo) async {
    this.personalInfo = await _apiService.changePersonalInfo(personalInfo);
    notifyListeners();
  }

  bool get isLoading => _isLoading;

  String get errorMessage => _errorMessage ?? "";
}
