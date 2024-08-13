import 'package:alumni_hub_ft_uh/data/api.dart';
import 'package:alumni_hub_ft_uh/features/event/domain/models/event_get_many_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class EventRemoteDataSource {
  final Api _api;

  EventRemoteDataSource(this._api);

  Future<EventGetManyModelResponse> getEvents(
      EventGetManyParams eventGetManyParams) async {
    final response = await _api.createApiCall(
      endpoint: '/event', // Update this endpoint to match your API for events
      method: NetworkCallMethod.get,
      params: eventGetManyParams.toJson(),
    );
    return EventGetManyModelResponse.fromJson(response.data);
  }
}
