// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return _NewsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsModel {
  @JsonKey(name: 'id_berita')
  int get idBerita => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_kategori_berita')
  int? get idKategoriBerita => throw _privateConstructorUsedError;
  NewsCategoryModel? get kategori => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;
  String get judul => throw _privateConstructorUsedError;
  String get penulis => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get gambar => throw _privateConstructorUsedError;
  String get konten => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_liked')
  bool get isLiked => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_like')
  int get totalLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  dynamic get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res, NewsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_berita') int idBerita,
      @JsonKey(name: 'id_kategori_berita') int? idKategoriBerita,
      NewsCategoryModel? kategori,
      String? deskripsi,
      String judul,
      String penulis,
      String slug,
      String gambar,
      String konten,
      @JsonKey(name: 'is_liked') bool isLiked,
      @JsonKey(name: 'total_like') int totalLike,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      dynamic required});

  $NewsCategoryModelCopyWith<$Res>? get kategori;
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res, $Val extends NewsModel>
    implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idBerita = null,
    Object? idKategoriBerita = freezed,
    Object? kategori = freezed,
    Object? deskripsi = freezed,
    Object? judul = null,
    Object? penulis = null,
    Object? slug = null,
    Object? gambar = null,
    Object? konten = null,
    Object? isLiked = null,
    Object? totalLike = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      idBerita: null == idBerita
          ? _value.idBerita
          : idBerita // ignore: cast_nullable_to_non_nullable
              as int,
      idKategoriBerita: freezed == idKategoriBerita
          ? _value.idKategoriBerita
          : idKategoriBerita // ignore: cast_nullable_to_non_nullable
              as int?,
      kategori: freezed == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as NewsCategoryModel?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      penulis: null == penulis
          ? _value.penulis
          : penulis // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      gambar: null == gambar
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String,
      konten: null == konten
          ? _value.konten
          : konten // ignore: cast_nullable_to_non_nullable
              as String,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      totalLike: null == totalLike
          ? _value.totalLike
          : totalLike // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsCategoryModelCopyWith<$Res>? get kategori {
    if (_value.kategori == null) {
      return null;
    }

    return $NewsCategoryModelCopyWith<$Res>(_value.kategori!, (value) {
      return _then(_value.copyWith(kategori: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsModelImplCopyWith<$Res>
    implements $NewsModelCopyWith<$Res> {
  factory _$$NewsModelImplCopyWith(
          _$NewsModelImpl value, $Res Function(_$NewsModelImpl) then) =
      __$$NewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_berita') int idBerita,
      @JsonKey(name: 'id_kategori_berita') int? idKategoriBerita,
      NewsCategoryModel? kategori,
      String? deskripsi,
      String judul,
      String penulis,
      String slug,
      String gambar,
      String konten,
      @JsonKey(name: 'is_liked') bool isLiked,
      @JsonKey(name: 'total_like') int totalLike,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      dynamic required});

  @override
  $NewsCategoryModelCopyWith<$Res>? get kategori;
}

/// @nodoc
class __$$NewsModelImplCopyWithImpl<$Res>
    extends _$NewsModelCopyWithImpl<$Res, _$NewsModelImpl>
    implements _$$NewsModelImplCopyWith<$Res> {
  __$$NewsModelImplCopyWithImpl(
      _$NewsModelImpl _value, $Res Function(_$NewsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idBerita = null,
    Object? idKategoriBerita = freezed,
    Object? kategori = freezed,
    Object? deskripsi = freezed,
    Object? judul = null,
    Object? penulis = null,
    Object? slug = null,
    Object? gambar = null,
    Object? konten = null,
    Object? isLiked = null,
    Object? totalLike = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? required = freezed,
  }) {
    return _then(_$NewsModelImpl(
      idBerita: null == idBerita
          ? _value.idBerita
          : idBerita // ignore: cast_nullable_to_non_nullable
              as int,
      idKategoriBerita: freezed == idKategoriBerita
          ? _value.idKategoriBerita
          : idKategoriBerita // ignore: cast_nullable_to_non_nullable
              as int?,
      kategori: freezed == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as NewsCategoryModel?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      penulis: null == penulis
          ? _value.penulis
          : penulis // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      gambar: null == gambar
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String,
      konten: null == konten
          ? _value.konten
          : konten // ignore: cast_nullable_to_non_nullable
              as String,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      totalLike: null == totalLike
          ? _value.totalLike
          : totalLike // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsModelImpl implements _NewsModel {
  const _$NewsModelImpl(
      {@JsonKey(name: 'id_berita') required this.idBerita,
      @JsonKey(name: 'id_kategori_berita') required this.idKategoriBerita,
      required this.kategori,
      this.deskripsi,
      required this.judul,
      required this.penulis,
      required this.slug,
      required this.gambar,
      required this.konten,
      @JsonKey(name: 'is_liked') required this.isLiked,
      @JsonKey(name: 'total_like') required this.totalLike,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      this.required});

  factory _$NewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsModelImplFromJson(json);

  @override
  @JsonKey(name: 'id_berita')
  final int idBerita;
  @override
  @JsonKey(name: 'id_kategori_berita')
  final int? idKategoriBerita;
  @override
  final NewsCategoryModel? kategori;
  @override
  final String? deskripsi;
  @override
  final String judul;
  @override
  final String penulis;
  @override
  final String slug;
  @override
  final String gambar;
  @override
  final String konten;
  @override
  @JsonKey(name: 'is_liked')
  final bool isLiked;
  @override
  @JsonKey(name: 'total_like')
  final int totalLike;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  final dynamic required;

  @override
  String toString() {
    return 'NewsModel(idBerita: $idBerita, idKategoriBerita: $idKategoriBerita, kategori: $kategori, deskripsi: $deskripsi, judul: $judul, penulis: $penulis, slug: $slug, gambar: $gambar, konten: $konten, isLiked: $isLiked, totalLike: $totalLike, createdAt: $createdAt, updatedAt: $updatedAt, required: $required)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsModelImpl &&
            (identical(other.idBerita, idBerita) ||
                other.idBerita == idBerita) &&
            (identical(other.idKategoriBerita, idKategoriBerita) ||
                other.idKategoriBerita == idKategoriBerita) &&
            (identical(other.kategori, kategori) ||
                other.kategori == kategori) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.penulis, penulis) || other.penulis == penulis) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.gambar, gambar) || other.gambar == gambar) &&
            (identical(other.konten, konten) || other.konten == konten) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.totalLike, totalLike) ||
                other.totalLike == totalLike) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idBerita,
      idKategoriBerita,
      kategori,
      deskripsi,
      judul,
      penulis,
      slug,
      gambar,
      konten,
      isLiked,
      totalLike,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      __$$NewsModelImplCopyWithImpl<_$NewsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsModelImplToJson(
      this,
    );
  }
}

abstract class _NewsModel implements NewsModel {
  const factory _NewsModel(
      {@JsonKey(name: 'id_berita') required final int idBerita,
      @JsonKey(name: 'id_kategori_berita') required final int? idKategoriBerita,
      required final NewsCategoryModel? kategori,
      final String? deskripsi,
      required final String judul,
      required final String penulis,
      required final String slug,
      required final String gambar,
      required final String konten,
      @JsonKey(name: 'is_liked') required final bool isLiked,
      @JsonKey(name: 'total_like') required final int totalLike,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      final dynamic required}) = _$NewsModelImpl;

  factory _NewsModel.fromJson(Map<String, dynamic> json) =
      _$NewsModelImpl.fromJson;

  @override
  @JsonKey(name: 'id_berita')
  int get idBerita;
  @override
  @JsonKey(name: 'id_kategori_berita')
  int? get idKategoriBerita;
  @override
  NewsCategoryModel? get kategori;
  @override
  String? get deskripsi;
  @override
  String get judul;
  @override
  String get penulis;
  @override
  String get slug;
  @override
  String get gambar;
  @override
  String get konten;
  @override
  @JsonKey(name: 'is_liked')
  bool get isLiked;
  @override
  @JsonKey(name: 'total_like')
  int get totalLike;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsCategoryModel _$NewsCategoryModelFromJson(Map<String, dynamic> json) {
  return _NewsCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$NewsCategoryModel {
  @JsonKey(name: 'id_kategori_berita')
  int get idKategoriBerita => throw _privateConstructorUsedError;
  String get kategori => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCategoryModelCopyWith<NewsCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCategoryModelCopyWith<$Res> {
  factory $NewsCategoryModelCopyWith(
          NewsCategoryModel value, $Res Function(NewsCategoryModel) then) =
      _$NewsCategoryModelCopyWithImpl<$Res, NewsCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_kategori_berita') int idKategoriBerita,
      String kategori,
      String slug});
}

/// @nodoc
class _$NewsCategoryModelCopyWithImpl<$Res, $Val extends NewsCategoryModel>
    implements $NewsCategoryModelCopyWith<$Res> {
  _$NewsCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idKategoriBerita = null,
    Object? kategori = null,
    Object? slug = null,
  }) {
    return _then(_value.copyWith(
      idKategoriBerita: null == idKategoriBerita
          ? _value.idKategoriBerita
          : idKategoriBerita // ignore: cast_nullable_to_non_nullable
              as int,
      kategori: null == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsCategoryModelImplCopyWith<$Res>
    implements $NewsCategoryModelCopyWith<$Res> {
  factory _$$NewsCategoryModelImplCopyWith(_$NewsCategoryModelImpl value,
          $Res Function(_$NewsCategoryModelImpl) then) =
      __$$NewsCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_kategori_berita') int idKategoriBerita,
      String kategori,
      String slug});
}

/// @nodoc
class __$$NewsCategoryModelImplCopyWithImpl<$Res>
    extends _$NewsCategoryModelCopyWithImpl<$Res, _$NewsCategoryModelImpl>
    implements _$$NewsCategoryModelImplCopyWith<$Res> {
  __$$NewsCategoryModelImplCopyWithImpl(_$NewsCategoryModelImpl _value,
      $Res Function(_$NewsCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idKategoriBerita = null,
    Object? kategori = null,
    Object? slug = null,
  }) {
    return _then(_$NewsCategoryModelImpl(
      idKategoriBerita: null == idKategoriBerita
          ? _value.idKategoriBerita
          : idKategoriBerita // ignore: cast_nullable_to_non_nullable
              as int,
      kategori: null == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsCategoryModelImpl implements _NewsCategoryModel {
  const _$NewsCategoryModelImpl(
      {@JsonKey(name: 'id_kategori_berita') required this.idKategoriBerita,
      required this.kategori,
      required this.slug});

  factory _$NewsCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'id_kategori_berita')
  final int idKategoriBerita;
  @override
  final String kategori;
  @override
  final String slug;

  @override
  String toString() {
    return 'NewsCategoryModel(idKategoriBerita: $idKategoriBerita, kategori: $kategori, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsCategoryModelImpl &&
            (identical(other.idKategoriBerita, idKategoriBerita) ||
                other.idKategoriBerita == idKategoriBerita) &&
            (identical(other.kategori, kategori) ||
                other.kategori == kategori) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idKategoriBerita, kategori, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsCategoryModelImplCopyWith<_$NewsCategoryModelImpl> get copyWith =>
      __$$NewsCategoryModelImplCopyWithImpl<_$NewsCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _NewsCategoryModel implements NewsCategoryModel {
  const factory _NewsCategoryModel(
      {@JsonKey(name: 'id_kategori_berita') required final int idKategoriBerita,
      required final String kategori,
      required final String slug}) = _$NewsCategoryModelImpl;

  factory _NewsCategoryModel.fromJson(Map<String, dynamic> json) =
      _$NewsCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'id_kategori_berita')
  int get idKategoriBerita;
  @override
  String get kategori;
  @override
  String get slug;
  @override
  @JsonKey(ignore: true)
  _$$NewsCategoryModelImplCopyWith<_$NewsCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
