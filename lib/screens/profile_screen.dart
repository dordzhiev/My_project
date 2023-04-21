import 'package:courier_app/common/widgets/bottom_navigation.dart';
import 'package:courier_app/providers/profile_provider.dart';
import 'package:courier_app/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  static const String routeName = '/profile';
  static const String title = 'Профиль';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(ProfileScreen.title),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.exit_to_app),
        //     onPressed: () {
        //       // Handle editing the profile
        //     },
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'John Doe',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'john.doe@example.com',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Личная информация'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle tapping the personal information item
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Настройки'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const SettingsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text('Помощь и обратная связь'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          Consumer<ProfileProvider>(builder: (context, profileProvider, child) {
        return !profileProvider.isAcceptingOrders
            ? FloatingActionButton.extended(
                backgroundColor: profileProvider.isLoading
                    ? Colors.grey.shade400
                    : Colors.green.shade700,
                foregroundColor: const Color(0xFFFFFFFF),
                label: const Text("Принимать заказы"),
                icon: const Icon(Icons.directions_bike),
                onPressed: profileProvider.isLoading
                    ? null
                    : profileProvider.handleAcceptOrders,
              )
            : FloatingActionButton.extended(
                backgroundColor: profileProvider.isLoading
                    ? Colors.grey.shade400
                    : Colors.red.shade700,
                foregroundColor: const Color(0xFFFFFFFF),
                label: const Text("Не принимать заказы"),
                icon: const Icon(Icons.close),
                onPressed: profileProvider.isLoading
                    ? null
                    : profileProvider.handleDeclineOrders,
              );
      }),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
