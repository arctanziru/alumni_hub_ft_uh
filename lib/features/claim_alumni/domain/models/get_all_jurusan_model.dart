import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_jurusan_model.freezed.dart';
part 'get_all_jurusan_model.g.dart';

@freezed
class GetAllJurusanResponse with _$GetAllJurusanResponse {
  const factory GetAllJurusanResponse({
    required String message,
    required List<Jurusan> data,
  }) = _GetAllJurusanResponse;

  factory GetAllJurusanResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllJurusanResponseFromJson(json);
}

@freezed
class Jurusan with _$Jurusan {
  const factory Jurusan({
    @JsonKey(name: 'id_jurusan') required int idJurusan,
    @JsonKey(name: 'nama_jurusan') required String namaJurusan,
    @JsonKey(name: 'kode_jurusan') required String kodeJurusan,
  }) = _Jurusan;

  factory Jurusan.fromJson(Map<String, dynamic> json) =>
      _$JurusanFromJson(json);
}
