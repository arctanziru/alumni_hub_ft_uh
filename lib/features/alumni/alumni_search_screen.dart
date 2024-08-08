import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_secondary_widget.dart';
import 'package:flutter/material.dart';
import '../../common/widgets/card/card_alumni_widget.dart'; // Import your CardAlumniWidget

class AlumniSearchScreen extends StatelessWidget {
  static const String route = '/alumniSearch'; // Define the route name here

  const AlumniSearchScreen({super.key});

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
                    'Angkatan 2022',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Add a list of CardAlumniWidget instances with spacing
              Expanded(
                child: ListView.separated(
                  itemCount: 10, // Adjust the number of cards as needed
                  separatorBuilder: (context, index) => const SizedBox(height: 10), // Space between cards
                  itemBuilder: (context, index) {
                    final letter = String.fromCharCode(65 + index); // Generates A, B, C, etc.
                    return CardAlumniWidget(
                      label: 'Jurusan $letter',
                      subtitle: '${(index + 1) * 100} Alumni',
                      onTap: () {
                        // Handle card tap
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
