part of 'event_bloc.dart';

enum EventStatus { initial, loading, loaded, error }

class EventState {
  final EventStatus status;
  final List<EventModel> events;
  final CustomException? error;
  String? search;

  EventState({
    this.status = EventStatus.initial,
    this.events = const <EventModel>[],
    this.error,
    this.search,
  });

  EventState copyWith({
    EventStatus? status,
    List<EventModel>? events,
    CustomException? error,
    String? search,
  }) {
    return EventState(
      status: status ?? this.status,
      events: events ?? this.events,
      error: error ?? this.error,
      search: search ?? this.search,
    );
  }

  @override
  String toString() {
    return 'EventState{status: $status, events: ${events.length}, error: $error}';
  }
}
