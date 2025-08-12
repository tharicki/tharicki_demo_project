import 'package:flutter/material.dart';
import 'package:tharicki_demo_project/core/injection/injection.dart';
import 'package:tharicki_demo_project/core/presentation/base_page.dart';
import 'package:tharicki_demo_project/core/theme/app_theme.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Social Media",
      theme: AppTheme.theme,
      home: const BasePage(),
    );
  }
}
