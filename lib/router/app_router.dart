import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/views.dart';

final class Routes {
  static const String home = '/';
  static const String buttons = '/buttons';
  static const String cards = '/cards';
}

// GoRouter configuration
final router = GoRouter(
  initialLocation: Routes.home,
  routes: [
    GoRoute(
      path: Routes.home,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: Routes.buttons,
      builder: (context, state) => const ButtonsView(),
    ),
    GoRoute(
      path: Routes.cards,
      builder: (context, state) => const CardsView(),
    ),
  ],
);
