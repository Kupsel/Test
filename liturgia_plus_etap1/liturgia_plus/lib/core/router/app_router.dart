import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';

/// Nazwy tras — używane zamiast surowych ścieżek, żeby uniknąć literówek
/// przy `context.goNamed(...)` w całej aplikacji.
abstract final class AppRoutes {
  static const String splash = 'splash';
  static const String home = 'home';
  static const String books = 'books';
  static const String tutorials = 'tutorials';
  static const String profile = 'profile';
}

/// Provider z instancją [GoRouter].
///
/// Trzymanie routera jako Riverpod provider (zamiast globalnej zmiennej)
/// pozwoli w przyszłości reagować np. na stan "czy onboarding ukończony"
/// i przekierowywać użytkownika bez przebudowy całego drzewa widgetów.
final Provider<GoRouter> appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        name: AppRoutes.home,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
});
