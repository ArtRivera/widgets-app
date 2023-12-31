// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

enum ThemeColor { red, pink, purple, blue, green, orange, yellow }

const Map<ThemeColor, Color> colorMap = {
  ThemeColor.red: Colors.red,
  ThemeColor.pink: Colors.pink,
  ThemeColor.purple: Colors.purple,
  ThemeColor.blue: Colors.blue,
  ThemeColor.green: Colors.green,
  ThemeColor.orange: Colors.orange,
  ThemeColor.yellow: Colors.yellow
};

@immutable
class AppTheme {
  AppTheme({this.selectedColor = ThemeColor.red, this.isDarkTheme = false});

  final ThemeColor selectedColor;
  final bool isDarkTheme;

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorMap[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));


  List<MapEntry<ThemeColor, Color>> get colors => colorMap.entries.toList();

  AppTheme copyWith({
    ThemeColor? selectedColor,
    bool? isDarkTheme,
  }) {
    return AppTheme(
      selectedColor: selectedColor ?? this.selectedColor,
      isDarkTheme: isDarkTheme ?? this.isDarkTheme,
    );
  }
}
