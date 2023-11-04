import 'package:courier_app/common/graphql/fragments/order.graphql.dart';
import 'package:courier_app/common/graphql/fragments/personal_info.graphql.dart';
import 'package:courier_app/common/graphql/schema.graphql.dart';

abstract class APIService {
  get isAuthenticated => throw UnimplementedError();

  Future<void> login(String username, String password) async {
    throw UnimplementedError();
  }

  void logout() {
    throw UnimplementedError();
  }

  Future<List<Fragment$Order>> fetchOrderList() async {
    throw UnimplementedError();
  }

  List<Fragment$Order> readOrderList() {
    throw UnimplementedError();
  }

  Future<Enum$OrderStatus> changeOrderStatus(double id, Enum$OrderStatus status) async {
    throw UnimplementedError();
  }

  Future<List<Fragment$Order>> fetchOrderHistory() async {
    throw UnimplementedError();
  }

  List<Fragment$Order> readOrderHistory() {
    throw UnimplementedError();
  }

  Future<void> startSession(double latitude, double longitude) async {
    throw UnimplementedError();
  }

  Future<void> stopSession() async {
    throw UnimplementedError();
  }

  Future<void> updateLocation(double latitude, double longitude) async {
    throw UnimplementedError();
  }

  Future<Fragment$PersonalInfo> fetchPersonalInfo() async {
    throw UnimplementedError();
  }

  Future<Fragment$PersonalInfo> changePersonalInfo(
      Fragment$PersonalInfo personalInfo) async {
    throw UnimplementedError();
  }
}
