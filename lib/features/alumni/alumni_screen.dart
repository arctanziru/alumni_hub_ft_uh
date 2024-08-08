import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/features/alumni/alumni_search_screen.dart';
import 'package:flutter/material.dart';
import '../../common/widgets/appBar/app_bar_search_widget.dart';
import '../../common/widgets/bottomBar/bottom_bar_widget.dart';
import '../../common/widgets/card/card_alumni_widget.dart';
import '../../common/widgets/popUp/popup_alumni_widget.dart';

class AlumniScreen extends StatefulWidget {
  static const String route = '/alumni';

  const AlumniScreen({super.key});

  @override
  State createState() => _AlumniScreenState();
}

class _AlumniScreenState extends State<AlumniScreen> {
  void _showFilterDialog() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: const PopupAlumniWidget(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarSearchWidget(),
      bottomNavigationBar: const BottomBarWidget(currentIndex: 4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  'Data Alumni',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 16.0),

                // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ButtonWidget(
                      onPressed: () {
                        _showFilterDialog(); // Show filter dialog
                      },
                      icon: Icons.filter_list,
                      label: 'Filter',
                      rounded: false,
                    ),
                    const SizedBox(width: 8.0), // Space between the buttons
                    ButtonWidget(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      icon: Icons.search,
                      label: 'Cari Alumni',
                      rounded: false,
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // List Item using CardAlumniWidget
                Column(
                  children: List.generate(10, (index) => // Adjust the number of cards
                  Column(
                    children: [
                      CardAlumniWidget(
                        label: 'Angkatan ${1990 + index} (${1990 + index})',
                        subtitle: '${(index + 1) * 200} Alumni',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AlumniSearchScreen(),
                          ));
                          // Navigate to AlumniSearchScreen
                        },
                      ),
                      const SizedBox(height: 10.0), // Space between cards
                    ],
                  ),
                  ),
                ),

                // Footer Text
                const SizedBox(height: 20), // Adjust spacing if needed
                Center(
                  child: GestureDetector(
                    onTap: _showFilterDialog, // Show filter dialog on tap
                    child: RichText(
                      text: TextSpan(
                        text: 'Ingin mencari angkatan lain? ',
                        style: Theme.of(context).textTheme.bodySmall,
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'FILTER',
                            style: TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.underline, // Add underline
                              decorationColor: Colors.red, // Set underline color to red
                              decorationThickness: 2.0, // Optional: Adjust thickness of the underline
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
