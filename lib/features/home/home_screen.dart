import 'dart:math';

import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_filter_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_news_widget.dart';
import 'package:alumni_hub_ft_uh/features/news/bloc/news_bloc.dart';
import 'package:alumni_hub_ft_uh/features/news/news_detail_screen.dart';
import 'package:alumni_hub_ft_uh/features/news/news_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../common/widgets/carousel/carousel_widget.dart';

class NewsItem {
  final String imageUrl;
  final String title;
  final String description;
  double likes;
  bool isLiked;

  NewsItem({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.likes,
    this.isLiked = false,
  });
}

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
    context.read<NewsBloc>().add(NewsFetched());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Set background color to light grey
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Berita Terkini',
                          textAlign: TextAlign.left,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
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
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: ButtonFilterWidget(
                                label: 'Politik',
                                onPressed: () {
                                  setState(() {
                                    _activeFilterIndex = 0;
                                  });
                                },
                                isActive: _activeFilterIndex == 0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: ButtonFilterWidget(
                                label: 'Olahraga',
                                onPressed: () {
                                  setState(() {
                                    _activeFilterIndex = 1;
                                  });
                                },
                                isActive: _activeFilterIndex == 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: ButtonFilterWidget(
                                label: 'Ekonomi',
                                onPressed: () {
                                  setState(() {
                                    _activeFilterIndex = 2;
                                  });
                                },
                                isActive: _activeFilterIndex == 2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: ButtonFilterWidget(
                                label: 'Teknologi',
                                onPressed: () {
                                  setState(() {
                                    _activeFilterIndex = 3;
                                  });
                                },
                                isActive: _activeFilterIndex == 3,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: ButtonFilterWidget(
                                label: 'Seni',
                                onPressed: () {
                                  setState(() {
                                    _activeFilterIndex = 4;
                                  });
                                },
                                isActive: _activeFilterIndex == 4,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: ButtonFilterWidget(
                                label: 'Sosial',
                                onPressed: () {
                                  setState(() {
                                    _activeFilterIndex = 5;
                                  });
                                },
                                isActive: _activeFilterIndex == 5,
                              ),
                            ),
                          ],
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
                          children: state.status == NewsStatus.loading &&
                                  state.news.isEmpty
                              ? [
                                  Text(
                                    'Tidak ada berita',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ]
                              : [
                                  ...List.generate(
                                    min(state.news.length, 5),
                                    (index) => Column(
                                      children: [
                                        CardNewsWidget(
                                          onTap: () {
                                            Navigator.of(context)
                                                .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  NewsDetailScreen(
                                                news: state.news[index],
                                              ),
                                            ));
                                          },
                                          title: state.news[index].judul,
                                          description: state.news[index].konten,
                                          imageUrl:
                                              '${dotenv.env['STORAGE_URL']}${state.news[index].gambar}',
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
                                          Navigator.pushNamed(
                                              context, NewsScreen.route);
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
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
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
                    // Lowongan Kerja Content
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // children: List.generate(
                      //   _newsItems.length,
                      //   (index) => Column(
                      //     children: [
                      //       CardVacancyWidget(
                      //         onTap: () {
                      //           Navigator.of(context).push(MaterialPageRoute(
                      //             builder: (context) => VacancyDetailScreen(
                      //               vacancy: VacancyModel(
                      //                 id: '1',
                      //                 title: 'Frontend Developer',
                      //                 company: 'Google',
                      //                 type: 'Full Time',
                      //                 location: 'Jakarta, Indonesia',
                      //                 experience: '2 years',
                      //                 createdAt:
                      //                     DateTime.now().microsecondsSinceEpoch,
                      //                 description:
                      //                     'We are looking for a frontend developer to join our team. You will be responsible for developing and maintaining our web applications.',
                      //                 backgroundUrl:
                      //                     'https://via.placeholder.com/50',
                      //                 companyLogo:
                      //                     'https://via.placeholder.com/50',
                      //                 requirements: const [
                      //                   'Experience with ReactJS',
                      //                   'Experience with HTML, CSS, and JavaScript',
                      //                   'Experience with Git',
                      //                 ],
                      //                 salary: 'Rp 10.000.000 - Rp 15.000.000',
                      //                 url: 'https://google.com',
                      //               ),
                      //             ),
                      //           ));
                      //         },
                      //         title: 'Frontend Developer',
                      //         company: 'Google',
                      //         type: 'Full Time',
                      //         location: 'Jakarta, Indonesia',
                      //         experience: '2 years',
                      //         postedAt: DateTime.now()
                      //             .subtract(const Duration(days: 1)),
                      //         description:
                      //             'We are looking for a frontend developer to join our team. You will be responsible for developing and maintaining our web applications.',
                      //         companyImgUrl: 'https://via.placeholder.com/50',
                      //       ),
                      //       const SizedBox(height: 10),
                      //     ],
                      //   ),
                      // ),
                    ),
                    const SizedBox(
                        height: 16), // Space between sections and button
                    Center(
                      child: ButtonWidget(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/vacancy'),
                        label: 'Lainnya',
                        rounded: true,
                      ),
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
