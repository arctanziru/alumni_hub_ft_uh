import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_search_widget.dart';
import 'package:alumni_hub_ft_uh/features/news/domain/news_model.dart';
import 'package:alumni_hub_ft_uh/features/news/news_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_filter_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_news_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart'; // Import the BottomBarWidget

class NewsScreen extends StatefulWidget {
  static const String route = '/news';

  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}


class _NewsScreenState extends State<NewsScreen> {
  int _activeFilterIndex = 0;

  final List<NewsModel> _newsItems = [
    NewsModel(
        imageUrl:
            'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Reuni Akbar',
        description: 'Diadakan pada 17 Agustus 2024',
        likes: 10,
        content: '<b>HTML Content</b>',
        createdAt: DateTime.now().millisecondsSinceEpoch),
    NewsModel(
        imageUrl:
            'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Event Title 2',
        description: 'Event Description 2',
        likes: 10,
        content: '<b>HTML Content</b>',
        createdAt: DateTime.now().millisecondsSinceEpoch),
    NewsModel(
        imageUrl:
            'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Event Title 3',
        description: 'Event Description 3',
        likes: 10,
        content: '<b>HTML Content</b>',
        createdAt: DateTime.now().millisecondsSinceEpoch),
    NewsModel(
        imageUrl:
            'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Event Title 4',
        description: 'Event Description 4',
        likes: 10,
        content: '<b>HTML Content</b>',
        createdAt: DateTime.now().millisecondsSinceEpoch),
    NewsModel(
        imageUrl:
            'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Event Title 5',
        description: 'Event Description 5',
        likes: 10,
        content: '<b>HTML Content</b>',
        createdAt: DateTime.now().millisecondsSinceEpoch),
    NewsModel(
        imageUrl:
            'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Event Title 6',
        description: 'Event Description 6',
        likes: 10,
        content: '<b>HTML Content</b>',
        createdAt: DateTime.now().millisecondsSinceEpoch),
    NewsModel(
        imageUrl:
            'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Event Title 7',
        description: 'Event Description 7',
        likes: 10,
        content: '<b>HTML Content</b>',
        createdAt: DateTime.now().millisecondsSinceEpoch),
    NewsModel(
        imageUrl:
            'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Event Title 8',
        description: 'Event Description 8',
        likes: 10,
        content: '<b>HTML Content</b>',
        createdAt: DateTime.now().millisecondsSinceEpoch),
    NewsModel(
        imageUrl:
            'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Event Title 9',
        description: 'Event Description 9',
        likes: 10,
        content: '<b>HTML Content</b>',
        createdAt: DateTime.now().millisecondsSinceEpoch),
    NewsModel(
        imageUrl:
            'https://images.unsplash.com/photo-1721332149346-00e39ce5c24f?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: 'Event Title 10',
        description: 'Event Description 10',
        likes: 10,
        content: '<b>HTML Content</b>',
        createdAt: DateTime.now().millisecondsSinceEpoch),
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
      appBar: const AppBarSearchWidget(),
      bottomNavigationBar: const BottomBarWidget(currentIndex: 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Berita Section
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Daftar Berita',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
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
                // Berita Content
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
                          isLiked: _newsItems[index].isLiked, // Use the correct isLiked state
                          onLikePressed: () {
                            // Handle like press
                            _handleLikePress(index);
                          },
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NewsDetailScreen(news: _newsItems[index]),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
