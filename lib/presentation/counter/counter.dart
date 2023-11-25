import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/counter/counter_provider.dart';
import 'package:widgets_app/presentation/theme_picker/theme_provider.dart';

class CounterView extends ConsumerWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _counter = ref.watch(counterProvider);
    final isDarkTheme = ref.watch(isDarkThemeProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter'), actions: [
        IconButton(
            icon: Icon(isDarkTheme
                ? (Icons.brightness_7)
                : Icons.brightness_2_outlined),
            onPressed: () {
              ref.read(isDarkThemeProvider.notifier).update((state) => !state);
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
