import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const ListTileWidget({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            leading: Icon(icon),
            title: Text(
              title,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: onTap),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(
            thickness: 1, // Thickness of the divider line
            color: Color.fromRGBO(80, 80, 80, 0.5), // Color of the divider line
          ),
        )
      ],
    );
  }
}
