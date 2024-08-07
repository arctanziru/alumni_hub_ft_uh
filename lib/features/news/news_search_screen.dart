import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/features/news/domain/news_model.dart';
import 'package:alumni_hub_ft_uh/features/news/news_detail_screen.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_secondary_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_news_widget.dart';

class NewsSearchScreen extends StatefulWidget {
  static const String route = '/news-search';

  const NewsSearchScreen({super.key});

  @override
  State<NewsSearchScreen> createState() => _NewsSearchScreenState();
}

class _NewsSearchScreenState extends State<NewsSearchScreen> {
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

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarSecondaryWidget(
        title: 'KKN UNHAS',
        subtitle: 'BERITA',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
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
                      isLiked: false,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewsDetailScreen(
                                news: _newsItems[index]),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
