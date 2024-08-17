import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_secondary_widget.dart';
import 'package:alumni_hub_ft_uh/features/alumni/bloc/alumni_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../common/widgets/card/card_alumni_widget.dart'; // Import your CardAlumniWidget
// Import the new screen
import 'package:alumni_hub_ft_uh/features/alumni/alumni_detail_search_screen.dart';

class AlumniSearchScreen extends StatelessWidget {
  static const String route = '/alumniSearch'; // Define the route name here

  const AlumniSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final alumniBloc = context.read<AlumniBloc>();

    return Scaffold(
      appBar: AppBarSecondaryWidget(
        title: 'Angkatan ${alumniBloc.angkatan}',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.separated(
                  itemCount: 10, // Adjust the number of cards as needed
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10), // Space between cards
                  itemBuilder: (context, index) {
                    final letter = String.fromCharCode(
                        65 + index); // Generates A, B, C, etc.
                    return CardAlumniWidget(
                      label: 'Jurusan $letter',
                      subtitle: '${(index + 1) * 100} Alumni',
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(AlumniDetailSearchScreen.route);
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
