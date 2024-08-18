import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_secondary_widget.dart';
import 'package:alumni_hub_ft_uh/features/alumni/popup_alumni_widget.dart';
import 'package:flutter/material.dart';
import '../../common/widgets/bottomBar/bottom_bar_widget.dart';
import '../../common/widgets/button/button_widget.dart';
import '../../common/widgets/card/card_alumni_widget.dart';

class SearchAlumniScreen extends StatefulWidget {
  static const String route = '/search-alumni';

  const SearchAlumniScreen({super.key});

  @override
  State createState() => _SearchAlumniScreenState();
}

class _SearchAlumniScreenState extends State<SearchAlumniScreen> {
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
    // Access the theme from the context
    final theme = Theme.of(context);

    return Scaffold(
      appBar: const AppBarSecondaryWidget(title: 'Cari Alumni'),
      bottomNavigationBar: const BottomBarWidget(currentIndex: 4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Expanded Search Bar
                SizedBox(
                  width: double
                      .infinity, // Make the TextField take full width of its parent
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Shadow color
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: const Offset(0, 4), // Shadow position
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Nama',
                        labelStyle: theme.textTheme
                            .bodyMedium, // Apply bodyMedium text style
                        prefixIcon: const Icon(Icons.search),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Filter Button on the left
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ButtonWidget(
                      onPressed: _showFilterDialog,
                      icon: Icons.filter_list,
                      label: 'Filter',
                      rounded: false,
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // List Item using CardAlumniWidget
                Column(
                  children: List.generate(
                    10,
                    (index) => Column(
                      children: [
                        CardAlumniWidget(
                          label: 'Angkatan ${1990 + index} (${1990 + index})',
                          subtitle: '${(index + 1) * 200} Alumni',
                        ),
                        const SizedBox(height: 10.0), // Space between cards
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Footer Text (at the bottom)
                Center(
                  child: GestureDetector(
                    onTap: _showFilterDialog, // Show filter dialog on tap
                    child: RichText(
                      text: TextSpan(
                        text: 'Ingin mencari angkatan lain? ',
                        style: theme.textTheme.bodySmall,
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'FILTER',
                            style: TextStyle(
                              color: Colors.red,
                              decoration:
                                  TextDecoration.underline, // Add underline
                              decorationColor:
                                  Colors.red, // Set underline color to red
                              decorationThickness:
                                  2.0, // Optional: Adjust thickness of the underline
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
