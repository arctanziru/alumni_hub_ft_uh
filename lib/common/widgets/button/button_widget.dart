import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
}

class ButtonWidget extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final ButtonType? type;

  const ButtonWidget(
      {super.key,
      required this.label,
      required this.onPressed,
      this.type = ButtonType.primary});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          widget.type == ButtonType.primary
              ? AppColors.primaryColor
              : AppColors.secondaryColor,
        ),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
      ),
      child: Text(widget.label,
          style: TextStyle(
            color: widget.type == ButtonType.primary
                ? Colors.white
                : AppColors.primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
