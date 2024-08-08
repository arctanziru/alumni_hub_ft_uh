import 'package:alumni_hub_ft_uh/common/utils/app_navigation.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/features/auth/sign_in_screen.dart';
import 'package:alumni_hub_ft_uh/features/home/home_screen.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_bloc.dart';
import 'package:alumni_hub_ft_uh/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  static const route = "/";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final List<String> iconPaths = [
    'assets/logos/unhas.png',
    'assets/logos/ikatek_unhas.png',
  ];

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        final userSession = context.read<UserBloc>().getUserSession();
        debugPrint("User session: $userSession");
        if (userSession?.token != null) {
          debugPrint("User session found");
        } else {
          locator<AppNavigation>().navigateReplace(SignInScreen.route);
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          if (state is UserStateSuccessGetProfile) {
            locator<AppNavigation>().navigateReplace(HomeScreen.route);
          } else if (state is UserStateException) {
            locator<AppNavigation>().navigateReplace(SignInScreen.route);
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Centered logo and text
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // Logo with solid red background
                      Container(
                        padding: const EdgeInsets.all(30.0),
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor, // Solid red background
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/logos/ikatek_unhas.png',
                          height: 160,
                          width: 160,
                        ),
                      ),
                      const SizedBox(height: 30), // Space between logo and text
                      const Text(
                        'IKATEKhub FTUH',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.02,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'ADAPTIVE COLLABORATIVE',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor),
                      ),
                    ],
                  ),
                ),
                // Row of icons at the bottom
                Padding(
                  padding: const EdgeInsets.all(28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: iconPaths
                        .map(
                          (path) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Image.asset(
                                path,
                                width: 50,
                                height: 50,
                              )),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
