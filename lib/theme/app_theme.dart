import 'package:flutter/material.dart';

enum ThemeColor { red, pink, purple }

const Map<ThemeColor, Color> _colorMap = {
  ThemeColor.red: Colors.red,
  ThemeColor.pink: Colors.pink,
  ThemeColor.purple: Colors.purple
};

class AppTheme {
  AppTheme({this.selectedColor = ThemeColor.red});

  final ThemeColor selectedColor;

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorMap[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
