import 'package:flutter/material.dart';

class CardAlumniProfileWidget extends StatelessWidget {
  final String name;
  final String details;
  final String? avatarUrl;
  final VoidCallback? onTap;

  const CardAlumniProfileWidget({
    super.key,
    required this.name,
    required this.details,
    this.avatarUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
        leading: CircleAvatar(
          backgroundImage: avatarUrl != null
              ? NetworkImage(avatarUrl!)
              : Image.asset('assets/logos/ikatek_unhas.webp').image,
          radius: 20.0,
        ),
        title: Text(
          name,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        subtitle: Text(
          details,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        onTap: onTap,
      ),
    );
  }
}
