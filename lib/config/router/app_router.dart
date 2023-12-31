import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/counter/counter.dart';
import 'package:widgets_app/presentation/theme_picker/theme_picker_view.dart';
import 'package:widgets_app/presentation/views.dart';

enum Routes {
  home,
  buttons,
  cards,
  progress,
  snackbar,
  animatedContainer,
  uiControls,
  tutorial,
  infiniteScroll,
  counter,
  themePicker,
}

final class RoutePaths {
  static const String home = '/';
  static const String buttons = '/buttons';
  static const String cards = '/cards';
  static const String progress = '/progress';
  static const String snackbar = '/snackbar';
  static const String animatedContainer = '/animated-container';
  static const String uiControls = '/ui-controls';
  static const String tutorial = '/tutorial';
  static const String infiniteScroll = '/infinite-scroll';
  static const String counter = '/counter';
  static const String themePicker = '/theme-picker';
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
    GoRoute(
      path: RoutePaths.animatedContainer,
      name: Routes.animatedContainer.name,
      builder: (context, state) => const AnimatedView(),
    ),
    GoRoute(
      path: RoutePaths.uiControls,
      name: Routes.uiControls.name,
      builder: (context, state) => const UIControlsView(),
    ),
    GoRoute(
      path: RoutePaths.tutorial,
      name: Routes.tutorial.name,
      builder: (context, state) => const AppTutorialView(),
    ),
    GoRoute(
      path: RoutePaths.infiniteScroll,
      name: Routes.infiniteScroll.name,
      builder: (context, state) => const InfiniteScrollView(),
    ),
    GoRoute(
      path: RoutePaths.counter,
      name: Routes.counter.name,
      builder: (context, state) => const CounterView(),
    ),
    GoRoute(
      path: RoutePaths.themePicker,
      name: Routes.themePicker.name,
      builder: (context, state) => const ThemePickerView(),
    ),
  ],
);
