import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme_controller.dart';
import 'package:widgets_app/presentation/counter/counter_provider.dart';

class CounterView extends ConsumerWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _counter = ref.watch(counterProvider);

    final appTheme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter'), actions: [
        IconButton(
            icon: Icon(appTheme.isDarkTheme
                ? (Icons.brightness_7)
                : Icons.brightness_2_outlined),
            onPressed: () {
              ref.read(appThemeProvider.notifier).toggleTheme();
            })
      ]),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text('Counter'),
          Text('$_counter'),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
