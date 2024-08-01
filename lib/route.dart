import 'package:alumni_hub_ft_uh/features/auth/sign_in_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/sign_up_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/splash_screen.dart';
import 'package:alumni_hub_ft_uh/features/home/home_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> routeGenerators(settings) {
  switch (settings.name) {
    case SplashScreen.route:
      return MaterialPageRoute(builder: (_) => const SplashScreen());

    case SignInScreen.route:
      return MaterialPageRoute(builder: (_) => const SignInScreen());

    case SignUpScreen.route:
      return MaterialPageRoute(builder: (_) => const SignUpScreen());

    case HomeScreen.route:
      return MaterialPageRoute(builder: (_) => const HomeScreen());

    default:
      throw ('Route not found');
  }
}
