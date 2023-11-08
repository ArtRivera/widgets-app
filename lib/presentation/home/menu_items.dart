import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/buttons/buttons_view.dart';

class _MenuItem {
  const _MenuItem({
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

const appMenuItems = [
  _MenuItem(
    title: 'Buttons',
    subtitle: 'All kinds of buttons',
    route: '/buttons',
    icon: Icons.smart_button,
  ),
  _MenuItem(
    title: 'Cards',
    subtitle: 'All kinds of cards',
    route: '/cards',
    icon: Icons.credit_card,
  )
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
          context.push(menuItem.route);
        });
  }
}
