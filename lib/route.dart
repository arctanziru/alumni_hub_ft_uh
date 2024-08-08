import 'package:alumni_hub_ft_uh/features/alumni/alumni_screen.dart';
import 'package:alumni_hub_ft_uh/features/profile/profile_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/license_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/sign_in_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/sign_up_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/splash_screen.dart';
import 'package:alumni_hub_ft_uh/features/donation/donation_screen.dart';
import 'package:alumni_hub_ft_uh/features/home/home_screen.dart';
import 'package:alumni_hub_ft_uh/features/news/news_search_screen.dart';
import 'package:alumni_hub_ft_uh/features/user/screens/setting_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_screen.dart';
import 'package:alumni_hub_ft_uh/features/news/news_screen.dart';
import 'package:alumni_hub_ft_uh/features/search/search_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_search_screen.dart';
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
    case SettingScreen.route:
      return _buildPageRoute(const SettingScreen());
    case NewsSearchScreen.route:
      return _buildPageRoute(const NewsSearchScreen());
    case VacancySearchScreen.route:
      return _buildPageRoute(const VacancySearchScreen());
    case ProfileScreen.route:
      return _buildPageRoute(const ProfileScreen());
    case AlumniScreen.route:
      return _buildPageRoute(const AlumniScreen());
    default:
      throw ('Route not found');
  }
}

PageRoute _buildPageRoute(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
