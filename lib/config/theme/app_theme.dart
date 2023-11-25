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

class AppTheme {
  AppTheme({this.selectedColor = ThemeColor.red, this.isDarkTheme = false});

  final ThemeColor selectedColor;
  final bool isDarkTheme;

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorMap[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
