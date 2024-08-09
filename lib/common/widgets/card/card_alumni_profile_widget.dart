import 'package:flutter/material.dart';

class CardAlumniProfileWidget extends StatelessWidget {
  final String name;
  final String details;
  final String avatarUrl; // Add avatar URL parameter
  final VoidCallback? onTap;

  const CardAlumniProfileWidget({
    super.key,
    required this.name,
    required this.details,
    required this.avatarUrl, // Initialize avatar URL
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
        leading: CircleAvatar(
          backgroundImage: NetworkImage(avatarUrl), // Use NetworkImage for loading avatar
          radius: 20.0, // Adjust radius for smaller avatar size
        ),
        title: Text(
          name,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold, // Optional: Makes name bold
          ),
        ),
        subtitle: Text(
          details,
          style: Theme.of(context).textTheme.bodySmall, // Optional: Adjust subtitle style
        ),
        onTap: onTap, // Handle tap if needed
      ),
    );
  }
}