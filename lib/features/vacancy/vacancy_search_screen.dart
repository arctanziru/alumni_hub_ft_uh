import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_secondary_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_vacancy_widget.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_detail_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/domain/models/vacancy_model.dart';

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
        title: 'Vacancy Search',
        subtitle: 'Lowongan Kerja',
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
                                idLoker: 1,
                                judul: 'Frontend Developer',
                                idPerusahaan: 8,
                                slug: 'frontend-developer',
                                konten:
                                'We are looking for a frontend developer to join our team. You will be responsible for developing and maintaining our web applications.',
                                tglSelesai: '2024-12-31',
                                lokasi: 'Jakarta, Indonesia',
                                pengalamanKerja: '2 years',
                                role: 'Frontend Development',
                                createdAt: DateTime.now(),
                                updatedAt: DateTime.now(),
                                perusahaan: const Company(
                                  idPerusahaan: 8,
                                  namaPerusahaan: 'Google',
                                  logo: 'https://via.placeholder.com/50',
                                ),
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
                                idLoker: 2,
                                judul: 'Backend Developer',
                                idPerusahaan: 9,
                                slug: 'backend-developer',
                                konten:
                                'We are looking for a backend developer to join our team. You will be responsible for building and maintaining our server-side applications.',
                                tglSelesai: '2024-12-31',
                                lokasi: 'Bandung, Indonesia',
                                pengalamanKerja: '3 years',
                                role: 'Backend Development',
                                createdAt: DateTime.now(),
                                updatedAt: DateTime.now(),
                                perusahaan: const Company(
                                  idPerusahaan: 9,
                                  namaPerusahaan: 'Microsoft',
                                  logo: 'https://via.placeholder.com/50',
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      title: 'Backend Developer',
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