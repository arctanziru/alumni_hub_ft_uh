import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> iconPaths = [
      'assets/logos/unhas.png',
      'assets/logos/ikatek_unhas.webp',
    ];

    return Padding(
      padding: const EdgeInsets.all(28),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: iconPaths
                .map(
                  (path) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(
                      path,
                      width: 75,
                      height: 75,
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 12),
          const Text('COPYRIGHT © 2024 IKATEK UNHAS'),
        ],
      ),
    );
  }
}
