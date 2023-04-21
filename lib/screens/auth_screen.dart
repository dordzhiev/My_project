import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/auth_provider.dart';
import 'orders_screen/orders_screen.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({Key? key}) : super(key: key);

  static const routeName = '/login';
  static const title = 'Авторизация';

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Consumer<AuthProvider>(
          builder: (context, authProvider, _) {
            return Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Логин',
                      prefixIcon: Icon(Icons.person),
                    ),
                    controller: _usernameController,
                    validator: (value) {
                      return value == null || value.isEmpty
                          ? 'Введите логин'
                          : null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Пароль',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                    controller: _passwordController,
                    validator: (value) {
                      return value == null || value.isEmpty
                          ? 'Введите пароль'
                          : null;
                    },
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: 150.0,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                          // backgroundColor: Colors.black87,
                          ),
                      onPressed: authProvider.isLoading
                          ? null
                          : () async {
                              if (_formKey.currentState!.validate()) {
                                await _handeAuthenticate(authProvider, context);
                              }
                            },
                      child: const Text('Войти'),
                    ),
                  ),
                  // const SizedBox(height: 20),
                  // TextButton(
                  //   onPressed: () {},
                  //   child: const Text(
                  //     'Забыли пароль?',
                  //     style: TextStyle(color: Colors.grey),
                  //   ),
                  // ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _handeAuthenticate(
    AuthProvider authProvider,
    BuildContext context,
  ) async {
    final username = _usernameController.text;
    final password = _passwordController.text;
    await authProvider.login(
      username: username,
      password: password,
    );
    if (context.mounted) {
      if (authProvider.errorMessage.isEmpty) {
        Navigator.of(context).pushReplacementNamed('/');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(authProvider.errorMessage),
          ),
        );
      }
    }
  }
}
