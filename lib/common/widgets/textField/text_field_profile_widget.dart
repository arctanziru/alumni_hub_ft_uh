import 'package:flutter/material.dart';

class TextFieldProfileWidget extends StatelessWidget {
  final String label;
  final String description;
  final IconData icon;
  final TextEditingController? controller;
  final bool readOnly;

  const TextFieldProfileWidget({
    super.key,
    required this.label,
    required this.description,
    required this.icon,
    this.controller,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16,bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: controller,
            readOnly: readOnly,
            decoration: InputDecoration(
              labelText: label,
              prefixIcon: Icon(icon),
              filled: true,
              fillColor: Colors.transparent,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
            ),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8), // Space between TextField and Divider
          Container(
            height: 1.0, // Height of the divider line
            color: Colors.grey[300], // Color of the divider line
          ),
        ],
      ),
    );
  }
}
