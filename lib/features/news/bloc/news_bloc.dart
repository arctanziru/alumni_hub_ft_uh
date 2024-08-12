import 'dart:async';

import 'package:alumni_hub_ft_uh/features/news/domain/models/news_get_many_model.dart';
import 'package:alumni_hub_ft_uh/features/news/domain/models/news_model.dart';
import 'package:alumni_hub_ft_uh/features/news/domain/news_repository.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:bloc/bloc.dart';
import 'package:cached_query/cached_query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'news_event.dart';
part 'news_state.dart';

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository _newsRepository;

  NewsBloc(this._newsRepository) : super(NewsState()) {
    on<NewsFetched>(_onNewsFetched);
    on<NewsRefreshed>(_onNewsRefreshed);
    on<NewsNextPage>(_onNewsNextPage);
    on<NewsFilterChanged>(_onNewsFilterChanged);
  }

  FutureOr<void> _onNewsFetched(NewsFetched event, Emitter<NewsState> emit) {
    return emit.forEach<InfiniteQueryState<NewsGetManyModelResponse>>(
        _newsRepository
            .getNews(
              NewsGetManyParams(
                idKategoriBerita: state.idKategoriBerita,
                search: state.search,
              ),
            )
            .stream, onData: (queryState) {
      return state.copyWith(
        status: queryState.status == QueryStatus.loading
            ? NewsStatus.loading
            : queryState.status == QueryStatus.error
                ? NewsStatus.error
                : NewsStatus.loaded,
        news: queryState.data?.expand((page) => page.data.data).toList() ?? [],
        error: CustomException(queryState.error?.message ?? 'Unknown error'),
      );
    });
  }

  FutureOr<void> _onNewsRefreshed(
      NewsRefreshed event, Emitter<NewsState> emit) {
    if (event.isClear) {
      state.news.clear();
      state.idKategoriBerita = null;
      state.search = null;
    }
    final query = _newsRepository.getNews(
      NewsGetManyParams(
        idKategoriBerita: state.idKategoriBerita,
        search: state.search,
      ),
    );
    query.refetch();
    return _onNewsFetched(NewsFetched(), emit);
  }

  FutureOr<void> _onNewsNextPage(NewsNextPage event, Emitter<NewsState> emit) {
    _newsRepository
        .getNews(
          NewsGetManyParams(
            idKategoriBerita: state.idKategoriBerita,
            search: state.search,
          ),
        )
        .getNextPage();
  }

  FutureOr<void> _onNewsFilterChanged(
      NewsFilterChanged event, Emitter<NewsState> emit) {
    final query = _newsRepository.getNews(
      NewsGetManyParams(
        idKategoriBerita: event.idKategoriBerita,
        search: event.search,
      ),
    );

    query.refetch();

    return emit.forEach<InfiniteQueryState<NewsGetManyModelResponse>>(
      query.stream,
      onData: (queryState) {
        return state.copyWith(
          status: queryState.status == QueryStatus.loading
              ? NewsStatus.loading
              : queryState.status == QueryStatus.error
                  ? NewsStatus.error
                  : NewsStatus.loaded,
          news:
              queryState.data?.expand((page) => page.data.data).toList() ?? [],
          error: CustomException(queryState.error?.message ?? 'Unknown error'),
          idKategoriBerita: event.idKategoriBerita,
          search: event.search,
        );
      },
    );
  }
}
