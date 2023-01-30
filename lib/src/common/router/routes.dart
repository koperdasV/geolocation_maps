import 'package:flutter/material.dart';
import 'package:geolocation_maps/src/feature/home_screen.dart';
import 'package:geolocation_maps/src/ui/auth/auth_screen.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

/// HomeRoute
@TypedGoRoute<HomeRoute>(
  path: '/',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context) {
    return const HomeScreen();
  }
}

/// RegistrationRoute
@TypedGoRoute<RegistrationRoute>(path: '/registration')
class RegistrationRoute extends GoRouteData {
  const RegistrationRoute();

  @override
  Widget build(BuildContext context) => const AuthScreen();
}
