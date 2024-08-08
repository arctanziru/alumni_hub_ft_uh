import 'package:flutter/material.dart';

class CardAlumniWidget extends StatelessWidget {
  final String label;
  final String subtitle;
  final VoidCallback? onTap;

  const CardAlumniWidget({
    super.key,
    required this.label,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white, // Set background color to white
      elevation: 4.0, // Adjust elevation for drop shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), // Adjust border radius if needed
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding to ListTile content
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                label,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold, // Optional: Makes label bold
                ),
              ),
            ),
            // Empty container to ensure label and subtitle are aligned
            const SizedBox(width: 8.0),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.right,
            ),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap, // Handle tap if needed
      ),
    );
  }
}
