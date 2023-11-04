import 'package:courier_app/providers/order_list_provider.dart';
import 'package:courier_app/screens/history/history_screen.dart';
import 'package:courier_app/screens/orders/orders_screen.dart';
import 'package:courier_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: const <Widget>[
          OrdersScreen(),
          HistoryScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: const [
          NavigationDestination(
            selectedIcon: OrdersIconBadged(Icons.local_shipping),
            icon: OrdersIconBadged(Icons.local_shipping_outlined),
            label: OrdersScreen.title,
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.history),
            icon: Icon(Icons.history_outlined),
            label: HistoryScreen.title,
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            label: ProfileScreen.title,
          )
        ],
      ),
    );
  }
}

class OrdersIconBadged extends StatelessWidget {
  const OrdersIconBadged(this.icon, {super.key});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Consumer<OrderListProvider>(
      builder: (context, value, child) {
        return Badge.count(
          isLabelVisible: value.orders.isNotEmpty ? true : false,
          backgroundColor: colorScheme.onSurface,
          count: value.orders.length,
          child: child,
        );
      },
      child: Icon(icon),
    );
  }
}
