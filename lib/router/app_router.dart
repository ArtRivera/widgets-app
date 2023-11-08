import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/views.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsView(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsView(),
    ),
  ],
);
