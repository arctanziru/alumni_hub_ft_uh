import 'dart:math';

import 'package:alumni_hub_ft_uh/common/utils/debouncer.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_filter_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_news_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/card/card_vacancy_widget.dart';
import 'package:alumni_hub_ft_uh/features/news/bloc/news_bloc.dart';
import 'package:alumni_hub_ft_uh/features/news/news_detail_screen.dart';
import 'package:alumni_hub_ft_uh/features/news/news_screen.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_bloc.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/bloc/vacancy_bloc.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_detail_screen.dart';
import 'package:alumni_hub_ft_uh/features/vacancy/vacancy_screen.dart';
import 'package:alumni_hub_ft_uh/features/event/bloc/event_bloc.dart';
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
  final Debouncer _debouncer =
      Debouncer(delay: const Duration(milliseconds: 500));

  @override
  void initState() {
    super.initState();
    context.read<NewsBloc>().add(NewsRefreshed(isClear: true));
    context.read<NewsBloc>().add(NewsCategoryFetched());
    context.read<VacancyBloc>().add(VacancyFetched());
    context.read<EventBloc>().add(EventFetched());
  }

  @override
  Widget build(BuildContext context) {
    final userSession = context.read<UserBloc>().getUserSession();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: const BottomBarWidget(currentIndex: 0),
      appBar: const AppBarWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<EventBloc, EventState>(
                builder: (context, state) {
                  debugPrint('Event state: ${state.toString()}');

                  if (state.status == EventStatus.loading &&
                      state.events.isEmpty) {
                    return SizedBox(
                      height: 200,
                      child: Skeletonizer(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3, // Number of skeleton items
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              width: 200,
                              color: Colors.grey[300],
                            ),
                          ),
                        ),
                      ),
                    );
                  }

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: HomeCarouselWidget(
                      carouselItems: List.generate(
                        min(state.events.length, 3),
                        (index) =>
                            '${dotenv.get("STORAGE_URL")}${state.events[index].gambar}',
                      ),
                      countdownTexts: List.generate(
                        min(state.events.length, 3),
                        (index) {
                          final dif = state.events[index].tglEvent
                              .difference(DateTime.now())
                              .inDays;

                          if (dif < 0) {
                            return 'Exp Event berakhir';
                          }

                          return ' $dif hari lagi';
                        },
                      ),
                      registrantsInfo: List.generate(
                        min(state.events.length, 3),
                        (index) =>
                            '${state.events[index].peserta}/${state.events[index].kuota} pendaftar',
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
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
                                              idKategoriBerita: state
                                                          .idKategoriBerita ==
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
                                      state
                                          .newsCategory[index].idKategoriBerita,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    BlocBuilder<NewsBloc, NewsState>(
                      builder: (context, state) {
                        if (state.status == NewsStatus.loading &&
                            state.news.isEmpty) {
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
                                          onLikePressed: () => {
                                            context
                                                .read<NewsBloc>()
                                                .add(NewsLikeToggled(
                                                  state.news[index].idBerita,
                                                ))
                                          },
                                        ),
                                        const SizedBox(height: 10),
                                      ],
                                    ),
                                  ),
                                  if (state.news.length > 5)
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
                    if (userSession?.user?.alumni != null) ...[
                      Row(
                        mainAxisSize: MainAxisSize.max,
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
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
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
                                                    builder: (context) =>
                                                        VacancyDetailScreen(
                                                      vacancy: vacancy,
                                                    ),
                                                  ),
                                                );
                                              },
                                              title: vacancy.judul,
                                              company: vacancy
                                                  .perusahaan.namaPerusahaan,
                                              type: vacancy.role,
                                              location: vacancy.lokasi,
                                              experience:
                                                  vacancy.pengalamanKerja,
                                              postedAt: vacancy.createdAt,
                                              description: vacancy.konten,
                                              companyImgUrl:
                                                  '${dotenv.get('STORAGE_URL')}${vacancy.perusahaan.logo}',
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
                                            Navigator.pushNamed(
                                                context, VacancyScreen.route);
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
