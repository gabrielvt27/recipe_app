import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/src/modules/auth/screens/auth_apresentation_screen.dart';
import 'package:recipe_app/src/modules/auth/screens/create_account_screen.dart';
import 'package:recipe_app/src/modules/auth/screens/login_screen.dart';
import 'package:recipe_app/src/modules/splash/screens/splash_screen.dart';

class RoutesApp {
  static const String splash = '/splash';
  static const String authApresentation = '/auth-apresentation';
  static const String createAccount = '/create-account';
  static const String login = '/login';
}

final GoRouter router = GoRouter(
  initialLocation: RoutesApp.authApresentation,
  routes: <RouteBase>[
    GoRoute(
      path: RoutesApp.splash,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: RoutesApp.authApresentation,
      builder: (BuildContext context, GoRouterState state) {
        return const AuthApresentationScreen();
      },
    ),
    GoRoute(
      path: RoutesApp.createAccount,
      builder: (BuildContext context, GoRouterState state) {
        return const CreateAccountScreen();
      },
    ),
    GoRoute(
      path: RoutesApp.login,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
  ],
);
