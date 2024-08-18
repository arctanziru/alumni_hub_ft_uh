import 'package:alumni_hub_ft_uh/features/alumni/alumni_detail_search_screen.dart';
import 'package:alumni_hub_ft_uh/features/alumni/alumni_profile_detail_screen.dart';
import 'package:alumni_hub_ft_uh/features/alumni/alumni_screen.dart';
import 'package:alumni_hub_ft_uh/features/alumni/alumni_search_screen.dart';
import 'package:alumni_hub_ft_uh/features/alumni/search_alumni_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/claim_alumni_data_screen.dart';
import 'package:alumni_hub_ft_uh/features/coming_soon/coming_soon_screen.dart';
import 'package:alumni_hub_ft_uh/features/event/event_screen.dart';
import 'package:alumni_hub_ft_uh/features/user/screens/profile_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/license_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/sign_in_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/insert_alumni_data_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/splash_screen.dart';
import 'package:alumni_hub_ft_uh/features/donation/donation_screen.dart';
import 'package:alumni_hub_ft_uh/features/home/home_screen.dart';
import 'package:alumni_hub_ft_uh/features/user/screens/setting_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_screen.dart';
import 'package:alumni_hub_ft_uh/features/news/news_screen.dart';
import 'package:alumni_hub_ft_uh/features/search/search_screen.dart';
import 'package:flutter/material.dart';

import 'features/auth/sign_up_screen.dart';

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
    case ProfileScreen.route:
      return _buildPageRoute(const ProfileScreen());
    case AlumniScreen.route:
      return _buildPageRoute(const AlumniScreen());
    case AlumniSearchScreen.route:
      return _buildPageRoute(AlumniSearchScreen(
          alumniJurusanParams: settings.arguments as dynamic));
    case AlumniDetailSearchScreen.route:
      return _buildPageRoute(AlumniDetailSearchScreen(
          alumniGetManyParams: settings.arguments as dynamic));
    case AlumniProfileDetailScreen.route:
      return _buildPageRoute(
          AlumniProfileDetailScreen(alumni: settings.arguments as dynamic));
    case SearchAlumniScreen.route:
      return _buildPageRoute(const SearchAlumniScreen());
    case ClaimAlumniDataScreen.route:
      return _buildPageRoute(const ClaimAlumniDataScreen());
    case InsertAlumniDataScreen.route:
      return _buildPageRoute(const InsertAlumniDataScreen());
    case ComingSoonScreen.route:
      return _buildPageRoute(const ComingSoonScreen());
    case EventScreen.route:
      return _buildPageRoute(const EventScreen());

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
