part of 'event_bloc.dart';

@immutable
abstract class EventEvent {}

class EventFetched extends EventEvent {}

class EventRefreshed extends EventEvent {
  final bool isClear;

  EventRefreshed({this.isClear = false});
}

class EventNextPage extends EventEvent {}

class EventGetOne extends EventEvent {
  final int idEvent;

  EventGetOne(this.idEvent);
}

class EventToggleRegister extends EventEvent {
  final int idEvent;

  EventToggleRegister(this.idEvent);
}
