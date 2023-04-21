import 'package:courier_app/common/widgets/auth_checker.dart';
import 'package:courier_app/models/navigation_item.dart';
import 'package:courier_app/screens/auth_screen.dart';
import 'package:courier_app/screens/history_screen.dart';
import 'package:courier_app/screens/orders_screen/orders_screen.dart';
import 'package:courier_app/screens/profile_screen.dart';
import 'package:courier_app/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

List<NavigationItem> navigationItems = [
  NavigationItem(
    title: OrdersScreen.title,
    selectedIcon: const Icon(Icons.local_shipping),
    icon: const Icon(Icons.local_shipping_outlined),
    routeName: OrdersScreen.routeName,
    build: (context, animation, secondaryAnimation) => const OrdersScreen(),
  ),
  NavigationItem(
    title: HistoryScreen.title,
    selectedIcon: const Icon(Icons.history),
    icon: const Icon(Icons.history_outlined),
    routeName: HistoryScreen.routeName,
    build: (context, animation, secondaryAnimation) => const HistoryScreen(),
  ),
  NavigationItem(
    title: ProfileScreen.title,
    selectedIcon: const Icon(Icons.person),
    icon: const Icon(Icons.person_outline),
    routeName: ProfileScreen.routeName,
    build: (context, animation, secondaryAnimation) => const ProfileScreen(),
  ),
];

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          APIService apiService = GetIt.instance<APIService>();
          return AuthChecker(
            isAuthenticated: apiService.isAuthenticated,
            loginScreen: AuthScreen(),
            homeScreen: const OrdersScreen(),
          );
        },
      );
    case AuthScreen.routeName:
      return PageRouteBuilder(pageBuilder: (_, __, ___) {
        return AuthScreen();
      });
    case OrdersScreen.routeName:
      return PageRouteBuilder(pageBuilder: (_, __, ___) {
        return const OrdersScreen();
      });
    case HistoryScreen.routeName:
      return PageRouteBuilder(pageBuilder: (_, __, ___) {
        return const HistoryScreen();
      });
    case ProfileScreen.routeName:
      return PageRouteBuilder(pageBuilder: (_, __, ___) {
        return const ProfileScreen();
      });
  }

  return MaterialPageRoute(
    builder: (_) => const Scaffold(
      body: Center(
        child: Text('Page not found'),
      ),
    ),
  );
}
