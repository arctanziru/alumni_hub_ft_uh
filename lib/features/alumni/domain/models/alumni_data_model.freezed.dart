// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alumni_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlumniDataResponse _$AlumniDataResponseFromJson(Map<String, dynamic> json) {
  return _AlumniDataResponse.fromJson(json);
}

/// @nodoc
mixin _$AlumniDataResponse {
  String get message => throw _privateConstructorUsedError;
  List<AlumniModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlumniDataResponseCopyWith<AlumniDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniDataResponseCopyWith<$Res> {
  factory $AlumniDataResponseCopyWith(
          AlumniDataResponse value, $Res Function(AlumniDataResponse) then) =
      _$AlumniDataResponseCopyWithImpl<$Res, AlumniDataResponse>;
  @useResult
  $Res call({String message, List<AlumniModel> data});
}

/// @nodoc
class _$AlumniDataResponseCopyWithImpl<$Res, $Val extends AlumniDataResponse>
    implements $AlumniDataResponseCopyWith<$Res> {
  _$AlumniDataResponseCopyWithImpl(this._value, this._then);

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
              as List<AlumniModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlumniDataResponseImplCopyWith<$Res>
    implements $AlumniDataResponseCopyWith<$Res> {
  factory _$$AlumniDataResponseImplCopyWith(_$AlumniDataResponseImpl value,
          $Res Function(_$AlumniDataResponseImpl) then) =
      __$$AlumniDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<AlumniModel> data});
}

/// @nodoc
class __$$AlumniDataResponseImplCopyWithImpl<$Res>
    extends _$AlumniDataResponseCopyWithImpl<$Res, _$AlumniDataResponseImpl>
    implements _$$AlumniDataResponseImplCopyWith<$Res> {
  __$$AlumniDataResponseImplCopyWithImpl(_$AlumniDataResponseImpl _value,
      $Res Function(_$AlumniDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AlumniDataResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AlumniModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlumniDataResponseImpl implements _AlumniDataResponse {
  const _$AlumniDataResponseImpl(
      {required this.message, required final List<AlumniModel> data})
      : _data = data;

  factory _$AlumniDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlumniDataResponseImplFromJson(json);

  @override
  final String message;
  final List<AlumniModel> _data;
  @override
  List<AlumniModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AlumniDataResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlumniDataResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlumniDataResponseImplCopyWith<_$AlumniDataResponseImpl> get copyWith =>
      __$$AlumniDataResponseImplCopyWithImpl<_$AlumniDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlumniDataResponseImplToJson(
      this,
    );
  }
}

abstract class _AlumniDataResponse implements AlumniDataResponse {
  const factory _AlumniDataResponse(
      {required final String message,
      required final List<AlumniModel> data}) = _$AlumniDataResponseImpl;

  factory _AlumniDataResponse.fromJson(Map<String, dynamic> json) =
      _$AlumniDataResponseImpl.fromJson;

  @override
  String get message;
  @override
  List<AlumniModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$AlumniDataResponseImplCopyWith<_$AlumniDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlumniDataBody _$AlumniDataBodyFromJson(Map<String, dynamic> json) {
  return _AlumniDataBody.fromJson(json);
}

/// @nodoc
mixin _$AlumniDataBody {
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_lahir')
  String get tglLahir => throw _privateConstructorUsedError;
  String? get nim => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlumniDataBodyCopyWith<AlumniDataBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniDataBodyCopyWith<$Res> {
  factory $AlumniDataBodyCopyWith(
          AlumniDataBody value, $Res Function(AlumniDataBody) then) =
      _$AlumniDataBodyCopyWithImpl<$Res, AlumniDataBody>;
  @useResult
  $Res call(
      {String nama, @JsonKey(name: 'tgl_lahir') String tglLahir, String? nim});
}

/// @nodoc
class _$AlumniDataBodyCopyWithImpl<$Res, $Val extends AlumniDataBody>
    implements $AlumniDataBodyCopyWith<$Res> {
  _$AlumniDataBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = null,
    Object? tglLahir = null,
    Object? nim = freezed,
  }) {
    return _then(_value.copyWith(
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      tglLahir: null == tglLahir
          ? _value.tglLahir
          : tglLahir // ignore: cast_nullable_to_non_nullable
              as String,
      nim: freezed == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlumniDataBodyImplCopyWith<$Res>
    implements $AlumniDataBodyCopyWith<$Res> {
  factory _$$AlumniDataBodyImplCopyWith(_$AlumniDataBodyImpl value,
          $Res Function(_$AlumniDataBodyImpl) then) =
      __$$AlumniDataBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nama, @JsonKey(name: 'tgl_lahir') String tglLahir, String? nim});
}

/// @nodoc
class __$$AlumniDataBodyImplCopyWithImpl<$Res>
    extends _$AlumniDataBodyCopyWithImpl<$Res, _$AlumniDataBodyImpl>
    implements _$$AlumniDataBodyImplCopyWith<$Res> {
  __$$AlumniDataBodyImplCopyWithImpl(
      _$AlumniDataBodyImpl _value, $Res Function(_$AlumniDataBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = null,
    Object? tglLahir = null,
    Object? nim = freezed,
  }) {
    return _then(_$AlumniDataBodyImpl(
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      tglLahir: null == tglLahir
          ? _value.tglLahir
          : tglLahir // ignore: cast_nullable_to_non_nullable
              as String,
      nim: freezed == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlumniDataBodyImpl implements _AlumniDataBody {
  const _$AlumniDataBodyImpl(
      {required this.nama,
      @JsonKey(name: 'tgl_lahir') required this.tglLahir,
      this.nim});

  factory _$AlumniDataBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlumniDataBodyImplFromJson(json);

  @override
  final String nama;
  @override
  @JsonKey(name: 'tgl_lahir')
  final String tglLahir;
  @override
  final String? nim;

  @override
  String toString() {
    return 'AlumniDataBody(nama: $nama, tglLahir: $tglLahir, nim: $nim)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlumniDataBodyImpl &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.tglLahir, tglLahir) ||
                other.tglLahir == tglLahir) &&
            (identical(other.nim, nim) || other.nim == nim));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nama, tglLahir, nim);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlumniDataBodyImplCopyWith<_$AlumniDataBodyImpl> get copyWith =>
      __$$AlumniDataBodyImplCopyWithImpl<_$AlumniDataBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlumniDataBodyImplToJson(
      this,
    );
  }
}

abstract class _AlumniDataBody implements AlumniDataBody {
  const factory _AlumniDataBody(
      {required final String nama,
      @JsonKey(name: 'tgl_lahir') required final String tglLahir,
      final String? nim}) = _$AlumniDataBodyImpl;

  factory _AlumniDataBody.fromJson(Map<String, dynamic> json) =
      _$AlumniDataBodyImpl.fromJson;

  @override
  String get nama;
  @override
  @JsonKey(name: 'tgl_lahir')
  String get tglLahir;
  @override
  String? get nim;
  @override
  @JsonKey(ignore: true)
  _$$AlumniDataBodyImplCopyWith<_$AlumniDataBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
