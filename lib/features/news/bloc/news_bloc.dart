import 'dart:async';

import 'package:alumni_hub_ft_uh/features/news/domain/models/news_get_many_model.dart';
import 'package:alumni_hub_ft_uh/features/news/domain/models/news_model.dart';
import 'package:alumni_hub_ft_uh/features/news/domain/news_repository.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:bloc/bloc.dart';
import 'package:cached_query/cached_query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';

part 'news_event.dart';
part 'news_state.dart';

const _debounceDuration = Duration(milliseconds: 300);

EventTransformer<E> debounce<E>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository _newsRepository;

  NewsBloc(this._newsRepository) : super(NewsState()) {
    on<NewsFetched>(_onNewsFetched);
    on<NewsCategoryFetched>(_onNewsCategoryFetched);
    on<NewsRefreshed>(_onNewsRefreshed);
    on<NewsNextPage>(_onNewsNextPage);
    on<NewsFilterChanged>(_onNewsFilterChanged,
        transformer: debounce(_debounceDuration));
    on<NewsLikeToggled>(_onNewsLikeToggled);
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
      emit(NewsState(
        news: [],
        idKategoriBerita: null,
        search: event.search,
      ));
    } else {
      emit(NewsState(
        news: state.news,
        idKategoriBerita: state.idKategoriBerita,
        search: state.search ?? event.search,
        newsCategory: state.newsCategory,
        status: state.status,
        statusCategory: state.statusCategory,
      ));
    }
    final query = _newsRepository.getNews(
      NewsGetManyParams(
        idKategoriBerita: state.idKategoriBerita,
        search: state.search,
      ),
    );
    query.refetch();
    add(NewsFetched());
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
    emit(NewsState(
      news: state.news,
      idKategoriBerita: event.idKategoriBerita,
      search: event.search,
      newsCategory: state.newsCategory,
      status: state.status,
      statusCategory: state.statusCategory,
    ));

    final query = _newsRepository.getNews(
      NewsGetManyParams(
        idKategoriBerita: event.idKategoriBerita,
        search: event.search,
      ),
    );

    query.refetch();

    add(NewsFetched());
  }

  Future<void> _onNewsCategoryFetched(
      NewsCategoryFetched event, Emitter<NewsState> emit) async {
    return emit.forEach<QueryState<NewsCategoryGetManyModelResponse>>(
        _newsRepository.getNewsCategory(null).stream, onData: (queryState) {
      return state.copyWith(
        statusCategory: queryState.status == QueryStatus.loading
            ? NewsStatus.loading
            : queryState.status == QueryStatus.error
                ? NewsStatus.error
                : NewsStatus.loaded,
        newsCategory: queryState.data?.data ?? [],
        errorCategory:
            CustomException(queryState.error?.message ?? 'Unknown error'),
      );
    });
  }

  Future<void> _onNewsLikeToggled(
      NewsLikeToggled event, Emitter<NewsState> emit) async {
    final mutation = _newsRepository.toggleLikeNews(event.id);
    await mutation.mutate(event.id);

    add(NewsRefreshed());
  }
}
