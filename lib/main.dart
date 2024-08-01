import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/constants/theme.dart';
import 'package:alumni_hub_ft_uh/features/auth/sign_in_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/sign_up_screen.dart';
import 'package:alumni_hub_ft_uh/features/auth/splash_screen.dart';
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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      color: AppColors.primaryColor,
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/sign_in': (context) => const SignInScreen(),
        '/sign_up': (context) => const SignUpScreen(),
      },
    );
  }
}
