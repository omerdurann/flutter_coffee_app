import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/routers/route_names.dart';
import 'package:flutter_application_1/featuress/auth/view/sign_in.dart';
import 'package:flutter_application_1/featuress/onboaeding/view/onboarding.dart';

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
