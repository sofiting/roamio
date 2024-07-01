import 'package:go_router/go_router.dart';
import 'package:roamio/presentation/screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: SplashScreen.name,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/onboarding_screen',
      name: Onboarding.name,
      builder: (context, state) => const Onboarding(),
    ),
    GoRoute(
      path: '/introduction',
      name: Introduction.name,
      builder: (context, state) => const Introduction(),
    ),
    GoRoute(
      path: '/home_screen',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
