import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
}

class ButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final ButtonType type;
  final bool rounded;
  final IconData? icon;
  final bool isLoading;
  final bool disabled;
  final Color? color; // Add this parameter

  const ButtonWidget({
    super.key,
    required this.label,
    this.onPressed,
    this.type = ButtonType.primary,
    this.rounded = false,
    this.icon,
    this.isLoading = false,
    this.disabled = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final bool isButtonDisabled = isLoading || disabled;

    return ElevatedButton(
      onPressed: isButtonDisabled ? null : onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          isButtonDisabled
              ? (color ?? (type == ButtonType.primary
              ? AppColors.primaryColor
              : AppColors.secondaryColor)).withOpacity(0.5)
              : color ?? (type == ButtonType.primary
              ? AppColors.primaryColor
              : AppColors.secondaryColor),
        ),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(rounded ? 24 : 8),
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null && !isLoading) ...[
            Icon(icon, color: Colors.white, size: 20),
            const SizedBox(width: 8),
          ],
          if (isLoading) ...[
            const SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 8),
          ],
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}