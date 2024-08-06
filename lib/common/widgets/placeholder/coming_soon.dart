import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.hourglass_empty,
            size: 48,
            color: Colors.grey,
          ),
          const SizedBox(height: 24),
          Text(
            'Coming Soon',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.grey,
                ),
          ),
        ],
      ),
    );
  }
}
