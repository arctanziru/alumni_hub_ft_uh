import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    @JsonKey(name: 'id_event') required int idEvent,
    required String judul,
    required String slug,
    required String gambar,
    required String konten,
    required String penyelenggara,
    @JsonKey(name: 'tgl_event') required DateTime tglEvent,
    @JsonKey(name: 'lokasi_event') required String lokasiEvent,
    required int kuota,
    required int peserta,
    bool? isRegistered,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
}
