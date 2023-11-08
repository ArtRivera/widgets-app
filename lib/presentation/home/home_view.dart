import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/home/menu_items.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets App'),
      ),
      body: ListView.builder(
          itemCount: appMenuItems.length,
          itemBuilder: (context, index) {
            final menuItem = appMenuItems[index];

            return MenuItemTile(
              menuItem,
            );
          }),
    );
  }
}
