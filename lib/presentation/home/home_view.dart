import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/home/menu_items.dart';
import 'package:widgets_app/shared/side_menu.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
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
      drawer: SideMenu(
        scaffoldKey: scaffoldKey,
        menuItems: appMenuItems,
      ),
    );
  }
}
