import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardsView extends StatelessWidget {
  const CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cards'),
        ),
        body: const Placeholder(),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: () {
              context.pop();
            }));
  }
}
