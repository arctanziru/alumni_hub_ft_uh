import 'dart:math';

import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_filter_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_news_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_vacancy_widget.dart'; // Ensure this import is correct
import 'package:alumni_hub_ft_uh/features/news/bloc/news_bloc.dart';
import 'package:alumni_hub_ft_uh/features/news/news_detail_screen.dart';
import 'package:alumni_hub_ft_uh/features/news/news_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/bloc/vacancy_bloc.dart'; // Ensure this import is correct
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_detail_screen.dart'; // Ensure this import is correct
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_screen.dart';
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

  final List<List<String>> carouselImages = [
    [
      'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ],
  ];

  final List<List<String>> countdownTexts = [
    [
      '10 hari lagi',
      '5 hari lagi',
      '7 hari lagi',
      '3 hari lagi',
      '12 hari lagi'
    ],
  ];

  final List<List<String>> registrantsInfo = [
    [
      '100/200 pendaftar',
      '50/100 pendaftar',
      '70/150 pendaftar',
      '30/75 pendaftar',
      '10/20 pendaftar'
    ],
  ];

  @override
  void initState() {
    super.initState();
    context.read<NewsBloc>().add(NewsFetched());
    context.read<VacancyBloc>().add(VacancyFetched());
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
              for (int i = 0; i < carouselImages.length; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: HomeCarouselWidget(
                    carouselItems: carouselImages[i],
                    countdownTexts: countdownTexts[i],
                    registrantsInfo: registrantsInfo[i],
                  ),
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
