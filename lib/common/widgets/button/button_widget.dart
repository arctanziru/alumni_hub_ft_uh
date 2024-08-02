import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
}

class ButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed; // Change to nullable
  final ButtonType? type;

  const ButtonWidget({
    super.key,
    required this.label,
    this.onPressed,
    this.type = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:
          onPressed, // No need to check null here, ElevatedButton handles it
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          type == ButtonType.primary
              ? Colors.red // Use the desired color
              : Colors.grey, // Use the desired color
        ),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: type == ButtonType.primary
              ? Colors.white
              : Colors.blue, // Use the desired color
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
