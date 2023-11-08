import 'package:flutter/material.dart';
import 'package:widgets_app/router/app_router.dart';
import 'package:widgets_app/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: ThemeColor.purple).getTheme(),
    );
  }
}
