import 'package:alumni_hub_ft_uh/common/widgets/card/card_news_widget.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/features/news/bloc/news_bloc.dart';
import 'package:alumni_hub_ft_uh/features/news/news_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_secondary_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewsSearchScreen extends StatefulWidget {
  static const String route = '/news-search';
  final String searchQuery;

  const NewsSearchScreen({super.key, required this.searchQuery});

  @override
  State<NewsSearchScreen> createState() => _NewsSearchScreenState();
}

class _NewsSearchScreenState extends State<NewsSearchScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context
        .read<NewsBloc>()
        .add(NewsRefreshed(isClear: true, search: widget.searchQuery));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSecondaryWidget(
        title: widget.searchQuery,
        subtitle: 'BERITA',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: BlocBuilder<NewsBloc, NewsState>(
            builder: (context, state) {
              if (state.status == NewsStatus.error) {
                debugPrint('Error: ${state.toString()}');
                return Center(
                  child: Text(state.error?.message ?? ''),
                );
              }

              if (state.status == NewsStatus.loading && state.news.isEmpty) {
                return Skeletonizer(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          CardNewsWidget(
                            imageUrl: 'placeholder',
                            title: 'placeholder',
                            description: 'placeholder',
                            likes: 100,
                            onTap: () {},
                          ),
                          const SizedBox(height: 10),
                        ],
                      );
                    },
                  ),
                );
              }

              return RefreshIndicator(
                color: AppColors.primaryColor,
                onRefresh: () {
                  return Future.delayed(
                    Duration.zero,
                    () {
                      context.read<NewsBloc>().add(NewsRefreshed());
                    },
                  );
                },
                child: state.news.isEmpty
                    ? Center(
                        child: Text(
                          'No data found',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      )
                    : ListView.builder(
                        controller: _scrollController,
                        itemCount: state.news.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              CardNewsWidget(
                                imageUrl:
                                    '${dotenv.get('STORAGE_URL')}${state.news[index].gambar}',
                                title: state.news[index].judul,
                                description: state.news[index].deskripsi ?? 'Tekan untuk melihat detail berita',
                                likes: state.news[index].totalLike,
                                isLiked: state.news[index].isLiked,
                                onLikePressed: () => {
                                  context.read<NewsBloc>().add(NewsLikeToggled(
                                        state.news[index].idBerita,
                                      ))
                                },
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => NewsDetailScreen(
                                          news: state.news[index]),
                                    ),
                                  );
                                },
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
      ),
    );
  }
}
