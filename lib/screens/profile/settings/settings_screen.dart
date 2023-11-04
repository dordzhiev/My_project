import 'package:courier_app/services/api_service.dart';
import 'package:courier_app/services/foreground/foreground_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

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
              title: const Text('Выйти из аккаунта'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () async {
                GetIt.instance<APIService>().logout();
                await GetIt.instance<ForegroundService>().stopForegroundTask();
                if (context.mounted) {
                  await Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/',
                    (route) => false,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
