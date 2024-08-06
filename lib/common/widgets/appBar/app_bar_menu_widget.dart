import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/footer/footer_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/listTile/list_tile_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarMenuWidget extends StatelessWidget {
  const AppBarMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context); // Properly handle the close action
          },
        ),
        elevation: 0, // Removes the shadow beneath the AppBar
        backgroundColor:
            Colors.transparent, // Makes the AppBar background transparent
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
          const ListTileWidget(
              icon: Icons.location_on_outlined, title: 'Sekitar Saya'),
          const ListTileWidget(icon: Icons.mail_outline, title: 'Kemitraan'),
          const ListTileWidget(
              icon: Icons.local_offer_outlined, title: 'E-commerce'),
          const ListTileWidget(icon: Icons.school_outlined, title: 'Mentoring'),
          const ListTileWidget(
              icon: Icons.book_outlined, title: 'Tracer Study'),
          ListTileWidget(
              icon: Icons.settings_outlined,
              title: 'Pengaturan',
              onTap: () => Navigator.pushNamed(
                  context, '/setting') // Navigate to the SettingScreen
              ),
          const SizedBox(height: 12),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Center(
              child: ButtonWidget(
                onPressed: () => Navigator.pushNamed(context, '/sign_in'),
                label: 'Keluar',
              ),
            ),
          ),
          const SizedBox(height: 18), // Add spacing before the footer
          const FooterWidget()
        ],
      ),
    );
  }
}
