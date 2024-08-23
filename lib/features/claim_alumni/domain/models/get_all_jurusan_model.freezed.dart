// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_jurusan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllJurusanResponse _$GetAllJurusanResponseFromJson(
    Map<String, dynamic> json) {
  return _GetAllJurusanResponse.fromJson(json);
}

/// @nodoc
mixin _$GetAllJurusanResponse {
  String get message => throw _privateConstructorUsedError;
  List<Jurusan> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllJurusanResponseCopyWith<GetAllJurusanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllJurusanResponseCopyWith<$Res> {
  factory $GetAllJurusanResponseCopyWith(GetAllJurusanResponse value,
          $Res Function(GetAllJurusanResponse) then) =
      _$GetAllJurusanResponseCopyWithImpl<$Res, GetAllJurusanResponse>;
  @useResult
  $Res call({String message, List<Jurusan> data});
}

/// @nodoc
class _$GetAllJurusanResponseCopyWithImpl<$Res,
        $Val extends GetAllJurusanResponse>
    implements $GetAllJurusanResponseCopyWith<$Res> {
  _$GetAllJurusanResponseCopyWithImpl(this._value, this._then);

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
              as List<Jurusan>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllJurusanResponseImplCopyWith<$Res>
    implements $GetAllJurusanResponseCopyWith<$Res> {
  factory _$$GetAllJurusanResponseImplCopyWith(
          _$GetAllJurusanResponseImpl value,
          $Res Function(_$GetAllJurusanResponseImpl) then) =
      __$$GetAllJurusanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<Jurusan> data});
}

/// @nodoc
class __$$GetAllJurusanResponseImplCopyWithImpl<$Res>
    extends _$GetAllJurusanResponseCopyWithImpl<$Res,
        _$GetAllJurusanResponseImpl>
    implements _$$GetAllJurusanResponseImplCopyWith<$Res> {
  __$$GetAllJurusanResponseImplCopyWithImpl(_$GetAllJurusanResponseImpl _value,
      $Res Function(_$GetAllJurusanResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$GetAllJurusanResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Jurusan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllJurusanResponseImpl implements _GetAllJurusanResponse {
  const _$GetAllJurusanResponseImpl(
      {required this.message, required final List<Jurusan> data})
      : _data = data;

  factory _$GetAllJurusanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllJurusanResponseImplFromJson(json);

  @override
  final String message;
  final List<Jurusan> _data;
  @override
  List<Jurusan> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetAllJurusanResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllJurusanResponseImpl &&
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
  _$$GetAllJurusanResponseImplCopyWith<_$GetAllJurusanResponseImpl>
      get copyWith => __$$GetAllJurusanResponseImplCopyWithImpl<
          _$GetAllJurusanResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllJurusanResponseImplToJson(
      this,
    );
  }
}

abstract class _GetAllJurusanResponse implements GetAllJurusanResponse {
  const factory _GetAllJurusanResponse(
      {required final String message,
      required final List<Jurusan> data}) = _$GetAllJurusanResponseImpl;

  factory _GetAllJurusanResponse.fromJson(Map<String, dynamic> json) =
      _$GetAllJurusanResponseImpl.fromJson;

  @override
  String get message;
  @override
  List<Jurusan> get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAllJurusanResponseImplCopyWith<_$GetAllJurusanResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Jurusan _$JurusanFromJson(Map<String, dynamic> json) {
  return _Jurusan.fromJson(json);
}

/// @nodoc
mixin _$Jurusan {
  @JsonKey(name: 'id_jurusan')
  int get idJurusan => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_jurusan')
  String get namaJurusan => throw _privateConstructorUsedError;
  @JsonKey(name: 'kode_jurusan')
  String get kodeJurusan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JurusanCopyWith<Jurusan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JurusanCopyWith<$Res> {
  factory $JurusanCopyWith(Jurusan value, $Res Function(Jurusan) then) =
      _$JurusanCopyWithImpl<$Res, Jurusan>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_jurusan') int idJurusan,
      @JsonKey(name: 'nama_jurusan') String namaJurusan,
      @JsonKey(name: 'kode_jurusan') String kodeJurusan});
}

/// @nodoc
class _$JurusanCopyWithImpl<$Res, $Val extends Jurusan>
    implements $JurusanCopyWith<$Res> {
  _$JurusanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idJurusan = null,
    Object? namaJurusan = null,
    Object? kodeJurusan = null,
  }) {
    return _then(_value.copyWith(
      idJurusan: null == idJurusan
          ? _value.idJurusan
          : idJurusan // ignore: cast_nullable_to_non_nullable
              as int,
      namaJurusan: null == namaJurusan
          ? _value.namaJurusan
          : namaJurusan // ignore: cast_nullable_to_non_nullable
              as String,
      kodeJurusan: null == kodeJurusan
          ? _value.kodeJurusan
          : kodeJurusan // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JurusanImplCopyWith<$Res> implements $JurusanCopyWith<$Res> {
  factory _$$JurusanImplCopyWith(
          _$JurusanImpl value, $Res Function(_$JurusanImpl) then) =
      __$$JurusanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_jurusan') int idJurusan,
      @JsonKey(name: 'nama_jurusan') String namaJurusan,
      @JsonKey(name: 'kode_jurusan') String kodeJurusan});
}

/// @nodoc
class __$$JurusanImplCopyWithImpl<$Res>
    extends _$JurusanCopyWithImpl<$Res, _$JurusanImpl>
    implements _$$JurusanImplCopyWith<$Res> {
  __$$JurusanImplCopyWithImpl(
      _$JurusanImpl _value, $Res Function(_$JurusanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idJurusan = null,
    Object? namaJurusan = null,
    Object? kodeJurusan = null,
  }) {
    return _then(_$JurusanImpl(
      idJurusan: null == idJurusan
          ? _value.idJurusan
          : idJurusan // ignore: cast_nullable_to_non_nullable
              as int,
      namaJurusan: null == namaJurusan
          ? _value.namaJurusan
          : namaJurusan // ignore: cast_nullable_to_non_nullable
              as String,
      kodeJurusan: null == kodeJurusan
          ? _value.kodeJurusan
          : kodeJurusan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JurusanImpl implements _Jurusan {
  const _$JurusanImpl(
      {@JsonKey(name: 'id_jurusan') required this.idJurusan,
      @JsonKey(name: 'nama_jurusan') required this.namaJurusan,
      @JsonKey(name: 'kode_jurusan') required this.kodeJurusan});

  factory _$JurusanImpl.fromJson(Map<String, dynamic> json) =>
      _$$JurusanImplFromJson(json);

  @override
  @JsonKey(name: 'id_jurusan')
  final int idJurusan;
  @override
  @JsonKey(name: 'nama_jurusan')
  final String namaJurusan;
  @override
  @JsonKey(name: 'kode_jurusan')
  final String kodeJurusan;

  @override
  String toString() {
    return 'Jurusan(idJurusan: $idJurusan, namaJurusan: $namaJurusan, kodeJurusan: $kodeJurusan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JurusanImpl &&
            (identical(other.idJurusan, idJurusan) ||
                other.idJurusan == idJurusan) &&
            (identical(other.namaJurusan, namaJurusan) ||
                other.namaJurusan == namaJurusan) &&
            (identical(other.kodeJurusan, kodeJurusan) ||
                other.kodeJurusan == kodeJurusan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idJurusan, namaJurusan, kodeJurusan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JurusanImplCopyWith<_$JurusanImpl> get copyWith =>
      __$$JurusanImplCopyWithImpl<_$JurusanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JurusanImplToJson(
      this,
    );
  }
}

abstract class _Jurusan implements Jurusan {
  const factory _Jurusan(
          {@JsonKey(name: 'id_jurusan') required final int idJurusan,
          @JsonKey(name: 'nama_jurusan') required final String namaJurusan,
          @JsonKey(name: 'kode_jurusan') required final String kodeJurusan}) =
      _$JurusanImpl;

  factory _Jurusan.fromJson(Map<String, dynamic> json) = _$JurusanImpl.fromJson;

  @override
  @JsonKey(name: 'id_jurusan')
  int get idJurusan;
  @override
  @JsonKey(name: 'nama_jurusan')
  String get namaJurusan;
  @override
  @JsonKey(name: 'kode_jurusan')
  String get kodeJurusan;
  @override
  @JsonKey(ignore: true)
  _$$JurusanImplCopyWith<_$JurusanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
