// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alumni_get_many_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlumniGetManyModelResponse _$AlumniGetManyModelResponseFromJson(
    Map<String, dynamic> json) {
  return _AlumniGetManyModelResponse.fromJson(json);
}

/// @nodoc
mixin _$AlumniGetManyModelResponse {
  String get message => throw _privateConstructorUsedError;
  List<AlumniModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlumniGetManyModelResponseCopyWith<AlumniGetManyModelResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniGetManyModelResponseCopyWith<$Res> {
  factory $AlumniGetManyModelResponseCopyWith(AlumniGetManyModelResponse value,
          $Res Function(AlumniGetManyModelResponse) then) =
      _$AlumniGetManyModelResponseCopyWithImpl<$Res,
          AlumniGetManyModelResponse>;
  @useResult
  $Res call({String message, List<AlumniModel> data});
}

/// @nodoc
class _$AlumniGetManyModelResponseCopyWithImpl<$Res,
        $Val extends AlumniGetManyModelResponse>
    implements $AlumniGetManyModelResponseCopyWith<$Res> {
  _$AlumniGetManyModelResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$AlumniGetManyModelResponseImplCopyWith<$Res>
    implements $AlumniGetManyModelResponseCopyWith<$Res> {
  factory _$$AlumniGetManyModelResponseImplCopyWith(
          _$AlumniGetManyModelResponseImpl value,
          $Res Function(_$AlumniGetManyModelResponseImpl) then) =
      __$$AlumniGetManyModelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<AlumniModel> data});
}

/// @nodoc
class __$$AlumniGetManyModelResponseImplCopyWithImpl<$Res>
    extends _$AlumniGetManyModelResponseCopyWithImpl<$Res,
        _$AlumniGetManyModelResponseImpl>
    implements _$$AlumniGetManyModelResponseImplCopyWith<$Res> {
  __$$AlumniGetManyModelResponseImplCopyWithImpl(
      _$AlumniGetManyModelResponseImpl _value,
      $Res Function(_$AlumniGetManyModelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AlumniGetManyModelResponseImpl(
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
class _$AlumniGetManyModelResponseImpl implements _AlumniGetManyModelResponse {
  const _$AlumniGetManyModelResponseImpl(
      {required this.message, required final List<AlumniModel> data})
      : _data = data;

  factory _$AlumniGetManyModelResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AlumniGetManyModelResponseImplFromJson(json);

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
    return 'AlumniGetManyModelResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlumniGetManyModelResponseImpl &&
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
  _$$AlumniGetManyModelResponseImplCopyWith<_$AlumniGetManyModelResponseImpl>
      get copyWith => __$$AlumniGetManyModelResponseImplCopyWithImpl<
          _$AlumniGetManyModelResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlumniGetManyModelResponseImplToJson(
      this,
    );
  }
}

abstract class _AlumniGetManyModelResponse
    implements AlumniGetManyModelResponse {
  const factory _AlumniGetManyModelResponse(
          {required final String message,
          required final List<AlumniModel> data}) =
      _$AlumniGetManyModelResponseImpl;

  factory _AlumniGetManyModelResponse.fromJson(Map<String, dynamic> json) =
      _$AlumniGetManyModelResponseImpl.fromJson;

  @override
  String get message;
  @override
  List<AlumniModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$AlumniGetManyModelResponseImplCopyWith<_$AlumniGetManyModelResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AlumniGetManyModelBody _$AlumniGetManyModelBodyFromJson(
    Map<String, dynamic> json) {
  return _AlumniGetManyModelBody.fromJson(json);
}

/// @nodoc
mixin _$AlumniGetManyModelBody {
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_lahir')
  String get tglLahir => throw _privateConstructorUsedError;
  String? get nim => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlumniGetManyModelBodyCopyWith<AlumniGetManyModelBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniGetManyModelBodyCopyWith<$Res> {
  factory $AlumniGetManyModelBodyCopyWith(AlumniGetManyModelBody value,
          $Res Function(AlumniGetManyModelBody) then) =
      _$AlumniGetManyModelBodyCopyWithImpl<$Res, AlumniGetManyModelBody>;
  @useResult
  $Res call(
      {String nama, @JsonKey(name: 'tgl_lahir') String tglLahir, String? nim});
}

/// @nodoc
class _$AlumniGetManyModelBodyCopyWithImpl<$Res,
        $Val extends AlumniGetManyModelBody>
    implements $AlumniGetManyModelBodyCopyWith<$Res> {
  _$AlumniGetManyModelBodyCopyWithImpl(this._value, this._then);

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
abstract class _$$AlumniGetManyModelBodyImplCopyWith<$Res>
    implements $AlumniGetManyModelBodyCopyWith<$Res> {
  factory _$$AlumniGetManyModelBodyImplCopyWith(
          _$AlumniGetManyModelBodyImpl value,
          $Res Function(_$AlumniGetManyModelBodyImpl) then) =
      __$$AlumniGetManyModelBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nama, @JsonKey(name: 'tgl_lahir') String tglLahir, String? nim});
}

/// @nodoc
class __$$AlumniGetManyModelBodyImplCopyWithImpl<$Res>
    extends _$AlumniGetManyModelBodyCopyWithImpl<$Res,
        _$AlumniGetManyModelBodyImpl>
    implements _$$AlumniGetManyModelBodyImplCopyWith<$Res> {
  __$$AlumniGetManyModelBodyImplCopyWithImpl(
      _$AlumniGetManyModelBodyImpl _value,
      $Res Function(_$AlumniGetManyModelBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = null,
    Object? tglLahir = null,
    Object? nim = freezed,
  }) {
    return _then(_$AlumniGetManyModelBodyImpl(
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
class _$AlumniGetManyModelBodyImpl implements _AlumniGetManyModelBody {
  const _$AlumniGetManyModelBodyImpl(
      {required this.nama,
      @JsonKey(name: 'tgl_lahir') required this.tglLahir,
      this.nim});

  factory _$AlumniGetManyModelBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlumniGetManyModelBodyImplFromJson(json);

  @override
  final String nama;
  @override
  @JsonKey(name: 'tgl_lahir')
  final String tglLahir;
  @override
  final String? nim;

  @override
  String toString() {
    return 'AlumniGetManyModelBody(nama: $nama, tglLahir: $tglLahir, nim: $nim)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlumniGetManyModelBodyImpl &&
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
  _$$AlumniGetManyModelBodyImplCopyWith<_$AlumniGetManyModelBodyImpl>
      get copyWith => __$$AlumniGetManyModelBodyImplCopyWithImpl<
          _$AlumniGetManyModelBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlumniGetManyModelBodyImplToJson(
      this,
    );
  }
}

abstract class _AlumniGetManyModelBody implements AlumniGetManyModelBody {
  const factory _AlumniGetManyModelBody(
      {required final String nama,
      @JsonKey(name: 'tgl_lahir') required final String tglLahir,
      final String? nim}) = _$AlumniGetManyModelBodyImpl;

  factory _AlumniGetManyModelBody.fromJson(Map<String, dynamic> json) =
      _$AlumniGetManyModelBodyImpl.fromJson;

  @override
  String get nama;
  @override
  @JsonKey(name: 'tgl_lahir')
  String get tglLahir;
  @override
  String? get nim;
  @override
  @JsonKey(ignore: true)
  _$$AlumniGetManyModelBodyImplCopyWith<_$AlumniGetManyModelBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
