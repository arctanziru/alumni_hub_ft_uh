import 'package:alumni_hub_ft_uh/data/api.dart';
import 'package:alumni_hub_ft_uh/features/event/domain/models/event_get_many_model.dart';
import 'package:alumni_hub_ft_uh/features/event/domain/models/event_get_one_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class EventRemoteDataSource {
  final Api _api;

  EventRemoteDataSource(this._api);

  Future<EventGetManyModelResponse> getEvents(
      EventGetManyParams eventGetManyParams) async {
    final response = await _api.createApiCall(
      endpoint: '/event',
      method: NetworkCallMethod.get,
      params: eventGetManyParams.toJson(),
    );
    return EventGetManyModelResponse.fromJson(response.data);
  }

  Future<EventGetOneModelResponse> toggleRegisterEvent(int eventId) async {
    final response = await _api.createApiCall(
      endpoint: '/event/register',
      method: NetworkCallMethod.post,
      body: {'id_event': eventId},
    );
    return EventGetOneModelResponse.fromJson(response.data);
  }

  Future<EventGetOneModelResponse> getEvent(int eventId) async {
    final response = await _api.createApiCall(
      endpoint: '/event/id/$eventId',
      method: NetworkCallMethod.get,
    );
    return EventGetOneModelResponse.fromJson(response.data);
  }
}
