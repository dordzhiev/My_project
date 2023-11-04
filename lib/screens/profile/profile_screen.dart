import 'package:courier_app/common/graphql/fragments/personal_info.graphql.dart';
import 'package:courier_app/providers/profile_provider.dart';
import 'package:courier_app/screens/profile/personal_info/personal_info_screen.dart';
import 'package:courier_app/screens/profile/settings/settings_screen.dart';
import 'package:courier_app/screens/profile/widgets/start_working_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  static const String routeName = '/profile';
  static const String title = 'Профиль';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with AutomaticKeepAliveClientMixin<ProfileScreen> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    final profileProvider = context.read<ProfileProvider>();
    Future.microtask(profileProvider.fetchPersonalInfo);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(ProfileScreen.title),
      ),
      body: const ProfileScreenBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const AcceptingOrdersButton(),
    );
  }
}

class ProfileScreenBody extends StatefulWidget {
  const ProfileScreenBody({super.key});

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

class _ProfileScreenBodyState extends State<ProfileScreenBody> {
  @override
  Widget build(BuildContext context) {
    final profileProvider = context.watch<ProfileProvider>();
    final isLoading = profileProvider.isLoading;
    final errorMessage = profileProvider.errorMessage;
    final personalInfo = profileProvider.personalInfo;

    if (isLoading) {
      return const Center(child: Text('Loading..'));
    }

    if (errorMessage.isNotEmpty) {
      return Center(child: Text(errorMessage));
    }

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildUserBlock(personalInfo),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Личная информация'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: personalInfo == null
                ? null
                : () => Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return const PersonalInfoScreen();
                        },
                      ),
                    ),
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
    );
  }

  Widget buildUserBlock(Fragment$PersonalInfo? personalInfo) {
    final String firstName = personalInfo?.firstname ?? "";
    final String lastName = personalInfo?.lastname ?? "";
    final String email = personalInfo?.email ?? "";

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$firstName $lastName",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  email,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
