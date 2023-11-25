import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/router/app_router.dart';

class MenuItem {
  MenuItem({
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
  MenuItem(
    title: 'Buttons',
    subtitle: 'All kinds of buttons',
    route: Routes.buttons.name,
    icon: Icons.smart_button,
  ),
  MenuItem(
    title: 'Cards',
    subtitle: 'All kinds of cards',
    route: Routes.cards.name,
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress indicators',
    subtitle: 'Check the progress indicators',
    route: Routes.progress.name,
    icon: Icons.refresh,
  ),
  MenuItem(
    title: 'Snackbars and dialogs',
    subtitle: 'Check the snackbars and dialogs',
    route: Routes.snackbar.name,
    icon: Icons.notification_important,
  ),
  MenuItem(
    title: 'Animated container',
    subtitle: 'Check the animated container',
    route: Routes.animatedContainer.name,
    icon: Icons.animation,
  ),
  MenuItem(
    title: 'UI controls',
    subtitle: 'Check the UI controls',
    route: Routes.uiControls.name,
    icon: Icons.check_box,
  ),
  MenuItem(
    title: 'App Tutorial',
    subtitle: 'Check the App Tutorial',
    route: Routes.tutorial.name,
    icon: Icons.turn_left_outlined,
  ),
  MenuItem(
    title: 'Infinite Scroll',
    subtitle: 'Check the infinite scrolling',
    route: Routes.infiniteScroll.name,
    icon: Icons.swipe_down,
  ),
  MenuItem(
    title: 'Counter with Riverpod',
    subtitle: 'Start the counter',
    route: Routes.counter.name,
    icon: Icons.numbers,
  ),
  MenuItem(
    title: 'Theme Picker with Riverpod',
    subtitle: 'Start the counter',
    route: Routes.themePicker.name,
    icon: Icons.color_lens,
  ),
];

class MenuItemTile extends StatelessWidget {
  const MenuItemTile(this.menuItem, {super.key});

  final MenuItem menuItem;

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
