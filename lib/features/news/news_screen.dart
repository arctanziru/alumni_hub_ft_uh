import 'package:alumni_hub_ft_uh/common/utils/debouncer.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_search_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_filter_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_news_widget.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/features/news/bloc/news_bloc.dart';
import 'package:alumni_hub_ft_uh/features/news/news_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:skeletonizer/skeletonizer.dart';

class NewsScreen extends StatefulWidget {
  static const String route = '/news';

  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final _scrollController = ScrollController();
  final Debouncer _debouncer =
      Debouncer(delay: const Duration(milliseconds: 500));

  @override
  void initState() {
    context.read<NewsBloc>().add(NewsFetched());
    context.read<NewsBloc>().add(NewsCategoryFetched());
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent) {
        context.read<NewsBloc>().add(NewsNextPage());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarSearchWidget(),
      bottomNavigationBar: const BottomBarWidget(currentIndex: 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: BlocBuilder<NewsBloc, NewsState>(
                  builder: (context, state) {
                    return Row(
                      children: List.generate(
                        state.newsCategory.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ButtonFilterWidget(
                            label: state.newsCategory[index].kategori,
                            onPressed: () {
                              _debouncer.call(
                                () => context.read<NewsBloc>().add(
                                      NewsFilterChanged(
                                        idKategoriBerita:
                                            state.idKategoriBerita ==
                                                    state.newsCategory[index]
                                                        .idKategoriBerita
                                                ? null
                                                : state.newsCategory[index]
                                                    .idKategoriBerita,
                                      ),
                                    ),
                              );
                            },
                            isActive: state.idKategoriBerita ==
                                state.newsCategory[index].idKategoriBerita,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 8.0),
              Expanded(
                child: BlocBuilder<NewsBloc, NewsState>(
                  builder: (context, state) {
                    if (state.status == NewsStatus.error) {
                      debugPrint('Error: ${state.toString()}');
                      return Center(
                        child: Text(state.error?.message ?? ''),
                      );
                    }

                    if (state.status == NewsStatus.loading &&
                        state.news.isEmpty) {
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
                                      description: state.news[index].konten,
                                      likes: state.news[index].totalLike,
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                NewsDetailScreen(
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
            ],
          ),
        ),
      ),
    );
  }
}
