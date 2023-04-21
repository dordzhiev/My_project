import 'package:courier_app/common/graphql/fragments/order.graphql.dart';
import 'package:courier_app/common/widgets/bottom_navigation.dart';
import 'package:courier_app/common/widgets/error_dialog.dart';
import 'package:courier_app/providers/orders_provider.dart';
import 'package:courier_app/screens/order_details_screen/order_details_screen.dart';
import 'package:courier_app/screens/orders_screen/order_card.dart';
import 'package:courier_app/utils/order_utils.dart';
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
      final ordersProvider = context.read<OrdersProvider>();
      await ordersProvider.fetchOrders();
      if (ordersProvider.hasError&&context.mounted) {
        showDialog(
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
      body: Consumer<OrdersProvider>(
        builder: (context, ordersProvider, child) {
          List<Fragment$Order> orders = generateOrderFragments();
          return orders.isNotEmpty
              ? ListView.builder(
                  itemCount: orders.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (_, __, ___) => OrderDetailsScreen(
                            order: orders[index],
                          ),
                        ),
                      ),
                      child: OrderCard(orders[index]),
                    );
                  },
                )
              : const Center(child: Text('Заказы отсутствуют'));
        },
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
