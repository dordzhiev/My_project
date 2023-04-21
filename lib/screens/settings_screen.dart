import 'package:courier_app/providers/auth_provider.dart';
import 'package:courier_app/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Настройки")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Выйти из акккаунта'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                GetIt.instance<APIService>().logout();
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/',
                  ModalRoute.withName('/'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
