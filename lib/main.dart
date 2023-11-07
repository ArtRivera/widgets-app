import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/home/home_view.dart';
import 'package:widgets_app/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: ThemeColor.red).getTheme(),
      home: const HomeView(),
    );
  }
}
