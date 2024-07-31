import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final List<String> iconPaths = [
    'assets/icons/Logo_Resmi_UNHAS.png',
    'assets/icons/Logo_Resmi_UNHAS.png',
    'assets/icons/Logo_Resmi_UNHAS.png',
    'assets/icons/Logo_Resmi_UNHAS.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Centered logo and text
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Logo with solid red background
                    Container(
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        color: Colors.red, // Solid red background
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        child: Image.asset(
                          'assets/icons/Logo_Resmi_UNHAS.png',
                          height: 120,
                          width: 120,
                        ),
                      ),
                    ),
                    SizedBox(height: 30), // Space between logo and text
                    Text(
                      'Alumni Hub FT-UH',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'ADAPTIVE COLLABORATIVE',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Row of icons at the bottom
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: iconPaths.map((path) {
                  return Image.asset(
                    path,
                    width: 50,
                    height: 50,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}