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
  final bool isLoading;
  final bool disabled;

  const ButtonWidget({
    super.key,
    required this.label,
    this.onPressed,
    this.type = ButtonType.primary,
    this.rounded = false,
    this.isLoading = false,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDisabled = isLoading || disabled;

    return ElevatedButton(
      onPressed:
          isDisabled ? null : onPressed, // ElevatedButton handles null check
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          type == ButtonType.primary
              ? isDisabled
                  ? AppColors.primaryColor.withOpacity(0.5)
                  : AppColors.primaryColor
              : isDisabled
                  ? AppColors.secondaryColor.withOpacity(0.5)
                  : AppColors.secondaryColor,
        ),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
              horizontal: 16, vertical: 8), // Smaller padding
        ),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                rounded ? 24 : 8), // Adjust border radius based on rounded
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (isLoading == true) ...[
            const SizedBox(width: 8),
            const SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
                color: Colors.white,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
