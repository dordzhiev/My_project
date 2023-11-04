import 'package:courier_app/common/graphql/fragments/order.graphql.dart';
import 'package:courier_app/common/widgets/error_dialog.dart';
import 'package:courier_app/providers/order_list_provider.dart';
import 'package:courier_app/screens/common/order_details/order_details_screen.dart';
import 'package:courier_app/screens/orders/widgets/order_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatefulWidget {
  static const String routeName = '/orders';
  static const String title = 'Заказы';

  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen>
    with AutomaticKeepAliveClientMixin<OrdersScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final ordersProvider = context.read<OrderListProvider>();
      await ordersProvider.fetchOrderList();
      if (ordersProvider.hasError && context.mounted) {
        await showDialog(
          context: context,
          builder: (context) => ErrorDialog(ordersProvider.errorMessage),
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
        title: const Text(OrdersScreen.title),
      ),
      body: Consumer<OrderListProvider>(
        builder: (context, ordersProvider, child) {
          List<Fragment$Order> orders = ordersProvider.orders;
          if (orders.isEmpty) {
            return const Center(child: Text('Заказы отсутствуют'));
          }

          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            itemCount: orders.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: OrderCard(
                  orders[index],
                  onTap: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => OrderDetailsScreen(
                        order: orders[index],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
