import 'package:alumni_hub_ft_uh/common/domain/common_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'alumni_model.dart';

part 'alumni_get_many_model.freezed.dart';
part 'alumni_get_many_model.g.dart';

@freezed
class AlumniGetManyModelResponse with _$AlumniGetManyModelResponse {
  const factory AlumniGetManyModelResponse({
    required String message,
    required List<AlumniModel> data,
  }) = _AlumniGetManyModelResponse;

  factory AlumniGetManyModelResponse.fromJson(Map<String, dynamic> json) =>
      _$AlumniGetManyModelResponseFromJson(json);
}

@freezed
class AlumniGetManyModelBody with _$AlumniGetManyModelBody {
  const factory AlumniGetManyModelBody({
    required String nama,
    @JsonKey(name: 'tgl_lahir') required String tglLahir,
    String? nim,
  }) = _AlumniGetManyModelBody;

  factory AlumniGetManyModelBody.fromJson(Map<String, dynamic> json) =>
      _$AlumniGetManyModelBodyFromJson(json);
}

// The parameters for querying alumni data
class AlumniGetManyParams extends GetManyParams {
  final int? idAlumni;
  final String? nama;
  final String? tglLahir;
  final String? nim;

  AlumniGetManyParams({
    this.idAlumni,
    this.nama,
    this.tglLahir,
    this.nim,
    int? page,
    int? limit,
    String? search,
  }) : super(
    page: page,
    limit: limit,
    search: search,
  );

  // Converts the parameters to a JSON map for the API request
  Map<String, dynamic> toJson() {
    return {
      'id_alumni': idAlumni,
      'nama': nama,
      'tgl_lahir': tglLahir,
      'nim': nim,
      'page': page,
      'limit': limit,
      'search': search,
    };
  }
}
