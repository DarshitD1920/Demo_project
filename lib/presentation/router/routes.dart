import 'package:demo_project/application/exceptions/route_exception.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../application/screens/home_screen.dart';
import '../../application/screens/splash_screen.dart';


class AppRouter {
  static const String splash = 'splash';
  static const String home = 'home';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return PageTransition(
            child: const SplashScreen(), type: PageTransitionType.rightToLeft);
      case home:
        return PageTransition(
            child: const HomeScreen(), type: PageTransitionType.rightToLeft);
      default:
        throw const RouteException('Route not found!');
    }
  }
}
