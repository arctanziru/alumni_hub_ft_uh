import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:flutter/material.dart';

class AppBarMenuWidget extends StatelessWidget {
  const AppBarMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> iconPaths = [
      'assets/logos/unhas.png',
      'assets/logos/ikatek_unhas.png',
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context); // Properly handle the close action
          },
        ),
        elevation: 0, // Removes the shadow beneath the AppBar
        backgroundColor: Colors.transparent, // Makes the AppBar background transparent
      ),
      body: ListView(
        children: [
          // User profile section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://example.com/path-to-image.jpg'), // Replace with the user's profile image URL
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Arrayyan',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Text('arryyxia@gmail.com'),
                  ],
                ),
              ],
            ),
          ),
          // Menu items with dividers and padding
          _buildListTile(context, Icons.location_on, 'Sekitar Saya'),
          _buildDivider(),
          _buildListTile(context, Icons.mail, 'Kemitraan'),
          _buildDivider(),
          _buildListTile(context, Icons.local_offer, 'E-commerce'),
          _buildDivider(),
          _buildListTile(context, Icons.school, 'Mentoring'),
          _buildDivider(),
          _buildListTile(context, Icons.book, 'Tracer Study'),
          _buildDivider(),
          _buildListTile(context, Icons.settings, 'Pengaturan'),
          _buildDivider(),
          const SizedBox(height: 12), // Add spacing before the logout button
          // Logout button
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Center(
              child: ButtonWidget(
                onPressed: () => Navigator.pushNamed(context, '/sign_in'),
                label: 'Keluar',
              ),
            ),
          ),
          const SizedBox(height: 18), // Add spacing before the footer
          // Footer
          Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: iconPaths
                      .map(
                        (path) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Image.asset(
                        path,
                        width: 75,
                        height: 75,
                      ),
                    ),
                  )
                      .toList(),
                ),
                const SizedBox(height: 12),
                const Text('COPYRIGHT © 2024 IKATEK UNHAS'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build ListTile
  Widget _buildListTile(BuildContext context, IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge, // Use bodyMedium style from the theme
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        // Handle navigation
      },
    );
  }

  // Helper method to build Divider with padding
  Widget _buildDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Divider(
        thickness: 1, // Thickness of the divider line
        color: Colors.grey, // Color of the divider line
      ),
    );
  }
}