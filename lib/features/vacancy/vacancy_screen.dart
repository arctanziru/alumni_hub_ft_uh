import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_vacancy_widget.dart';
import 'package:flutter/material.dart';

class VacancyScreen extends StatefulWidget {
  static const String route =
      '/vacancy'; // Updated the route to match the new screen name

  const VacancyScreen({super.key});

  @override
  State<VacancyScreen> createState() =>
      _VacancyScreenState(); // Ensure this matches the new state class name
}

class _VacancyScreenState extends State<VacancyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      bottomNavigationBar: const BottomBarWidget(currentIndex: 3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Lowongan Kerja',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardVacancyWidget(
                      title: 'Frontend Developer',
                      company: 'Google',
                      type: 'Full Time',
                      location: 'Jakarta, Indonesia',
                      experience: '2 years',
                      postedAt:
                          DateTime.now().subtract(const Duration(days: 1)),
                      description:
                          'We are looking for a frontend developer to join our team. You will be responsible for developing and maintaining our web applications.',
                      companyImgUrl: 'https://via.placeholder.com/50',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
