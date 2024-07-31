import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final bool obscureText;
  final FocusNode? focusNode;

  const TextFieldWidget({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
    this.obscureText = false,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        focusNode: focusNode,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
      ),
    );
  }
}