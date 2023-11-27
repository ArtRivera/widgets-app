import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme_controller.dart';

class ThemePickerView extends ConsumerWidget {
  const ThemePickerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   
    final appTheme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Picker'),
        actions: [
          IconButton(
              icon: Icon(
                  appTheme.isDarkTheme ? (Icons.dark_mode) : Icons.light_mode),
              onPressed: () {
                ref.read(appThemeProvider.notifier).toggleTheme();
              })
        ],
      ),
      body: ListView.builder(
          itemCount: appTheme.colors.length,
          itemBuilder: (context, index) {
            final color = appTheme.colors[index];

            return RadioListTile(
                title: Text(color.key.name,
                    style: TextStyle(
                        color: color.value, fontWeight: FontWeight.bold)),
                subtitle: Text(color.value.value.toRadixString(16)),
                activeColor: color.value,
                value: color.key,
                groupValue: appTheme.selectedColor,
                onChanged: (value) {
                  ref.read(appThemeProvider.notifier).updateColor(color.key);
          
                });
          }),
    );
  }
}
