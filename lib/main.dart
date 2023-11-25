import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/theme_picker/theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(isDarkThemeProvider);
    final colors = ref.watch(colorsProvider);
    final selectedColor = ref.watch(selectedColorProvider);

    return MaterialApp.router(
      title: 'Widgets App',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
              selectedColor: colors[selectedColor].key,
              isDarkTheme: isDarkTheme)
          .getTheme(),
    );
  }
}
