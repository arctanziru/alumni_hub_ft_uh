part of 'event_bloc.dart';

enum EventStatus { initial, loading, loaded, error }

class EventState {
  final EventStatus status;
  final List<EventModel> events;
  final CustomException? error;
  final EventStatus selectedEventStatus;
  final EventModel? selectedEvent;
  String? search;

  EventState({
    this.status = EventStatus.initial,
    this.events = const <EventModel>[],
    this.error,
    this.search,
    this.selectedEventStatus = EventStatus.initial,
    this.selectedEvent,
  });

  EventState copyWith({
    EventStatus? status,
    List<EventModel>? events,
    CustomException? error,
    String? search,
    EventStatus? selectedEventStatus,
    EventModel? selectedEvent,
  }) {
    return EventState(
      status: status ?? this.status,
      events: events ?? this.events,
      error: error ?? this.error,
      search: search ?? this.search,
      selectedEventStatus: selectedEventStatus ?? this.selectedEventStatus,
      selectedEvent: selectedEvent ?? this.selectedEvent,
    );
  }

  @override
  String toString() {
    return 'EventState{status: $status, events: ${events.length}, error: $error}';
  }
}
