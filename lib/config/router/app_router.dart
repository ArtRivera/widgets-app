import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/views.dart';

enum Routes {
  home,
  buttons,
  cards,
  progress,
  snackbar,
}

final class RoutePaths {
  static const String home = '/';
  static const String buttons = '/buttons';
  static const String cards = '/cards';
  static const String progress = '/progress';
  static const String snackbar = '/snackbar';
}

// GoRouter configuration
final router = GoRouter(
  initialLocation: RoutePaths.home,
  routes: [
    GoRoute(
      path: RoutePaths.home,
      name: Routes.home.name,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: RoutePaths.buttons,
      name: Routes.buttons.name,
      builder: (context, state) => const ButtonsView(),
    ),
    GoRoute(
      path: RoutePaths.cards,
      name: Routes.cards.name,
      builder: (context, state) => const CardsView(),
    ),
    GoRoute(
      path: RoutePaths.progress,
      name: Routes.progress.name,
      builder: (context, state) => const ProgressView(),
    ),
    GoRoute(
      path: RoutePaths.snackbar,
      name: Routes.snackbar.name,
      builder: (context, state) => const SnackbarView(),
    ),
  ],
);
