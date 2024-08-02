import 'package:alumni_hub_ft_uh/features/auth/license_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/sign_in_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/sign_up_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/splash_screen.dart';
import 'package:alumni_hub_ft_uh/features/donation/donation_screen.dart';
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

    case LicenseScreen.route:
      return MaterialPageRoute(builder: (_) => const LicenseScreen());

    case HomeScreen.route:
      return MaterialPageRoute(builder: (_) => const HomeScreen());

    case DonationScreen.route:
      return MaterialPageRoute(builder: (_) => const DonationScreen());

    default:
      throw ('Route not found');
  }
}
