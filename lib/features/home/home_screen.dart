import 'dart:math';

import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_filter_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_news_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_vacancy_widget.dart';
import 'package:alumni_hub_ft_uh/features/news/bloc/news_bloc.dart';
import 'package:alumni_hub_ft_uh/features/news/news_detail_screen.dart';
import 'package:alumni_hub_ft_uh/features/news/news_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/bloc/vacancy_bloc.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_detail_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_screen.dart';
import 'package:alumni_hub_ft_uh/features/event/bloc/event_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../common/widgets/carousel/carousel_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String route = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _activeFilterIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<NewsBloc>().add(NewsFetched());
    context.read<VacancyBloc>().add(VacancyFetched());
    context.read<EventBloc>().add(EventFetched()); // Fetch events
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: const BottomBarWidget(currentIndex: 0),
      appBar: const AppBarWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<EventBloc, EventState>(
                builder: (context, state) {
                  if (state.status == EventStatus.loading) {
                    return SizedBox(
                      height: 200,
                      child: Skeletonizer(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3, // Number of skeleton items
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              width: 150,
                              color: Colors.grey[300],
                            ),
                          ),
                        ),
                      ),
                    );
                  }

                  return const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: HomeCarouselWidget(
                      carouselItems: [
                        'https://images.unsplash.com/photo-1506748686214e9df14b3c3b5f6e36b6c1b4c9c8d2c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMTM1NjR8MHwxfGFsbHwxfHx8fHx8fHwxNjg1NTUxNjg&ixlib=rb-1.2.1&q=80&w=400',
                        'https://images.unsplash.com/photo-1506748686214d31b1a7b7d46b8a67ff56e825f7425e4d91a64d6a497d56?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMTM1NjR8MHwxfGFsbHwxfHx8fHx8fHwxNjg1NTUxNjg&ixlib=rb-1.2.1&q=80&w=400',
                        'https://images.unsplash.com/photo-1506748686214c4450e0d0d1b9b3b8a4a1e2b0f8d2e62?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyMTM1NjR8MHwxfGFsbHwxfHx8fHx8fHwxNjg1NTUxNjg&ixlib=rb-1.2.1&q=80&w=400',
                      ],
                      countdownTexts: [
                        '10 hari lagi',
                        '14 hari lagi',
                        '30 hari lagi',
                      ],
                      registrantsInfo: [
                        '10/100 pendaftar',
                        '20/100 pendaftar',
                        '30/100 pendaftar',
                      ],
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Berita Terkini',
                          textAlign: TextAlign.left,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_rounded),
                          onPressed: () {
                            Navigator.pushNamed(context, NewsScreen.route);
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(6, (index) {
                            final labels = [
                              'Politik', 'Olahraga', 'Ekonomi',
                              'Teknologi', 'Seni', 'Sosial'
                            ];
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: ButtonFilterWidget(
                                label: labels[index],
                                onPressed: () {
                                  setState(() {
                                    _activeFilterIndex = index;
                                  });
                                },
                                isActive: _activeFilterIndex == index,
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    BlocBuilder<NewsBloc, NewsState>(
                      builder: (context, state) {
                        if (state.status == NewsStatus.loading) {
                          return Skeletonizer(
                            child: Column(
                              children: List.generate(
                                5,
                                    (index) => Column(
                                  children: [
                                    CardNewsWidget(
                                      onTap: () {},
                                      title: 'Title Placeholder',
                                      description: 'desc' * 10,
                                      imageUrl: 'imageplaceholder',
                                      likes: 100,
                                      isLiked: false,
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: state.news.isEmpty
                              ? [
                            Text(
                              'Tidak ada berita',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ]
                              : [
                            ...List.generate(
                              min(state.news.length, 5),
                                  (index) => Column(
                                children: [
                                  CardNewsWidget(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => NewsDetailScreen(
                                          news: state.news[index],
                                        ),
                                      ));
                                    },
                                    title: state.news[index].judul,
                                    description: state.news[index].konten,
                                    imageUrl: '${dotenv.env['STORAGE_URL']}${state.news[index].gambar}',
                                    likes: state.news[index].totalLike,
                                    isLiked: state.news[index].isLiked,
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                            if (state.status == NewsStatus.loaded &&
                                state.news.length > 5)
                              Center(
                                child: ButtonWidget(
                                  onPressed: () {
                                    Navigator.pushNamed(context, NewsScreen.route);
                                  },
                                  label: 'Lainnya',
                                  rounded: true,
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 20),
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
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_rounded),
                          onPressed: () {
                            Navigator.pushNamed(context, VacancyScreen.route);
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    BlocBuilder<VacancyBloc, VacancyState>(
                      builder: (context, state) {
                        if (state.status == VacancyStatus.loading) {
                          return Skeletonizer(
                            child: Column(
                              children: List.generate(
                                5,
                                    (index) => Column(
                                  children: [
                                    CardVacancyWidget(
                                      onTap: () {},
                                      title: 'Loading...',
                                      company: 'Loading...',
                                      type: 'Loading...',
                                      location: 'Loading...',
                                      experience: 'Loading...',
                                      postedAt: DateTime.now(),
                                      description: 'Loading...' * 10,
                                      companyImgUrl: 'Loading...',
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: state.vacancies.isEmpty
                              ? [
                            Text(
                              'Tidak ada lowongan kerja',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ]
                              : [
                            ...List.generate(
                              min(state.vacancies.length, 5),
                                  (index) {
                                final vacancy = state.vacancies[index];
                                return Column(
                                  children: [
                                    CardVacancyWidget(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => VacancyDetailScreen(
                                              vacancy: vacancy,
                                            ),
                                          ),
                                        );
                                      },
                                      title: vacancy.judul,
                                      company: vacancy.perusahaan.namaPerusahaan,
                                      type: vacancy.role,
                                      location: vacancy.lokasi,
                                      experience: vacancy.pengalamanKerja,
                                      postedAt: vacancy.createdAt,
                                      description: vacancy.konten,
                                      companyImgUrl: '${dotenv.get('STORAGE_URL')}${vacancy.perusahaan.logo}',
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                );
                              },
                            ),
                            if (state.status == VacancyStatus.loaded &&
                                state.vacancies.length > 5)
                              Center(
                                child: ButtonWidget(
                                  onPressed: () {
                                    Navigator.pushNamed(context, VacancyScreen.route);
                                  },
                                  label: 'Lainnya',
                                  rounded: true,
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
