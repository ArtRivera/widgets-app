import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/home/menu_items.dart';

class SideMenu extends StatefulWidget {
  const SideMenu(
      {super.key, required this.menuItems, required this.scaffoldKey});

  final List<MenuItem> menuItems;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
        selectedIndex: selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            selectedIndex = index;
          });

          context.pushNamed(widget.menuItems[index].route);
          widget.scaffoldKey.currentState?.closeDrawer();
        },
        children: [
          ...widget.menuItems.map((item) {
            return NavigationDrawerDestination(
              icon: Icon(item.icon),
              label: Text(item.title),
            );
          })
        ]);
  }
}
