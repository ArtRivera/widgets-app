import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme_controller.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final appTheme = ref.watch(appThemeProvider);

    return MaterialApp.router(
      title: 'Widgets App',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
    );
  }
}
