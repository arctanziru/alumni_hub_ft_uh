part of 'event_bloc.dart';

@immutable
abstract class EventEvent {}

class EventFetched extends EventEvent {}

class EventRefreshed extends EventEvent {
  final bool isClear;

  EventRefreshed({this.isClear = false});
}

class EventNextPage extends EventEvent {}
