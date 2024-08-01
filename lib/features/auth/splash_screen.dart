import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final List<String> iconPaths = [
    'assets/logos/unhas.png',
    'assets/logos/ikatek_unhas.png',
  ];

  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigasi ke SignInScreen setelah beberapa detik
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/sign_in');
    });

    return Scaffold(
      body: SafeArea(
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
                    'ALUMNI HUB FT-UH',
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
                          padding: const EdgeInsets.symmetric(horizontal: 8),
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
      ),
    );
  }
}
