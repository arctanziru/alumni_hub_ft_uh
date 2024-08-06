import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_vacancy_widget.dart';
import 'package:alumni_hub_ft_uh/features/news/news_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_news_widget.dart';

import '../../common/widgets/button/button_filter_widget.dart';
import '../vacancy/domain/vacancy_model.dart';
import '../vacancy/vacancy_detail_screen.dart';

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

  final List<NewsItem> _newsItems = [
    NewsItem(
      imageUrl: 'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      title: 'Reuni Akbar',
      description: 'Diadakan pada 17 Agustus 2024',
      likes: 10,
    ),
    NewsItem(
      imageUrl: 'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      title: 'Event Title 2',
      description: 'Event Description 2',
      likes: 10,
    ),
    NewsItem(
      imageUrl: 'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      title: 'Event Title 3',
      description: 'Event Description 3',
      likes: 10,
    ),
    NewsItem(
      imageUrl: 'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      title: 'Event Title 4',
      description: 'Event Description 4',
      likes: 10,
    ),
  ];

  void _handleLikePress(int index) {
    setState(() {
      _newsItems[index].isLiked = !_newsItems[index].isLiked;
      _newsItems[index].likes += _newsItems[index].isLiked ? 1 : -1;
    });
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
              // Carousel Section
              SizedBox(
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    aspectRatio: 16 / 9,
                  ),
                  items: [
                    'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ].map((imageUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Berita Section
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
                    // Berita Terkini Content
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        _newsItems.length,
                            (index) => Column(
                          children: [
                            CardNewsWidget(
                              imageUrl: _newsItems[index].imageUrl,
                              title: _newsItems[index].title,
                              description: _newsItems[index].description,
                              likes: _newsItems[index].likes,
                              isLiked: _newsItems[index].isLiked,
                              onLikePressed: () => _handleLikePress(index),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16), // Space between sections and button
                    Center(
                      child: ButtonWidget(
                        onPressed: () => Navigator.pushNamed(context, '/news'),
                        label: 'Lainnya',
                        rounded: true,
                      )
                    ),
                    const SizedBox(height: 20), // Space between button and next section
                    // Lowongan Kerja Section
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
                    // Lowongan Kerja Content
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        _newsItems.length,
                            (index) => Column(
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
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16), // Space between sections and button
                    Center(
                      child: ButtonWidget(
                        onPressed: () => Navigator.pushNamed(context, '/vacancy'),
                        label: 'Lainnya',
                        rounded: true
                        ,)
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
