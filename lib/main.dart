import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_menu_widget.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/constants/theme.dart';
import 'package:alumni_hub_ft_uh/features/auth/splash_screen.dart';
import 'package:alumni_hub_ft_uh/route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AlumniHubFtUhApp());
}

class AlumniHubFtUhApp extends StatelessWidget {
  const AlumniHubFtUhApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IKATEKhub FTUH',
      debugShowCheckedModeBanner: false,
      color: AppColors.primaryColor,
      theme: appTheme,
      home: const SplashScreen(),
      onGenerateRoute: routeGenerators,
    );
  }
}
