import 'package:courier_app/providers/auth_provider.dart';
import 'package:courier_app/providers/history_provider.dart';
import 'package:courier_app/providers/navigation_provider.dart';
import 'package:courier_app/providers/orders_provider.dart';
import 'package:courier_app/providers/profile_provider.dart';
import 'package:courier_app/utils/app_route.dart';
import 'package:courier_app/utils/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/date_symbol_data_local.dart';

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
        ChangeNotifierProvider(create: (context) => NavigationProvider()),
        ChangeNotifierProvider(create: (context) => ProfileProvider()),
        ChangeNotifierProvider(create: (context) => OrdersProvider()),
        ChangeNotifierProvider(create: (context) => HistoryProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: "Open Sans",
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.lightBlue,
            background: Colors.grey.shade100,
          ),
        ),
        initialRoute: '/',
        onGenerateRoute: generateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
