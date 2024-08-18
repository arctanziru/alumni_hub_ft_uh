import "package:alumni_hub_ft_uh/features/event/domain/models/event_model.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "event_get_one_model.freezed.dart";
part "event_get_one_model.g.dart";

@freezed
class EventGetOneModelResponse with _$EventGetOneModelResponse {
  const factory EventGetOneModelResponse({
    required String message,
    required EventModel data,
  }) = _EventGetOneModelResponse;

  factory EventGetOneModelResponse.fromJson(Map<String, dynamic> json) =>
      _$EventGetOneModelResponseFromJson(json);
}
