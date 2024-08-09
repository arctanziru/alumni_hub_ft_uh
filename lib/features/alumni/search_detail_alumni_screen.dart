import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_alumni_profile_widget.dart';
import '../../common/widgets/appBar/app_bar_secondary_widget.dart';
import 'alumni_profile_detail_screen.dart'; // Import the AlumniProfileDetailScreen

class SearchDetailAlumniScreen extends StatelessWidget {
  static const String route = '/searchDetailAlumni'; // Update the route name here

  const SearchDetailAlumniScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarSecondaryWidget(
        title: 'Profil Alumni',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Nama',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Text(
                'Di angkatan anda',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              // Add a list of CardAlumniProfileWidget instances with spacing
              Expanded(
                child: ListView.separated(
                  itemCount: 10, // Adjust the number of cards as needed
                  separatorBuilder: (context, index) => const SizedBox(height: 10), // Space between cards
                  itemBuilder: (context, index) {
                    final letter = String.fromCharCode(65 + index); // Generates A, B, C, etc.
                    return CardAlumniProfileWidget(
                      name: 'Agus $letter', // Title of the card
                      details: 'Angkatan 2005- Jurusan $letter', // Description of the card
                      avatarUrl: 'https://example.com/avatar${index + 1}.png', // Provide a valid URL or placeholder
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AlumniProfileDetailScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}