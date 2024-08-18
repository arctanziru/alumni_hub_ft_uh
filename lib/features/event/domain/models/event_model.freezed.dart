// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventModel _$EventModelFromJson(Map<String, dynamic> json) {
  return _EventModel.fromJson(json);
}

/// @nodoc
mixin _$EventModel {
  @JsonKey(name: 'id_event')
  int get idEvent => throw _privateConstructorUsedError;
  String get judul => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get gambar => throw _privateConstructorUsedError;
  String get konten => throw _privateConstructorUsedError;
  String get penyelenggara => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_event')
  DateTime get tglEvent => throw _privateConstructorUsedError;
  @JsonKey(name: 'lokasi_event')
  String get lokasiEvent => throw _privateConstructorUsedError;
  int get kuota => throw _privateConstructorUsedError;
  int get peserta => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_registered')
  bool? get isRegistered => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res, EventModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_event') int idEvent,
      String judul,
      String slug,
      String gambar,
      String konten,
      String penyelenggara,
      @JsonKey(name: 'tgl_event') DateTime tglEvent,
      @JsonKey(name: 'lokasi_event') String lokasiEvent,
      int kuota,
      int peserta,
      @JsonKey(name: 'is_registered') bool? isRegistered,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res, $Val extends EventModel>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idEvent = null,
    Object? judul = null,
    Object? slug = null,
    Object? gambar = null,
    Object? konten = null,
    Object? penyelenggara = null,
    Object? tglEvent = null,
    Object? lokasiEvent = null,
    Object? kuota = null,
    Object? peserta = null,
    Object? isRegistered = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      idEvent: null == idEvent
          ? _value.idEvent
          : idEvent // ignore: cast_nullable_to_non_nullable
              as int,
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
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
      penyelenggara: null == penyelenggara
          ? _value.penyelenggara
          : penyelenggara // ignore: cast_nullable_to_non_nullable
              as String,
      tglEvent: null == tglEvent
          ? _value.tglEvent
          : tglEvent // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lokasiEvent: null == lokasiEvent
          ? _value.lokasiEvent
          : lokasiEvent // ignore: cast_nullable_to_non_nullable
              as String,
      kuota: null == kuota
          ? _value.kuota
          : kuota // ignore: cast_nullable_to_non_nullable
              as int,
      peserta: null == peserta
          ? _value.peserta
          : peserta // ignore: cast_nullable_to_non_nullable
              as int,
      isRegistered: freezed == isRegistered
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventModelImplCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$$EventModelImplCopyWith(
          _$EventModelImpl value, $Res Function(_$EventModelImpl) then) =
      __$$EventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_event') int idEvent,
      String judul,
      String slug,
      String gambar,
      String konten,
      String penyelenggara,
      @JsonKey(name: 'tgl_event') DateTime tglEvent,
      @JsonKey(name: 'lokasi_event') String lokasiEvent,
      int kuota,
      int peserta,
      @JsonKey(name: 'is_registered') bool? isRegistered,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$EventModelImplCopyWithImpl<$Res>
    extends _$EventModelCopyWithImpl<$Res, _$EventModelImpl>
    implements _$$EventModelImplCopyWith<$Res> {
  __$$EventModelImplCopyWithImpl(
      _$EventModelImpl _value, $Res Function(_$EventModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idEvent = null,
    Object? judul = null,
    Object? slug = null,
    Object? gambar = null,
    Object? konten = null,
    Object? penyelenggara = null,
    Object? tglEvent = null,
    Object? lokasiEvent = null,
    Object? kuota = null,
    Object? peserta = null,
    Object? isRegistered = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$EventModelImpl(
      idEvent: null == idEvent
          ? _value.idEvent
          : idEvent // ignore: cast_nullable_to_non_nullable
              as int,
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
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
      penyelenggara: null == penyelenggara
          ? _value.penyelenggara
          : penyelenggara // ignore: cast_nullable_to_non_nullable
              as String,
      tglEvent: null == tglEvent
          ? _value.tglEvent
          : tglEvent // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lokasiEvent: null == lokasiEvent
          ? _value.lokasiEvent
          : lokasiEvent // ignore: cast_nullable_to_non_nullable
              as String,
      kuota: null == kuota
          ? _value.kuota
          : kuota // ignore: cast_nullable_to_non_nullable
              as int,
      peserta: null == peserta
          ? _value.peserta
          : peserta // ignore: cast_nullable_to_non_nullable
              as int,
      isRegistered: freezed == isRegistered
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventModelImpl implements _EventModel {
  const _$EventModelImpl(
      {@JsonKey(name: 'id_event') required this.idEvent,
      required this.judul,
      required this.slug,
      required this.gambar,
      required this.konten,
      required this.penyelenggara,
      @JsonKey(name: 'tgl_event') required this.tglEvent,
      @JsonKey(name: 'lokasi_event') required this.lokasiEvent,
      required this.kuota,
      required this.peserta,
      @JsonKey(name: 'is_registered') required this.isRegistered,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$EventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventModelImplFromJson(json);

  @override
  @JsonKey(name: 'id_event')
  final int idEvent;
  @override
  final String judul;
  @override
  final String slug;
  @override
  final String gambar;
  @override
  final String konten;
  @override
  final String penyelenggara;
  @override
  @JsonKey(name: 'tgl_event')
  final DateTime tglEvent;
  @override
  @JsonKey(name: 'lokasi_event')
  final String lokasiEvent;
  @override
  final int kuota;
  @override
  final int peserta;
  @override
  @JsonKey(name: 'is_registered')
  final bool? isRegistered;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'EventModel(idEvent: $idEvent, judul: $judul, slug: $slug, gambar: $gambar, konten: $konten, penyelenggara: $penyelenggara, tglEvent: $tglEvent, lokasiEvent: $lokasiEvent, kuota: $kuota, peserta: $peserta, isRegistered: $isRegistered, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelImpl &&
            (identical(other.idEvent, idEvent) || other.idEvent == idEvent) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.gambar, gambar) || other.gambar == gambar) &&
            (identical(other.konten, konten) || other.konten == konten) &&
            (identical(other.penyelenggara, penyelenggara) ||
                other.penyelenggara == penyelenggara) &&
            (identical(other.tglEvent, tglEvent) ||
                other.tglEvent == tglEvent) &&
            (identical(other.lokasiEvent, lokasiEvent) ||
                other.lokasiEvent == lokasiEvent) &&
            (identical(other.kuota, kuota) || other.kuota == kuota) &&
            (identical(other.peserta, peserta) || other.peserta == peserta) &&
            (identical(other.isRegistered, isRegistered) ||
                other.isRegistered == isRegistered) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idEvent,
      judul,
      slug,
      gambar,
      konten,
      penyelenggara,
      tglEvent,
      lokasiEvent,
      kuota,
      peserta,
      isRegistered,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      __$$EventModelImplCopyWithImpl<_$EventModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventModelImplToJson(
      this,
    );
  }
}

abstract class _EventModel implements EventModel {
  const factory _EventModel(
          {@JsonKey(name: 'id_event') required final int idEvent,
          required final String judul,
          required final String slug,
          required final String gambar,
          required final String konten,
          required final String penyelenggara,
          @JsonKey(name: 'tgl_event') required final DateTime tglEvent,
          @JsonKey(name: 'lokasi_event') required final String lokasiEvent,
          required final int kuota,
          required final int peserta,
          @JsonKey(name: 'is_registered') required final bool? isRegistered,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$EventModelImpl;

  factory _EventModel.fromJson(Map<String, dynamic> json) =
      _$EventModelImpl.fromJson;

  @override
  @JsonKey(name: 'id_event')
  int get idEvent;
  @override
  String get judul;
  @override
  String get slug;
  @override
  String get gambar;
  @override
  String get konten;
  @override
  String get penyelenggara;
  @override
  @JsonKey(name: 'tgl_event')
  DateTime get tglEvent;
  @override
  @JsonKey(name: 'lokasi_event')
  String get lokasiEvent;
  @override
  int get kuota;
  @override
  int get peserta;
  @override
  @JsonKey(name: 'is_registered')
  bool? get isRegistered;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
