import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_widget.dart';
import 'package:alumni_hub_ft_uh/features/news/news_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_news_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_filter_widget.dart';
import 'package:alumni_hub_ft_uh/features/news/news_screen.dart'; // Import your NewsScreen

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

  List<NewsItem> _newsItems = [
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
      bottomNavigationBar: const BottomBarWidget(currentIndex: 0),
      appBar: const AppBarWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Carousel Section
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3, // Adjusted height for carousel
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
                padding: const EdgeInsets.symmetric(horizontal: 16),
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
                          icon: Icon(Icons.arrow_forward_rounded),
                          onPressed: () {
                            Navigator.pushNamed(context, NewsScreen.route);
                          },
                        ),
                      ],
                    ),
                    // Filter Section
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
                                activeColor: Colors.red,
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
                                activeColor: Colors.red,
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
                                activeColor: Colors.red,
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
                                activeColor: Colors.red,
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
                                activeColor: Colors.red,
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
                                activeColor: Colors.red,
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
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, NewsScreen.route);
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red, // Background color
                        ),
                        child: Text('Lainnya'),
                      ),
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
                          icon: Icon(Icons.arrow_forward_rounded),
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
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, VacancyScreen.route);
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red, // Background color
                        ),
                        child: Text('Lainnya'),
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
