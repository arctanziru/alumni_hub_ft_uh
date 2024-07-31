import 'package:flutter/material.dart';

class ButtonFilterWidget extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData? icon;
  final Color? activeColor;
  final bool isActive;

  const ButtonFilterWidget(
      {super.key,
      required this.label,
      required this.onPressed,
      this.icon,
      this.activeColor,
      this.isActive = false});

  @override
  State<ButtonFilterWidget> createState() => _ButtonFilterWidgetState();
}

class _ButtonFilterWidgetState extends State<ButtonFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        backgroundColor: widget.isActive
            ? WidgetStateProperty.all<Color>(widget.activeColor!)
            : WidgetStateProperty.all<Color>(Colors.grey),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
      ),
      child: Row(
        children: [
          Text(
            widget.label,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: widget.isActive ? Colors.white : Colors.black,
                ),
          ),
          if (widget.icon != null) Icon(widget.icon),
        ],
      ),
    );
  }
}
