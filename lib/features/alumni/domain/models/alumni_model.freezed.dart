// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alumni_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlumniModel _$AlumniModelFromJson(Map<String, dynamic> json) {
  return _AlumniModel.fromJson(json);
}

/// @nodoc
mixin _$AlumniModel {
  @JsonKey(name: 'id_alumni')
  int get idAlumni => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_user')
  int get idUser => throw _privateConstructorUsedError;
  String get nim => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_lahir')
  String get tglLahir => throw _privateConstructorUsedError;
  String get jurusan => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_telp')
  String get noTelp => throw _privateConstructorUsedError;
  String get angkatan => throw _privateConstructorUsedError;
  String get kelamin => throw _privateConstructorUsedError;
  String get agama => throw _privateConstructorUsedError;
  @JsonKey(name: 'golongan_darah')
  String get golonganDarah => throw _privateConstructorUsedError;
  bool get validated => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlumniModelCopyWith<AlumniModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniModelCopyWith<$Res> {
  factory $AlumniModelCopyWith(
          AlumniModel value, $Res Function(AlumniModel) then) =
      _$AlumniModelCopyWithImpl<$Res, AlumniModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_alumni') int idAlumni,
      @JsonKey(name: 'id_user') int idUser,
      String nim,
      String nama,
      @JsonKey(name: 'tgl_lahir') String tglLahir,
      String jurusan,
      @JsonKey(name: 'no_telp') String noTelp,
      String angkatan,
      String kelamin,
      String agama,
      @JsonKey(name: 'golongan_darah') String golonganDarah,
      bool validated,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$AlumniModelCopyWithImpl<$Res, $Val extends AlumniModel>
    implements $AlumniModelCopyWith<$Res> {
  _$AlumniModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idAlumni = null,
    Object? idUser = null,
    Object? nim = null,
    Object? nama = null,
    Object? tglLahir = null,
    Object? jurusan = null,
    Object? noTelp = null,
    Object? angkatan = null,
    Object? kelamin = null,
    Object? agama = null,
    Object? golonganDarah = null,
    Object? validated = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      idAlumni: null == idAlumni
          ? _value.idAlumni
          : idAlumni // ignore: cast_nullable_to_non_nullable
              as int,
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      nim: null == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      tglLahir: null == tglLahir
          ? _value.tglLahir
          : tglLahir // ignore: cast_nullable_to_non_nullable
              as String,
      jurusan: null == jurusan
          ? _value.jurusan
          : jurusan // ignore: cast_nullable_to_non_nullable
              as String,
      noTelp: null == noTelp
          ? _value.noTelp
          : noTelp // ignore: cast_nullable_to_non_nullable
              as String,
      angkatan: null == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String,
      kelamin: null == kelamin
          ? _value.kelamin
          : kelamin // ignore: cast_nullable_to_non_nullable
              as String,
      agama: null == agama
          ? _value.agama
          : agama // ignore: cast_nullable_to_non_nullable
              as String,
      golonganDarah: null == golonganDarah
          ? _value.golonganDarah
          : golonganDarah // ignore: cast_nullable_to_non_nullable
              as String,
      validated: null == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlumniModelImplCopyWith<$Res>
    implements $AlumniModelCopyWith<$Res> {
  factory _$$AlumniModelImplCopyWith(
          _$AlumniModelImpl value, $Res Function(_$AlumniModelImpl) then) =
      __$$AlumniModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_alumni') int idAlumni,
      @JsonKey(name: 'id_user') int idUser,
      String nim,
      String nama,
      @JsonKey(name: 'tgl_lahir') String tglLahir,
      String jurusan,
      @JsonKey(name: 'no_telp') String noTelp,
      String angkatan,
      String kelamin,
      String agama,
      @JsonKey(name: 'golongan_darah') String golonganDarah,
      bool validated,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$AlumniModelImplCopyWithImpl<$Res>
    extends _$AlumniModelCopyWithImpl<$Res, _$AlumniModelImpl>
    implements _$$AlumniModelImplCopyWith<$Res> {
  __$$AlumniModelImplCopyWithImpl(
      _$AlumniModelImpl _value, $Res Function(_$AlumniModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idAlumni = null,
    Object? idUser = null,
    Object? nim = null,
    Object? nama = null,
    Object? tglLahir = null,
    Object? jurusan = null,
    Object? noTelp = null,
    Object? angkatan = null,
    Object? kelamin = null,
    Object? agama = null,
    Object? golonganDarah = null,
    Object? validated = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AlumniModelImpl(
      idAlumni: null == idAlumni
          ? _value.idAlumni
          : idAlumni // ignore: cast_nullable_to_non_nullable
              as int,
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      nim: null == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      tglLahir: null == tglLahir
          ? _value.tglLahir
          : tglLahir // ignore: cast_nullable_to_non_nullable
              as String,
      jurusan: null == jurusan
          ? _value.jurusan
          : jurusan // ignore: cast_nullable_to_non_nullable
              as String,
      noTelp: null == noTelp
          ? _value.noTelp
          : noTelp // ignore: cast_nullable_to_non_nullable
              as String,
      angkatan: null == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String,
      kelamin: null == kelamin
          ? _value.kelamin
          : kelamin // ignore: cast_nullable_to_non_nullable
              as String,
      agama: null == agama
          ? _value.agama
          : agama // ignore: cast_nullable_to_non_nullable
              as String,
      golonganDarah: null == golonganDarah
          ? _value.golonganDarah
          : golonganDarah // ignore: cast_nullable_to_non_nullable
              as String,
      validated: null == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlumniModelImpl implements _AlumniModel {
  const _$AlumniModelImpl(
      {@JsonKey(name: 'id_alumni') required this.idAlumni,
      @JsonKey(name: 'id_user') required this.idUser,
      required this.nim,
      required this.nama,
      @JsonKey(name: 'tgl_lahir') required this.tglLahir,
      required this.jurusan,
      @JsonKey(name: 'no_telp') required this.noTelp,
      required this.angkatan,
      required this.kelamin,
      required this.agama,
      @JsonKey(name: 'golongan_darah') required this.golonganDarah,
      required this.validated,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$AlumniModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlumniModelImplFromJson(json);

  @override
  @JsonKey(name: 'id_alumni')
  final int idAlumni;
  @override
  @JsonKey(name: 'id_user')
  final int idUser;
  @override
  final String nim;
  @override
  final String nama;
  @override
  @JsonKey(name: 'tgl_lahir')
  final String tglLahir;
  @override
  final String jurusan;
  @override
  @JsonKey(name: 'no_telp')
  final String noTelp;
  @override
  final String angkatan;
  @override
  final String kelamin;
  @override
  final String agama;
  @override
  @JsonKey(name: 'golongan_darah')
  final String golonganDarah;
  @override
  final bool validated;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'AlumniModel(idAlumni: $idAlumni, idUser: $idUser, nim: $nim, nama: $nama, tglLahir: $tglLahir, jurusan: $jurusan, noTelp: $noTelp, angkatan: $angkatan, kelamin: $kelamin, agama: $agama, golonganDarah: $golonganDarah, validated: $validated, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlumniModelImpl &&
            (identical(other.idAlumni, idAlumni) ||
                other.idAlumni == idAlumni) &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.nim, nim) || other.nim == nim) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.tglLahir, tglLahir) ||
                other.tglLahir == tglLahir) &&
            (identical(other.jurusan, jurusan) || other.jurusan == jurusan) &&
            (identical(other.noTelp, noTelp) || other.noTelp == noTelp) &&
            (identical(other.angkatan, angkatan) ||
                other.angkatan == angkatan) &&
            (identical(other.kelamin, kelamin) || other.kelamin == kelamin) &&
            (identical(other.agama, agama) || other.agama == agama) &&
            (identical(other.golonganDarah, golonganDarah) ||
                other.golonganDarah == golonganDarah) &&
            (identical(other.validated, validated) ||
                other.validated == validated) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idAlumni,
      idUser,
      nim,
      nama,
      tglLahir,
      jurusan,
      noTelp,
      angkatan,
      kelamin,
      agama,
      golonganDarah,
      validated,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlumniModelImplCopyWith<_$AlumniModelImpl> get copyWith =>
      __$$AlumniModelImplCopyWithImpl<_$AlumniModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlumniModelImplToJson(
      this,
    );
  }
}

abstract class _AlumniModel implements AlumniModel {
  const factory _AlumniModel(
          {@JsonKey(name: 'id_alumni') required final int idAlumni,
          @JsonKey(name: 'id_user') required final int idUser,
          required final String nim,
          required final String nama,
          @JsonKey(name: 'tgl_lahir') required final String tglLahir,
          required final String jurusan,
          @JsonKey(name: 'no_telp') required final String noTelp,
          required final String angkatan,
          required final String kelamin,
          required final String agama,
          @JsonKey(name: 'golongan_darah') required final String golonganDarah,
          required final bool validated,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$AlumniModelImpl;

  factory _AlumniModel.fromJson(Map<String, dynamic> json) =
      _$AlumniModelImpl.fromJson;

  @override
  @JsonKey(name: 'id_alumni')
  int get idAlumni;
  @override
  @JsonKey(name: 'id_user')
  int get idUser;
  @override
  String get nim;
  @override
  String get nama;
  @override
  @JsonKey(name: 'tgl_lahir')
  String get tglLahir;
  @override
  String get jurusan;
  @override
  @JsonKey(name: 'no_telp')
  String get noTelp;
  @override
  String get angkatan;
  @override
  String get kelamin;
  @override
  String get agama;
  @override
  @JsonKey(name: 'golongan_darah')
  String get golonganDarah;
  @override
  bool get validated;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AlumniModelImplCopyWith<_$AlumniModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
