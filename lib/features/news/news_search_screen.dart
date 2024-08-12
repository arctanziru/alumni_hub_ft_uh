import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_secondary_widget.dart';

class NewsSearchScreen extends StatefulWidget {
  static const String route = '/news-search';

  const NewsSearchScreen({super.key});

  @override
  State<NewsSearchScreen> createState() => _NewsSearchScreenState();
}

class _NewsSearchScreenState extends State<NewsSearchScreen> {
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
              // children: List.generate(
              //   _newsItems.length,
              //   (index) => Column(
              //     children: [
              //       CardNewsWidget(
              //         imageUrl: _newsItems[index].imageUrl,
              //         title: _newsItems[index].title,
              //         description: _newsItems[index].description,
              //         likes: _newsItems[index].likes,
              //         isLiked: false,
              //         onTap: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) =>
              //                   NewsDetailScreen(news: _newsItems[index]),
              //             ),
              //           );
              //         },
              //       ),
              //       const SizedBox(height: 10),
              //     ],
              //   ),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
