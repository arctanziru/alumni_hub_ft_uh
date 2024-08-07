import 'package:alumni_hub_ft_uh/features/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/footer/footer_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/listTile/list_tile_widget.dart';

class AppBarMenuWidget extends StatelessWidget {
  const AppBarMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.close, color: Colors.black),
              onPressed: () {
                Navigator.pop(context); // Properly handle the close action
              },
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Container(
                height: 35,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.black,
                      width: 1.0), // Outline color and width
                  borderRadius: BorderRadius.circular(40.0), // Rounded corners
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.black),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SearchScreen()),
                          );
                        },
                        child: AbsorbPointer(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(color: Colors.black54),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 13.5), // Adjust padding
                            ),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
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
                context, '/setting'), // Navigate to the SettingScreen
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
          const FooterWidget(),
        ],
      ),
    );
  }
}
