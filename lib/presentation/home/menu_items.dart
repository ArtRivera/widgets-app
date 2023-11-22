import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/router/app_router.dart';

class _MenuItem {
  _MenuItem({
    required this.title,
    required this.subtitle,
    required this.route,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final String route;
  final IconData icon;
}

final appMenuItems = [
  _MenuItem(
    title: 'Buttons',
    subtitle: 'All kinds of buttons',
    route: Routes.buttons.name,
    icon: Icons.smart_button,
  ),
  _MenuItem(
    title: 'Cards',
    subtitle: 'All kinds of cards',
    route: Routes.cards.name,
    icon: Icons.credit_card,
  ),
  _MenuItem(
    title: 'Progress indicators',
    subtitle: 'Check the progress indicators',
    route: Routes.progress.name,
    icon: Icons.refresh,
  ),
  _MenuItem(
    title: 'Snackbars and dialogs',
    subtitle: 'Check the snackbars and dialogs',
    route: Routes.snackbar.name,
    icon: Icons.notification_important,
  ),
  _MenuItem(
    title: 'Animated container',
    subtitle: 'Check the animated container',
    route: Routes.animatedContainer.name,
    icon: Icons.animation,
  ),
  _MenuItem(
    title: 'UI controls',
    subtitle: 'Check the UI controls',
    route: Routes.uiControls.name,
    icon: Icons.check_box,
  ),
  _MenuItem(
    title: 'App Tutorial',
    subtitle: 'Check the App Tutorial',
    route: Routes.tutorial.name,
    icon: Icons.turn_left_outlined,
  ),
  _MenuItem(
    title: 'Infinite Scroll',
    subtitle: 'Check the infinite scrolling',
    route: Routes.infiniteScroll.name,
    icon: Icons.swipe_down,
  ),
];

class MenuItemTile extends StatelessWidget {
  const MenuItemTile(this.menuItem, {super.key});

  final _MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return ListTile(
        leading: Icon(menuItem.icon, color: colorScheme.primary),
        trailing:
            Icon(Icons.arrow_forward_ios_outlined, color: colorScheme.primary),
        title: Text(menuItem.title),
        subtitle: Text(menuItem.subtitle),
        onTap: () {
          context.pushNamed(menuItem.route);
        });
  }
}
