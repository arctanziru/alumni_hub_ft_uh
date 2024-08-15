import 'package:alumni_hub_ft_uh/features/event/data/event_remote_data_source.dart';
import 'package:alumni_hub_ft_uh/features/event/domain/models/event_get_many_model.dart';
import 'package:cached_query/cached_query.dart';
import 'package:injectable/injectable.dart';

abstract class EventRepository {
  InfiniteQuery<EventGetManyModelResponse, int> getEvents(
      EventGetManyParams? params);
  Mutation<void, int> registerEvent();
  Mutation<void, int> unregisterEvent();
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

  @override
  Mutation<void, int> registerEvent() {
    return Mutation<void, int>(
      key: ['register_event'],
      queryFn: (idEvent) => _eventRemoteDataSource.registerEvent(idEvent),
      refetchQueries: ['events'],
    );
  }

  @override
  Mutation<void, int> unregisterEvent() {
    return Mutation<void, int>(
      key: ['unregister_event'],
      queryFn: (idEvent) => _eventRemoteDataSource.unregisterEvent(idEvent),
      refetchQueries: ['events'],
    );
  }
}
