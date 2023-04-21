import 'package:flutter/material.dart';

class AuthChecker extends StatelessWidget {
  const AuthChecker({
    super.key,
    required this.isAuthenticated,
    required this.loginScreen,
    required this.homeScreen,
  });

  final bool isAuthenticated;
  final Widget loginScreen;
  final Widget homeScreen;

  @override
  Widget build(BuildContext context) {
    return isAuthenticated ? homeScreen : loginScreen;
  }
}
