import 'package:flutter/material.dart';

class NavigationItem {
  final String title;
  final Icon selectedIcon;
  final Icon icon;
  final String routeName;
  final RoutePageBuilder build;

  const NavigationItem({
    required this.title,
    required this.selectedIcon,
    required this.icon,
    required this.routeName,
    required this.build,
  });
}
