import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/features/alumni/alumni_search_screen.dart';
import 'package:alumni_hub_ft_uh/features/alumni/bloc/alumni_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../common/widgets/appBar/app_bar_search_widget.dart';
import '../../common/widgets/bottomBar/bottom_bar_widget.dart';
import '../../common/widgets/card/card_alumni_widget.dart';
import 'search_alumni_screen.dart';
import 'popup_alumni_widget.dart';

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
  void initState() {
    context.read<AlumniBloc>().add(AlumniEventGetAngkatan());
    super.initState();
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
                      onPressed: _showFilterDialog, // Show filter dialog
                      icon: Icons.filter_list,
                      label: 'Filter',
                      rounded: false,
                    ),
                    const SizedBox(width: 8.0), // Space between the buttons
                    ButtonWidget(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SearchAlumniScreen(),
                          ),
                        );
                      },
                      icon: Icons.search,
                      label: 'Cari Alumni',
                      rounded: false,
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                BlocBuilder<AlumniBloc, AlumniState>(
                  builder: (context, state) {
                    if (state is AlumniAngkatanError) {
                      debugPrint('Error: ${state.message}');
                      return Center(
                        child: Text(state.message),
                      );
                    }

                    if (state is AlumniAngkatanLoading) {
                      return Skeletonizer(
                          child: Column(
                              children: List.generate(
                        10,
                        (index) => Column(
                          children: [
                            CardAlumniWidget(
                              label:
                                  'Angkatan ${1990 + index} (${1990 + index})',
                              subtitle: '${(index + 1) * 200} Alumni',
                            ),
                            const SizedBox(height: 10.0), // Space between cards
                          ],
                        ),
                      )));
                    }

                    if (state is AlumniAngkatanSuccess) {
                      return RefreshIndicator(
                        onRefresh: () async {
                          context
                              .read<AlumniBloc>()
                              .add(AlumniEventGetAngkatan());
                        },
                        child: CardAlumniWidget(
                          label:
                              'Angkatan ${state.alumniAngkatanResponse.data.angkatan}',
                          subtitle:
                              '${state.alumniAngkatanResponse.data.count} Alumni',
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const AlumniSearchScreen(),
                              ),
                            );
                          },
                        ),
                      );
                    }

                    return const Center(
                      child: Text('No data'),
                    );
                  },
                ),
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
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
