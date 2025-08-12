import 'package:flutter/material.dart';
import 'package:tharicki_demo_project/core/theme/app_sizes.dart';
import 'package:tharicki_demo_project/core/utils/strings.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.md),
      child: Column(
        children: [
          const CircleAvatar(
            radius: AppSizes.xxl,
            backgroundImage: AssetImage(
              'assets/images/user_avatar.png',
            ),
          ),
          const SizedBox(height: AppSizes.md),
          const Text(
            // this name would be fetched from the user data
            'Tháricki',
            style: TextStyle(
              fontSize: AppSizes.lg,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppSizes.xs),
          const Text(
            // this email would be fetched from the user data
            'tharicki@gmail.com',
            style: TextStyle(
              fontSize: AppSizes.md,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: AppSizes.md),
            child: Divider(),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(Strings.settings),
            onTap: () {
              // Navigate to settings page
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(Strings.logout),
            onTap: () {
              // Log out the user
            },
          ),
        ],
      ),
    );
  }
}
