import 'package:alumni_hub_ft_uh/common/domain/common_model.dart';
import 'package:alumni_hub_ft_uh/features/event/domain/models/event_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_get_many_model.freezed.dart';
part 'event_get_many_model.g.dart';

@freezed
class EventGetManyModelResponse with _$EventGetManyModelResponse {
  const factory EventGetManyModelResponse({
    required String message,
    required EventGetManyModelData data,
  }) = _EventGetManyModelResponse;

  factory EventGetManyModelResponse.fromJson(Map<String, dynamic> json) =>
      _$EventGetManyModelResponseFromJson(json);
}

@freezed
class EventGetManyModelData with _$EventGetManyModelData {
  const factory EventGetManyModelData({
    @JsonKey(name: 'current_page') required int currentPage,
    required List<EventModel> data,
    @JsonKey(name: 'first_page_url') required String firstPageUrl,
    required int? from,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'last_page_url') required String lastPageUrl,
    required List<LinkModel> links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    required String path,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    required int? to,
    required int total,
  }) = _EventGetManyModelData;

  factory EventGetManyModelData.fromJson(Map<String, dynamic> json) =>
      _$EventGetManyModelDataFromJson(json);
}

class EventGetManyParams extends GetManyParams {
  final int? idEvent;

  EventGetManyParams({
    super.page,
    super.limit,
    super.search,
    this.idEvent,
  });

  Map<String, dynamic> toJson() {
    return {
      if (page != null) 'page': page,
      if (limit != null) 'limit': limit,
      if (search != null) 'search': search,
      if (idEvent != null) 'id_event': idEvent,
    };
  }
}
