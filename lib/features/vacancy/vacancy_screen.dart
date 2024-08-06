import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_vacancy_widget.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/domain/vacancy_model.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_detail_screen.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/appBar/app_bar_search_widget.dart';

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
      appBar: const AppBarSearchWidget(),
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
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => VacancyDetailScreen(
                                      vacancy: VacancyModel(
                                        id: '1',
                                        title: 'Frontend Developer',
                                        company: 'Google',
                                        type: 'Full Time',
                                        location: 'Jakarta, Indonesia',
                                        experience: '2 years',
                                        createdAt: DateTime.now()
                                            .microsecondsSinceEpoch,
                                        description:
                                            'We are looking for a frontend developer to join our team. You will be responsible for developing and maintaining our web applications.',
                                        backgroundUrl:
                                            'https://via.placeholder.com/50',
                                        companyLogo:
                                            'https://via.placeholder.com/50',
                                        requirements: const [
                                          'Experience with ReactJS',
                                          'Experience with HTML, CSS, and JavaScript',
                                          'Experience with Git',
                                        ],
                                        salary: 'Rp 10.000.000 - Rp 15.000.000',
                                        url: 'https://google.com',
                                      ),
                                    )) // Updated the route to match the new screen name
                            );
                      },
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
