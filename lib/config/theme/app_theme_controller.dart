import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

class AppThemeNotifier extends StateNotifier<AppTheme> {
  AppThemeNotifier() : super(AppTheme());

  void toggleTheme() {
    state = state.copyWith(isDarkTheme: !state.isDarkTheme);
  }

  void updateColor(ThemeColor color) {
    state = state.copyWith(selectedColor: color);
  }
}

final appThemeProvider = StateNotifierProvider<AppThemeNotifier, AppTheme>(
    (ref) => AppThemeNotifier());
