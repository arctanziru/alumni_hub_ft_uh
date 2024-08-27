// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vacancy_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VacancyModel _$VacancyModelFromJson(Map<String, dynamic> json) {
  return _VacancyModel.fromJson(json);
}

/// @nodoc
mixin _$VacancyModel {
  @JsonKey(name: 'id_loker')
  int get idLoker => throw _privateConstructorUsedError;
  String get judul => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_perusahaan')
  int get idPerusahaan => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;
  String get konten => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_selesai')
  String get tglSelesai => throw _privateConstructorUsedError;
  String get lokasi => throw _privateConstructorUsedError;
  @JsonKey(name: 'pengalaman_kerja')
  String get pengalamanKerja => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Company get perusahaan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VacancyModelCopyWith<VacancyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacancyModelCopyWith<$Res> {
  factory $VacancyModelCopyWith(
          VacancyModel value, $Res Function(VacancyModel) then) =
      _$VacancyModelCopyWithImpl<$Res, VacancyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_loker') int idLoker,
      String judul,
      @JsonKey(name: 'id_perusahaan') int idPerusahaan,
      String slug,
      String? deskripsi,
      String konten,
      @JsonKey(name: 'tgl_selesai') String tglSelesai,
      String lokasi,
      @JsonKey(name: 'pengalaman_kerja') String pengalamanKerja,
      String role,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      Company perusahaan});

  $CompanyCopyWith<$Res> get perusahaan;
}

/// @nodoc
class _$VacancyModelCopyWithImpl<$Res, $Val extends VacancyModel>
    implements $VacancyModelCopyWith<$Res> {
  _$VacancyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idLoker = null,
    Object? judul = null,
    Object? idPerusahaan = null,
    Object? slug = null,
    Object? deskripsi = freezed,
    Object? konten = null,
    Object? tglSelesai = null,
    Object? lokasi = null,
    Object? pengalamanKerja = null,
    Object? role = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? perusahaan = null,
  }) {
    return _then(_value.copyWith(
      idLoker: null == idLoker
          ? _value.idLoker
          : idLoker // ignore: cast_nullable_to_non_nullable
              as int,
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      idPerusahaan: null == idPerusahaan
          ? _value.idPerusahaan
          : idPerusahaan // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      konten: null == konten
          ? _value.konten
          : konten // ignore: cast_nullable_to_non_nullable
              as String,
      tglSelesai: null == tglSelesai
          ? _value.tglSelesai
          : tglSelesai // ignore: cast_nullable_to_non_nullable
              as String,
      lokasi: null == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String,
      pengalamanKerja: null == pengalamanKerja
          ? _value.pengalamanKerja
          : pengalamanKerja // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      perusahaan: null == perusahaan
          ? _value.perusahaan
          : perusahaan // ignore: cast_nullable_to_non_nullable
              as Company,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyCopyWith<$Res> get perusahaan {
    return $CompanyCopyWith<$Res>(_value.perusahaan, (value) {
      return _then(_value.copyWith(perusahaan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VacancyModelImplCopyWith<$Res>
    implements $VacancyModelCopyWith<$Res> {
  factory _$$VacancyModelImplCopyWith(
          _$VacancyModelImpl value, $Res Function(_$VacancyModelImpl) then) =
      __$$VacancyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_loker') int idLoker,
      String judul,
      @JsonKey(name: 'id_perusahaan') int idPerusahaan,
      String slug,
      String? deskripsi,
      String konten,
      @JsonKey(name: 'tgl_selesai') String tglSelesai,
      String lokasi,
      @JsonKey(name: 'pengalaman_kerja') String pengalamanKerja,
      String role,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      Company perusahaan});

  @override
  $CompanyCopyWith<$Res> get perusahaan;
}

/// @nodoc
class __$$VacancyModelImplCopyWithImpl<$Res>
    extends _$VacancyModelCopyWithImpl<$Res, _$VacancyModelImpl>
    implements _$$VacancyModelImplCopyWith<$Res> {
  __$$VacancyModelImplCopyWithImpl(
      _$VacancyModelImpl _value, $Res Function(_$VacancyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idLoker = null,
    Object? judul = null,
    Object? idPerusahaan = null,
    Object? slug = null,
    Object? deskripsi = freezed,
    Object? konten = null,
    Object? tglSelesai = null,
    Object? lokasi = null,
    Object? pengalamanKerja = null,
    Object? role = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? perusahaan = null,
  }) {
    return _then(_$VacancyModelImpl(
      idLoker: null == idLoker
          ? _value.idLoker
          : idLoker // ignore: cast_nullable_to_non_nullable
              as int,
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      idPerusahaan: null == idPerusahaan
          ? _value.idPerusahaan
          : idPerusahaan // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      konten: null == konten
          ? _value.konten
          : konten // ignore: cast_nullable_to_non_nullable
              as String,
      tglSelesai: null == tglSelesai
          ? _value.tglSelesai
          : tglSelesai // ignore: cast_nullable_to_non_nullable
              as String,
      lokasi: null == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String,
      pengalamanKerja: null == pengalamanKerja
          ? _value.pengalamanKerja
          : pengalamanKerja // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      perusahaan: null == perusahaan
          ? _value.perusahaan
          : perusahaan // ignore: cast_nullable_to_non_nullable
              as Company,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VacancyModelImpl implements _VacancyModel {
  const _$VacancyModelImpl(
      {@JsonKey(name: 'id_loker') required this.idLoker,
      required this.judul,
      @JsonKey(name: 'id_perusahaan') required this.idPerusahaan,
      required this.slug,
      this.deskripsi,
      required this.konten,
      @JsonKey(name: 'tgl_selesai') required this.tglSelesai,
      required this.lokasi,
      @JsonKey(name: 'pengalaman_kerja') required this.pengalamanKerja,
      required this.role,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.perusahaan});

  factory _$VacancyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VacancyModelImplFromJson(json);

  @override
  @JsonKey(name: 'id_loker')
  final int idLoker;
  @override
  final String judul;
  @override
  @JsonKey(name: 'id_perusahaan')
  final int idPerusahaan;
  @override
  final String slug;
  @override
  final String? deskripsi;
  @override
  final String konten;
  @override
  @JsonKey(name: 'tgl_selesai')
  final String tglSelesai;
  @override
  final String lokasi;
  @override
  @JsonKey(name: 'pengalaman_kerja')
  final String pengalamanKerja;
  @override
  final String role;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  final Company perusahaan;

  @override
  String toString() {
    return 'VacancyModel(idLoker: $idLoker, judul: $judul, idPerusahaan: $idPerusahaan, slug: $slug, deskripsi: $deskripsi, konten: $konten, tglSelesai: $tglSelesai, lokasi: $lokasi, pengalamanKerja: $pengalamanKerja, role: $role, createdAt: $createdAt, updatedAt: $updatedAt, perusahaan: $perusahaan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VacancyModelImpl &&
            (identical(other.idLoker, idLoker) || other.idLoker == idLoker) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.idPerusahaan, idPerusahaan) ||
                other.idPerusahaan == idPerusahaan) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.konten, konten) || other.konten == konten) &&
            (identical(other.tglSelesai, tglSelesai) ||
                other.tglSelesai == tglSelesai) &&
            (identical(other.lokasi, lokasi) || other.lokasi == lokasi) &&
            (identical(other.pengalamanKerja, pengalamanKerja) ||
                other.pengalamanKerja == pengalamanKerja) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.perusahaan, perusahaan) ||
                other.perusahaan == perusahaan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idLoker,
      judul,
      idPerusahaan,
      slug,
      deskripsi,
      konten,
      tglSelesai,
      lokasi,
      pengalamanKerja,
      role,
      createdAt,
      updatedAt,
      perusahaan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VacancyModelImplCopyWith<_$VacancyModelImpl> get copyWith =>
      __$$VacancyModelImplCopyWithImpl<_$VacancyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VacancyModelImplToJson(
      this,
    );
  }
}

abstract class _VacancyModel implements VacancyModel {
  const factory _VacancyModel(
      {@JsonKey(name: 'id_loker') required final int idLoker,
      required final String judul,
      @JsonKey(name: 'id_perusahaan') required final int idPerusahaan,
      required final String slug,
      final String? deskripsi,
      required final String konten,
      @JsonKey(name: 'tgl_selesai') required final String tglSelesai,
      required final String lokasi,
      @JsonKey(name: 'pengalaman_kerja') required final String pengalamanKerja,
      required final String role,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      required final Company perusahaan}) = _$VacancyModelImpl;

  factory _VacancyModel.fromJson(Map<String, dynamic> json) =
      _$VacancyModelImpl.fromJson;

  @override
  @JsonKey(name: 'id_loker')
  int get idLoker;
  @override
  String get judul;
  @override
  @JsonKey(name: 'id_perusahaan')
  int get idPerusahaan;
  @override
  String get slug;
  @override
  String? get deskripsi;
  @override
  String get konten;
  @override
  @JsonKey(name: 'tgl_selesai')
  String get tglSelesai;
  @override
  String get lokasi;
  @override
  @JsonKey(name: 'pengalaman_kerja')
  String get pengalamanKerja;
  @override
  String get role;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  Company get perusahaan;
  @override
  @JsonKey(ignore: true)
  _$$VacancyModelImplCopyWith<_$VacancyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  @JsonKey(name: 'id_perusahaan')
  int get idPerusahaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_perusahaan')
  String get namaPerusahaan => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_perusahaan') int idPerusahaan,
      @JsonKey(name: 'nama_perusahaan') String namaPerusahaan,
      String logo});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idPerusahaan = null,
    Object? namaPerusahaan = null,
    Object? logo = null,
  }) {
    return _then(_value.copyWith(
      idPerusahaan: null == idPerusahaan
          ? _value.idPerusahaan
          : idPerusahaan // ignore: cast_nullable_to_non_nullable
              as int,
      namaPerusahaan: null == namaPerusahaan
          ? _value.namaPerusahaan
          : namaPerusahaan // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompanyImplCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$CompanyImplCopyWith(
          _$CompanyImpl value, $Res Function(_$CompanyImpl) then) =
      __$$CompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_perusahaan') int idPerusahaan,
      @JsonKey(name: 'nama_perusahaan') String namaPerusahaan,
      String logo});
}

/// @nodoc
class __$$CompanyImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanyImpl>
    implements _$$CompanyImplCopyWith<$Res> {
  __$$CompanyImplCopyWithImpl(
      _$CompanyImpl _value, $Res Function(_$CompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idPerusahaan = null,
    Object? namaPerusahaan = null,
    Object? logo = null,
  }) {
    return _then(_$CompanyImpl(
      idPerusahaan: null == idPerusahaan
          ? _value.idPerusahaan
          : idPerusahaan // ignore: cast_nullable_to_non_nullable
              as int,
      namaPerusahaan: null == namaPerusahaan
          ? _value.namaPerusahaan
          : namaPerusahaan // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyImpl implements _Company {
  const _$CompanyImpl(
      {@JsonKey(name: 'id_perusahaan') required this.idPerusahaan,
      @JsonKey(name: 'nama_perusahaan') required this.namaPerusahaan,
      required this.logo});

  factory _$CompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyImplFromJson(json);

  @override
  @JsonKey(name: 'id_perusahaan')
  final int idPerusahaan;
  @override
  @JsonKey(name: 'nama_perusahaan')
  final String namaPerusahaan;
  @override
  final String logo;

  @override
  String toString() {
    return 'Company(idPerusahaan: $idPerusahaan, namaPerusahaan: $namaPerusahaan, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyImpl &&
            (identical(other.idPerusahaan, idPerusahaan) ||
                other.idPerusahaan == idPerusahaan) &&
            (identical(other.namaPerusahaan, namaPerusahaan) ||
                other.namaPerusahaan == namaPerusahaan) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idPerusahaan, namaPerusahaan, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      __$$CompanyImplCopyWithImpl<_$CompanyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyImplToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {@JsonKey(name: 'id_perusahaan') required final int idPerusahaan,
      @JsonKey(name: 'nama_perusahaan') required final String namaPerusahaan,
      required final String logo}) = _$CompanyImpl;

  factory _Company.fromJson(Map<String, dynamic> json) = _$CompanyImpl.fromJson;

  @override
  @JsonKey(name: 'id_perusahaan')
  int get idPerusahaan;
  @override
  @JsonKey(name: 'nama_perusahaan')
  String get namaPerusahaan;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$$CompanyImplCopyWith<_$CompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
