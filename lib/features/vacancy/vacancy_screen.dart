import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_search_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_vacancy_widget.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_detail_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/bloc/vacancy_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:skeletonizer/skeletonizer.dart';

class VacancyScreen extends StatefulWidget {
  static const String route = '/vacancy';

  const VacancyScreen({super.key});

  @override
  State<VacancyScreen> createState() => _VacancyScreenState();
}

class _VacancyScreenState extends State<VacancyScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<VacancyBloc>().add(VacancyFetched());
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent) {
        context.read<VacancyBloc>().add(VacancyNextPage());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarSearchWidget(),
      bottomNavigationBar: const BottomBarWidget(currentIndex: 3),
      body: SafeArea(
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
              Expanded(
                child: BlocBuilder<VacancyBloc, VacancyState>(
                  builder: (context, state) {
                    if (state.status == VacancyStatus.error) {
                      return Center(
                        child: Text(state.error?.message ?? ''),
                      );
                    }

                    if (state.status == VacancyStatus.loading &&
                        state.vacancies.isEmpty) {
                      return Skeletonizer(
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                CardVacancyWidget(
                                  onTap: () {},
                                  title: 'Loading...',
                                  company: 'Loading...',
                                  type: 'Loading...',
                                  location: 'Loading...',
                                  experience: 'Loading...',
                                  postedAt: DateTime.now(),
                                  endDate: DateTime.now(),
                                  description: 'Loading...' * 10,
                                  companyImgUrl: 'Loading...',
                                ),
                                const SizedBox(height: 10),
                              ],
                            );
                          },
                        ),
                      );
                    }

                    return RefreshIndicator(
                      onRefresh: () {
                        return Future.delayed(
                          Duration.zero,
                          () {
                            context.read<VacancyBloc>().add(VacancyRefreshed());
                          },
                        );
                      },
                      child: state.vacancies.isEmpty
                          ? Center(
                              child: Text(
                                'No data found',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            )
                          : ListView.builder(
                              controller: _scrollController,
                              itemCount: state.vacancies.length,
                              itemBuilder: (context, index) {
                                final vacancy = state.vacancies[index];
                                return Column(
                                  children: [
                                    CardVacancyWidget(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                VacancyDetailScreen(
                                              vacancy: vacancy,
                                            ),
                                          ),
                                        );
                                      },
                                      title: vacancy.judul,
                                      company:
                                          vacancy.perusahaan.namaPerusahaan,
                                      type: vacancy.role,
                                      location: vacancy.lokasi,
                                      experience: vacancy.pengalamanKerja,
                                      postedAt: vacancy.createdAt,
                                      endDate: vacancy.tglSelesai,
                                      description: vacancy.deskripsi ??
                                          'Tekan untuk melihat detail loker',
                                      companyImgUrl:
                                          '${dotenv.get('STORAGE_URL')}${vacancy.perusahaan.logo}',
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                );
                              },
                            ),
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
