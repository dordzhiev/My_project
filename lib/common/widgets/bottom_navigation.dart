import 'package:courier_app/providers/navigation_provider.dart';
import 'package:courier_app/utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final screenNavigation = Provider.of<NavigationProvider>(context);

    return NavigationBar(
      selectedIndex: screenNavigation.currentIndex,
      onDestinationSelected: (index) {
        screenNavigation.setIndex(index);
        Navigator.of(context).pushReplacementNamed(
          navigationItems.elementAt(index).routeName,
        );
      },
      destinations: [
        for (final item in navigationItems)
          NavigationDestination(
            selectedIcon: item.selectedIcon,
            icon: item.icon,
            label: item.title,
          )
      ],
    );
  }
}
