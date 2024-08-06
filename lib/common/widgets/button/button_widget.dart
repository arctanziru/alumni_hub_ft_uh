import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
}

class ButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed; // Nullable callback
  final ButtonType type;
  final bool rounded;

  const ButtonWidget({
    super.key,
    required this.label,
    this.onPressed,
    this.type = ButtonType.primary,
    this.rounded = false, // Set default value
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // ElevatedButton handles null check
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          type == ButtonType.primary
              ? AppColors.primaryColor
              : AppColors.secondaryColor,
        ),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(rounded ? 24 : 8), // Adjust border radius based on rounded
          ),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}