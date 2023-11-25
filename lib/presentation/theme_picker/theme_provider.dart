import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkThemeProvider = StateProvider<bool>((ref) => false);

final colorsProvider = Provider<List<MapEntry<ThemeColor, Color>>>(
    (ref) => colorMap.entries.toList());

final selectedColorProvider = StateProvider<int>((ref) => 0);
