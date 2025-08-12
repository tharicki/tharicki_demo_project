import 'package:flutter/material.dart';
import 'package:tharicki_demo_project/core/theme/app_colors.dart';
import 'package:tharicki_demo_project/core/utils/strings.dart';
import 'package:tharicki_demo_project/feed/presentation/pages/feed_page.dart';
import 'package:tharicki_demo_project/profile/presentation/profile_page.dart';
import 'package:tharicki_demo_project/publishment/presentation/publish_page.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    FeedPage(),
    PublishPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundGrey,
      appBar: AppBar(
        title: const Text(Strings.appTitle),
        iconTheme: IconThemeData(color: AppColors.white),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Publish',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
