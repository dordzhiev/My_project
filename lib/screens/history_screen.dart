import 'package:courier_app/common/widgets/bottom_navigation.dart';
import 'package:courier_app/common/widgets/error_dialog.dart';
import 'package:courier_app/providers/history_provider.dart';
import 'package:courier_app/screens/order_details_screen/order_details_screen.dart';
import 'package:courier_app/screens/orders_screen/order_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HistoryScreen extends StatefulWidget {
  static const String routeName = '/history';
  static const String title = 'История';

  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  void initState() {
    super.initState();
    final historyProvider = context.read<HistoryProvider>();
    Future.microtask(() async {
      await historyProvider.fetchHistory();
      if (historyProvider.hasError && context.mounted) {
        await showDialog(
          context: context,
          builder: (context) {
            return ErrorDialog(
              context.read<HistoryProvider>().errorMessage,
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(HistoryScreen.title),
      ),
      body: Consumer<HistoryProvider>(
        builder: (context, historyProvider, child) {
          return historyProvider.orders.isNotEmpty
              ? ListView.builder(
                  itemCount: historyProvider.orders.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () => Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => OrderDetailsScreen(
                          order: historyProvider.orders[index],
                        ),
                      ),
                    ),
                    child: OrderCard(
                      historyProvider.orders[index],
                    ),
                  ),
                )
              : const Center(
                  child: Text('Заказы отсутствуют'),
                );
        },
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
