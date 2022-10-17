import 'package:ecommerce_app/groceries_app/core/utils/app_strrings.dart';
import 'package:ecommerce_app/groceries_app/modules/account/presentation/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../../modules/account/presentation/screens/login_screen.dart';
import '../../modules/account/presentation/screens/splash_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case SplashScreen.id:
        return MaterialPageRoute(builder: (context) {
          return const SplashScreen();
        });

      case LoginScreen.id:
        return MaterialPageRoute(builder: (context) {
          return const LoginScreen();
        });
      case SignupScreen.id:
        return MaterialPageRoute(builder: (context) {
          return const SignupScreen();
        });

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: ((context) => const Scaffold(
              body: Center(
                child: Text(AppStrings.noRouteFound),
              ),
            )));
  }
}
