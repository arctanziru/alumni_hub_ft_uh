part of 'event_bloc.dart';

@immutable
abstract class EventEvent {}

class EventFetched extends EventEvent {}

class EventRefreshed extends EventEvent {
  final bool isClear;

  EventRefreshed({this.isClear = false});
}

class EventNextPage extends EventEvent {}

class EventRegister extends EventEvent {
  final int idEvent;

  EventRegister(this.idEvent);
}

class EventUnregister extends EventEvent {
  final int idEvent;

  EventUnregister(this.idEvent);
}
