import 'package:courier_app/common/graphql/fragments/order.graphql.dart';
import 'package:courier_app/common/widgets/error_dialog.dart';
import 'package:courier_app/providers/order_history_provider.dart';
import 'package:courier_app/screens/common/order_details/order_details_screen.dart';
import 'package:courier_app/screens/orders/widgets/order_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HistoryScreen extends StatefulWidget {
  static const String routeName = '/history';
  static const String title = 'История';

  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>
    with AutomaticKeepAliveClientMixin<HistoryScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    final historyProvider = context.read<OrderHistoryProvider>();
    Future.microtask(() async {
      await historyProvider.fetchOrderHistory();
      if (historyProvider.hasError && context.mounted) {
        await showDialog(
          context: context,
          builder: (context) {
            return ErrorDialog(
              context.read<OrderHistoryProvider>().errorMessage,
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(HistoryScreen.title),
      ),
      body: Consumer<OrderHistoryProvider>(
        builder: (context, historyProvider, child) {
          final orders = [...historyProvider.orders];

          if (orders.isEmpty) {
            return const Center(
              child: Text('Заказы отсутствуют'),
            );
          }

          orders.sort((a, b) => b.createdAt.compareTo(a.createdAt));

          final groupedOrders = <String, List<Fragment$Order>>{};
          for (final order in orders) {
            final dateKey =
                DateFormat('d MMMM yyyy', 'ru_RU').format(order.createdAt);
            groupedOrders.putIfAbsent(dateKey, () => <Fragment$Order>[]);
            groupedOrders[dateKey]!.add(order);
          }

          final dates = groupedOrders.keys.toList();

          return ListView.separated(
            padding: const EdgeInsets.all(8.0),
            itemCount: dates.length,
            itemBuilder: (context, index) {
              final date = dates[index];
              final ordersForDate = groupedOrders[date];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      date,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemCount: ordersForDate!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: OrderCard(
                          ordersForDate[index],
                          onTap: () => Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (_, __, ___) => OrderDetailsScreen(
                                order: ordersForDate[index],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) => const Divider(),
          );
        },
      ),
    );
  }
}
