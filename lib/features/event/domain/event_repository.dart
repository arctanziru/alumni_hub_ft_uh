import 'package:alumni_hub_ft_uh/features/event/data/event_remote_data_source.dart';
import 'package:alumni_hub_ft_uh/features/event/domain/models/event_get_many_model.dart';
import 'package:cached_query/cached_query.dart';
import 'package:injectable/injectable.dart';
import 'package:alumni_hub_ft_uh/features/event/domain/models/event_get_many_model.dart';
import 'package:cached_query/cached_query.dart';

abstract class EventRepository {
  InfiniteQuery<EventGetManyModelResponse, int> getEvents(
      EventGetManyParams? params);
}


@LazySingleton(as: EventRepository)
class EventRepositoryImpl implements EventRepository {
  final EventRemoteDataSource _eventRemoteDataSource;

  EventRepositoryImpl(this._eventRemoteDataSource);

  @override
  InfiniteQuery<EventGetManyModelResponse, int> getEvents(
      EventGetManyParams? params) {
    return InfiniteQuery<EventGetManyModelResponse, int>(
      key: ['events', params?.search],
      queryFn: (page) => _eventRemoteDataSource.getEvents(
        EventGetManyParams(
          page: page,
          limit: params?.limit,
          search: params?.search,
          idEvent: params?.idEvent,
        ),
      ),
      getNextArg: (state) {
        if (state.lastPage == null) return 1;
        if (state.lastPage?.data.data.isEmpty ?? false) return null;
        if (state.lastPage!.data.currentPage >= state.lastPage!.data.lastPage) {
          return null;
        }
        return state.lastPage!.data.currentPage + 1;
      },
    );
  }
}
