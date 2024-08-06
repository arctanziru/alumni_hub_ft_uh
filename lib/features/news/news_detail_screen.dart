import 'package:alumni_hub_ft_uh/common/utils/date_util.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_search_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/features/news/domain/news_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class NewsDetailScreen extends StatefulWidget {
  final NewsModel news;

  const NewsDetailScreen({
    super.key,
    required this.news,
  });

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarSearchWidget(),
      bottomNavigationBar: const BottomBarWidget(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            Text(
              widget.news.category ?? 'Berita',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: AppColors.primaryColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Text(
              widget.news.title,
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Text(
              widget.news.author,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: const Color(0xFF606060),
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Text(
              DateUtil.getFormattedDate(
                  DateTime.fromMicrosecondsSinceEpoch(widget.news.createdAt)),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: const Color(0xFF606060),
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Image.network(
                      widget.news.imageUrl,
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 200,
                        color: Colors.grey[200],
                        child: const Center(
                            child: Icon(Icons.error,
                                size: 40, color: Colors.grey)),
                      ),
                    ),
                    const SizedBox(height: 16),
                    HtmlWidget(
                      widget.news.content,
                      textStyle: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
