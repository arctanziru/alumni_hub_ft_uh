import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.black),
        onPressed: () {},
      ),
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hey, Arrayyan',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            'Apa kabar hari ini?',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: Colors.black),
          onPressed: () {},
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
