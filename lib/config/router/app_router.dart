import 'package:go_router/go_router.dart';
import 'package:roamio/presentation/log_in/log_in_screen.dart';
import 'package:roamio/presentation/screen.dart';
import 'package:roamio/presentation/sign_up/sign_up_screen.dart';

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
      path: '/signup',
      name: SignUpScreen.name,
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: '/login',
      name: LogInScreen.name,
      builder: (context, state) => const LogInScreen(),
    ),
    GoRoute(
      path: '/home_screen',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
