import 'package:courier_app/common/widgets/auth_checker.dart';
import 'package:courier_app/providers/auth_provider.dart';
import 'package:courier_app/providers/order_history_provider.dart';
import 'package:courier_app/providers/order_list_provider.dart';
import 'package:courier_app/providers/profile_provider.dart';
import 'package:courier_app/providers/working_status_provider.dart';
import 'package:courier_app/screens/auth_screen.dart';
import 'package:courier_app/screens/history/history_screen.dart';
import 'package:courier_app/screens/home_page.dart';
import 'package:courier_app/screens/orders/orders_screen.dart';
import 'package:courier_app/screens/profile/profile_screen.dart';
import 'package:courier_app/services/api_service.dart';
import 'package:courier_app/services/locator.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ru_RU', null);
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => ProfileProvider()),
        ChangeNotifierProvider(create: (context) => WorkingStatusProvider()),
        ChangeNotifierProvider(create: (context) => OrderListProvider()),
        ChangeNotifierProvider(create: (context) => OrderHistoryProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: "Open Sans",
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.lightBlue,
          ),
        ),
        initialRoute: '/',
        onGenerateRoute: generateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          APIService apiService = GetIt.instance<APIService>();
          return AuthChecker(
            isAuthenticated: apiService.isAuthenticated,
            loginScreen: AuthScreen(),
            homeScreen: const HomePage(),
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
