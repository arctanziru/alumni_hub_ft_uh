import 'package:alumni_hub_ft_uh/features/auth/license_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/sign_in_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/sign_up_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/splash_screen.dart';
import 'package:alumni_hub_ft_uh/features/donation/donation_screen.dart';
import 'package:alumni_hub_ft_uh/features/home/home_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_screen.dart';
import 'package:alumni_hub_ft_uh/features/news/news_screen.dart';
import 'package:alumni_hub_ft_uh/features/search/search_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> routeGenerators(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.route:
      return _buildPageRoute(const SplashScreen());
    case SignInScreen.route:
      return _buildPageRoute(const SignInScreen());
    case SignUpScreen.route:
      return _buildPageRoute(const SignUpScreen());
    case LicenseScreen.route:
      return _buildPageRoute(const LicenseScreen());
    case HomeScreen.route:
      return _buildPageRoute(const HomeScreen());
    case DonationScreen.route:
      return _buildPageRoute(const DonationScreen());
    case NewsScreen.route:
      return _buildPageRoute(const NewsScreen());
    case VacancyScreen.route:
      return _buildPageRoute(const VacancyScreen());
    case SearchScreen.route:
      return _buildPageRoute(const SearchScreen());
    default:
      throw ('Route not found');
  }
}

PageRoute _buildPageRoute(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
