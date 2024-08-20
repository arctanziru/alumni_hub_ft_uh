// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alumni_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlumniResponse _$AlumniResponseFromJson(Map<String, dynamic> json) {
  return _AlumniResponse.fromJson(json);
}

/// @nodoc
mixin _$AlumniResponse {
  String get message => throw _privateConstructorUsedError;
  AlumniModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlumniResponseCopyWith<AlumniResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniResponseCopyWith<$Res> {
  factory $AlumniResponseCopyWith(
          AlumniResponse value, $Res Function(AlumniResponse) then) =
      _$AlumniResponseCopyWithImpl<$Res, AlumniResponse>;
  @useResult
  $Res call({String message, AlumniModel data});

  $AlumniModelCopyWith<$Res> get data;
}

/// @nodoc
class _$AlumniResponseCopyWithImpl<$Res, $Val extends AlumniResponse>
    implements $AlumniResponseCopyWith<$Res> {
  _$AlumniResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AlumniModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlumniModelCopyWith<$Res> get data {
    return $AlumniModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlumniResponseImplCopyWith<$Res>
    implements $AlumniResponseCopyWith<$Res> {
  factory _$$AlumniResponseImplCopyWith(_$AlumniResponseImpl value,
          $Res Function(_$AlumniResponseImpl) then) =
      __$$AlumniResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, AlumniModel data});

  @override
  $AlumniModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$AlumniResponseImplCopyWithImpl<$Res>
    extends _$AlumniResponseCopyWithImpl<$Res, _$AlumniResponseImpl>
    implements _$$AlumniResponseImplCopyWith<$Res> {
  __$$AlumniResponseImplCopyWithImpl(
      _$AlumniResponseImpl _value, $Res Function(_$AlumniResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AlumniResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AlumniModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlumniResponseImpl implements _AlumniResponse {
  const _$AlumniResponseImpl({required this.message, required this.data});

  factory _$AlumniResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlumniResponseImplFromJson(json);

  @override
  final String message;
  @override
  final AlumniModel data;

  @override
  String toString() {
    return 'AlumniResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlumniResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlumniResponseImplCopyWith<_$AlumniResponseImpl> get copyWith =>
      __$$AlumniResponseImplCopyWithImpl<_$AlumniResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlumniResponseImplToJson(
      this,
    );
  }
}

abstract class _AlumniResponse implements AlumniResponse {
  const factory _AlumniResponse(
      {required final String message,
      required final AlumniModel data}) = _$AlumniResponseImpl;

  factory _AlumniResponse.fromJson(Map<String, dynamic> json) =
      _$AlumniResponseImpl.fromJson;

  @override
  String get message;
  @override
  AlumniModel get data;
  @override
  @JsonKey(ignore: true)
  _$$AlumniResponseImplCopyWith<_$AlumniResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlumniUpdateBody _$AlumniUpdateBodyFromJson(Map<String, dynamic> json) {
  return _AlumniUpdateBody.fromJson(json);
}

/// @nodoc
mixin _$AlumniUpdateBody {
  String? get nim => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_lahir')
  String get tglLahir => throw _privateConstructorUsedError;
  String get jurusan => throw _privateConstructorUsedError;
  String get angkatan => throw _privateConstructorUsedError;
  String? get kelamin => throw _privateConstructorUsedError;
  String? get agama => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_telp')
  String? get noTelp => throw _privateConstructorUsedError;
  @JsonKey(name: 'golongan_darah')
  String? get golonganDarah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlumniUpdateBodyCopyWith<AlumniUpdateBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniUpdateBodyCopyWith<$Res> {
  factory $AlumniUpdateBodyCopyWith(
          AlumniUpdateBody value, $Res Function(AlumniUpdateBody) then) =
      _$AlumniUpdateBodyCopyWithImpl<$Res, AlumniUpdateBody>;
  @useResult
  $Res call(
      {String? nim,
      String nama,
      @JsonKey(name: 'tgl_lahir') String tglLahir,
      String jurusan,
      String angkatan,
      String? kelamin,
      String? agama,
      @JsonKey(name: 'no_telp') String? noTelp,
      @JsonKey(name: 'golongan_darah') String? golonganDarah});
}

/// @nodoc
class _$AlumniUpdateBodyCopyWithImpl<$Res, $Val extends AlumniUpdateBody>
    implements $AlumniUpdateBodyCopyWith<$Res> {
  _$AlumniUpdateBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nim = freezed,
    Object? nama = null,
    Object? tglLahir = null,
    Object? jurusan = null,
    Object? angkatan = null,
    Object? kelamin = freezed,
    Object? agama = freezed,
    Object? noTelp = freezed,
    Object? golonganDarah = freezed,
  }) {
    return _then(_value.copyWith(
      nim: freezed == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String?,
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
      angkatan: null == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String,
      kelamin: freezed == kelamin
          ? _value.kelamin
          : kelamin // ignore: cast_nullable_to_non_nullable
              as String?,
      agama: freezed == agama
          ? _value.agama
          : agama // ignore: cast_nullable_to_non_nullable
              as String?,
      noTelp: freezed == noTelp
          ? _value.noTelp
          : noTelp // ignore: cast_nullable_to_non_nullable
              as String?,
      golonganDarah: freezed == golonganDarah
          ? _value.golonganDarah
          : golonganDarah // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlumniUpdateBodyImplCopyWith<$Res>
    implements $AlumniUpdateBodyCopyWith<$Res> {
  factory _$$AlumniUpdateBodyImplCopyWith(_$AlumniUpdateBodyImpl value,
          $Res Function(_$AlumniUpdateBodyImpl) then) =
      __$$AlumniUpdateBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? nim,
      String nama,
      @JsonKey(name: 'tgl_lahir') String tglLahir,
      String jurusan,
      String angkatan,
      String? kelamin,
      String? agama,
      @JsonKey(name: 'no_telp') String? noTelp,
      @JsonKey(name: 'golongan_darah') String? golonganDarah});
}

/// @nodoc
class __$$AlumniUpdateBodyImplCopyWithImpl<$Res>
    extends _$AlumniUpdateBodyCopyWithImpl<$Res, _$AlumniUpdateBodyImpl>
    implements _$$AlumniUpdateBodyImplCopyWith<$Res> {
  __$$AlumniUpdateBodyImplCopyWithImpl(_$AlumniUpdateBodyImpl _value,
      $Res Function(_$AlumniUpdateBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nim = freezed,
    Object? nama = null,
    Object? tglLahir = null,
    Object? jurusan = null,
    Object? angkatan = null,
    Object? kelamin = freezed,
    Object? agama = freezed,
    Object? noTelp = freezed,
    Object? golonganDarah = freezed,
  }) {
    return _then(_$AlumniUpdateBodyImpl(
      nim: freezed == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String?,
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
      angkatan: null == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String,
      kelamin: freezed == kelamin
          ? _value.kelamin
          : kelamin // ignore: cast_nullable_to_non_nullable
              as String?,
      agama: freezed == agama
          ? _value.agama
          : agama // ignore: cast_nullable_to_non_nullable
              as String?,
      noTelp: freezed == noTelp
          ? _value.noTelp
          : noTelp // ignore: cast_nullable_to_non_nullable
              as String?,
      golonganDarah: freezed == golonganDarah
          ? _value.golonganDarah
          : golonganDarah // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlumniUpdateBodyImpl implements _AlumniUpdateBody {
  const _$AlumniUpdateBodyImpl(
      {required this.nim,
      required this.nama,
      @JsonKey(name: 'tgl_lahir') required this.tglLahir,
      required this.jurusan,
      required this.angkatan,
      this.kelamin,
      this.agama,
      @JsonKey(name: 'no_telp') this.noTelp,
      @JsonKey(name: 'golongan_darah') this.golonganDarah});

  factory _$AlumniUpdateBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlumniUpdateBodyImplFromJson(json);

  @override
  final String? nim;
  @override
  final String nama;
  @override
  @JsonKey(name: 'tgl_lahir')
  final String tglLahir;
  @override
  final String jurusan;
  @override
  final String angkatan;
  @override
  final String? kelamin;
  @override
  final String? agama;
  @override
  @JsonKey(name: 'no_telp')
  final String? noTelp;
  @override
  @JsonKey(name: 'golongan_darah')
  final String? golonganDarah;

  @override
  String toString() {
    return 'AlumniUpdateBody(nim: $nim, nama: $nama, tglLahir: $tglLahir, jurusan: $jurusan, angkatan: $angkatan, kelamin: $kelamin, agama: $agama, noTelp: $noTelp, golonganDarah: $golonganDarah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlumniUpdateBodyImpl &&
            (identical(other.nim, nim) || other.nim == nim) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.tglLahir, tglLahir) ||
                other.tglLahir == tglLahir) &&
            (identical(other.jurusan, jurusan) || other.jurusan == jurusan) &&
            (identical(other.angkatan, angkatan) ||
                other.angkatan == angkatan) &&
            (identical(other.kelamin, kelamin) || other.kelamin == kelamin) &&
            (identical(other.agama, agama) || other.agama == agama) &&
            (identical(other.noTelp, noTelp) || other.noTelp == noTelp) &&
            (identical(other.golonganDarah, golonganDarah) ||
                other.golonganDarah == golonganDarah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nim, nama, tglLahir, jurusan,
      angkatan, kelamin, agama, noTelp, golonganDarah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlumniUpdateBodyImplCopyWith<_$AlumniUpdateBodyImpl> get copyWith =>
      __$$AlumniUpdateBodyImplCopyWithImpl<_$AlumniUpdateBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlumniUpdateBodyImplToJson(
      this,
    );
  }
}

abstract class _AlumniUpdateBody implements AlumniUpdateBody {
  const factory _AlumniUpdateBody(
          {required final String? nim,
          required final String nama,
          @JsonKey(name: 'tgl_lahir') required final String tglLahir,
          required final String jurusan,
          required final String angkatan,
          final String? kelamin,
          final String? agama,
          @JsonKey(name: 'no_telp') final String? noTelp,
          @JsonKey(name: 'golongan_darah') final String? golonganDarah}) =
      _$AlumniUpdateBodyImpl;

  factory _AlumniUpdateBody.fromJson(Map<String, dynamic> json) =
      _$AlumniUpdateBodyImpl.fromJson;

  @override
  String? get nim;
  @override
  String get nama;
  @override
  @JsonKey(name: 'tgl_lahir')
  String get tglLahir;
  @override
  String get jurusan;
  @override
  String get angkatan;
  @override
  String? get kelamin;
  @override
  String? get agama;
  @override
  @JsonKey(name: 'no_telp')
  String? get noTelp;
  @override
  @JsonKey(name: 'golongan_darah')
  String? get golonganDarah;
  @override
  @JsonKey(ignore: true)
  _$$AlumniUpdateBodyImplCopyWith<_$AlumniUpdateBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
