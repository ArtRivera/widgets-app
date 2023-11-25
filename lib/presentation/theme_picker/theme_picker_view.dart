import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/theme_picker/theme_provider.dart';

class ThemePickerView extends ConsumerWidget {
  const ThemePickerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkTheme = ref.watch(isDarkThemeProvider);
    final selectedColor = ref.watch(selectedColorProvider);
    final colors = ref.watch(colorsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Picker'),
        actions: [
          IconButton(
              icon: Icon(isDarkTheme ? (Icons.dark_mode) : Icons.light_mode),
              onPressed: () {
                ref
                    .read(isDarkThemeProvider.notifier)
                    .update((state) => !state);
              })
        ],
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            final color = colors[index];

            return RadioListTile(
                title: Text(color.key.name,
                    style: TextStyle(
                        color: color.value, fontWeight: FontWeight.bold)),
                subtitle: Text(color.value.value.toRadixString(16)),
                activeColor: color.value,
                value: index,
                groupValue: selectedColor,
                onChanged: (value) {
                  // TODO: Notificar el cambio
                  ref
                      .read(selectedColorProvider.notifier)
                      .update((state) => index);
                });
          }),
    );
  }
}
