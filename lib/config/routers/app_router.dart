import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/routers/route_names.dart';
import 'package:flutter_application_1/features/BottomNavbar/bottom_navbar.dart';
import 'package:flutter_application_1/features/auth/view/sign_in.dart';
import 'package:flutter_application_1/features/home/view/home.dart';
import 'package:flutter_application_1/features/onboarding/view/onboarding.dart';

class AppRouter {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(
          const OnboardingView(),
        );

      case RouteNames.signIn:
        return _materialRoute(
          const SignIn(),
        );

      case RouteNames.home:
        return _materialRoute(
          const Home(),
        );
      case RouteNames.bottomNavbar:
        return _materialRoute(
          const BottomNavbar(),
        );

      default:
        return _materialRoute(
          const OnboardingView(),
        );
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
