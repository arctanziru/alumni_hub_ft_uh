import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_secondary_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_vacancy_widget.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_detail_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/domain/vacancy_model.dart';

class VacancySearchScreen extends StatefulWidget {
  static const String route = '/vacancy-search';

  const VacancySearchScreen({super.key});

  @override
  State<VacancySearchScreen> createState() => _VacancySearchScreenState();
}

class _VacancySearchScreenState extends State<VacancySearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarSecondaryWidget(
        title: 'FRONTEND DEVELOPER',
        subtitle: 'LOWONGAN KERJA',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Content 1
                    CardVacancyWidget(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => VacancyDetailScreen(
                              vacancy: VacancyModel(
                                id: '1',
                                title: 'Frontend Developer',
                                company: 'Google',
                                type: 'Full Time',
                                location: 'Jakarta, Indonesia',
                                experience: '2 years',
                                createdAt: DateTime.now().microsecondsSinceEpoch,
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
                            ),
                          ),
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
                    const SizedBox(height: 16),
                    // Content 2
                    CardVacancyWidget(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => VacancyDetailScreen(
                              vacancy: VacancyModel(
                                id: '2',
                                title: 'Frontend Developer',
                                company: 'Microsoft',
                                type: 'Part Time',
                                location: 'Bandung, Indonesia',
                                experience: '3 years',
                                createdAt: DateTime.now().microsecondsSinceEpoch,
                                description:
                                'We are looking for a backend developer to join our team. You will be responsible for building and maintaining our server-side applications.',
                                backgroundUrl:
                                'https://via.placeholder.com/50',
                                companyLogo:
                                'https://via.placeholder.com/50',
                                requirements: const [
                                  'Experience with Node.js',
                                  'Experience with SQL and NoSQL databases',
                                  'Experience with Docker',
                                ],
                                salary: 'Rp 8.000.000 - Rp 12.000.000',
                                url: 'https://microsoft.com',
                              ),
                            ),
                          ),
                        );
                      },
                      title: 'Frontend Developer',
                      company: 'Microsoft',
                      type: 'Part Time',
                      location: 'Bandung, Indonesia',
                      experience: '3 years',
                      postedAt:
                      DateTime.now().subtract(const Duration(days: 2)),
                      description:
                      'We are looking for a backend developer to join our team. You will be responsible for building and maintaining our server-side applications.',
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
