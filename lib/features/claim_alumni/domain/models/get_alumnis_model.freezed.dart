// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_alumnis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAlumnisResponse _$GetAlumnisResponseFromJson(Map<String, dynamic> json) {
  return _GetAlumnisResponse.fromJson(json);
}

/// @nodoc
mixin _$GetAlumnisResponse {
  String get message => throw _privateConstructorUsedError;
  List<AlumniModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAlumnisResponseCopyWith<GetAlumnisResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAlumnisResponseCopyWith<$Res> {
  factory $GetAlumnisResponseCopyWith(
          GetAlumnisResponse value, $Res Function(GetAlumnisResponse) then) =
      _$GetAlumnisResponseCopyWithImpl<$Res, GetAlumnisResponse>;
  @useResult
  $Res call({String message, List<AlumniModel> data});
}

/// @nodoc
class _$GetAlumnisResponseCopyWithImpl<$Res, $Val extends GetAlumnisResponse>
    implements $GetAlumnisResponseCopyWith<$Res> {
  _$GetAlumnisResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$GetAlumnisResponseImplCopyWith<$Res>
    implements $GetAlumnisResponseCopyWith<$Res> {
  factory _$$GetAlumnisResponseImplCopyWith(_$GetAlumnisResponseImpl value,
          $Res Function(_$GetAlumnisResponseImpl) then) =
      __$$GetAlumnisResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<AlumniModel> data});
}

/// @nodoc
class __$$GetAlumnisResponseImplCopyWithImpl<$Res>
    extends _$GetAlumnisResponseCopyWithImpl<$Res, _$GetAlumnisResponseImpl>
    implements _$$GetAlumnisResponseImplCopyWith<$Res> {
  __$$GetAlumnisResponseImplCopyWithImpl(_$GetAlumnisResponseImpl _value,
      $Res Function(_$GetAlumnisResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$GetAlumnisResponseImpl(
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
class _$GetAlumnisResponseImpl implements _GetAlumnisResponse {
  const _$GetAlumnisResponseImpl(
      {required this.message, required final List<AlumniModel> data})
      : _data = data;

  factory _$GetAlumnisResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAlumnisResponseImplFromJson(json);

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
    return 'GetAlumnisResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAlumnisResponseImpl &&
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
  _$$GetAlumnisResponseImplCopyWith<_$GetAlumnisResponseImpl> get copyWith =>
      __$$GetAlumnisResponseImplCopyWithImpl<_$GetAlumnisResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAlumnisResponseImplToJson(
      this,
    );
  }
}

abstract class _GetAlumnisResponse implements GetAlumnisResponse {
  const factory _GetAlumnisResponse(
      {required final String message,
      required final List<AlumniModel> data}) = _$GetAlumnisResponseImpl;

  factory _GetAlumnisResponse.fromJson(Map<String, dynamic> json) =
      _$GetAlumnisResponseImpl.fromJson;

  @override
  String get message;
  @override
  List<AlumniModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAlumnisResponseImplCopyWith<_$GetAlumnisResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetAlumnisResponseData _$GetAlumnisResponseDataFromJson(
    Map<String, dynamic> json) {
  return _GetAlumnisResponseData.fromJson(json);
}

/// @nodoc
mixin _$GetAlumnisResponseData {
  List<AlumniModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAlumnisResponseDataCopyWith<GetAlumnisResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAlumnisResponseDataCopyWith<$Res> {
  factory $GetAlumnisResponseDataCopyWith(GetAlumnisResponseData value,
          $Res Function(GetAlumnisResponseData) then) =
      _$GetAlumnisResponseDataCopyWithImpl<$Res, GetAlumnisResponseData>;
  @useResult
  $Res call({List<AlumniModel> data});
}

/// @nodoc
class _$GetAlumnisResponseDataCopyWithImpl<$Res,
        $Val extends GetAlumnisResponseData>
    implements $GetAlumnisResponseDataCopyWith<$Res> {
  _$GetAlumnisResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AlumniModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAlumnisResponseDataImplCopyWith<$Res>
    implements $GetAlumnisResponseDataCopyWith<$Res> {
  factory _$$GetAlumnisResponseDataImplCopyWith(
          _$GetAlumnisResponseDataImpl value,
          $Res Function(_$GetAlumnisResponseDataImpl) then) =
      __$$GetAlumnisResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AlumniModel> data});
}

/// @nodoc
class __$$GetAlumnisResponseDataImplCopyWithImpl<$Res>
    extends _$GetAlumnisResponseDataCopyWithImpl<$Res,
        _$GetAlumnisResponseDataImpl>
    implements _$$GetAlumnisResponseDataImplCopyWith<$Res> {
  __$$GetAlumnisResponseDataImplCopyWithImpl(
      _$GetAlumnisResponseDataImpl _value,
      $Res Function(_$GetAlumnisResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetAlumnisResponseDataImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AlumniModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAlumnisResponseDataImpl implements _GetAlumnisResponseData {
  const _$GetAlumnisResponseDataImpl({required final List<AlumniModel> data})
      : _data = data;

  factory _$GetAlumnisResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAlumnisResponseDataImplFromJson(json);

  final List<AlumniModel> _data;
  @override
  List<AlumniModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetAlumnisResponseData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAlumnisResponseDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAlumnisResponseDataImplCopyWith<_$GetAlumnisResponseDataImpl>
      get copyWith => __$$GetAlumnisResponseDataImplCopyWithImpl<
          _$GetAlumnisResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAlumnisResponseDataImplToJson(
      this,
    );
  }
}

abstract class _GetAlumnisResponseData implements GetAlumnisResponseData {
  const factory _GetAlumnisResponseData(
      {required final List<AlumniModel> data}) = _$GetAlumnisResponseDataImpl;

  factory _GetAlumnisResponseData.fromJson(Map<String, dynamic> json) =
      _$GetAlumnisResponseDataImpl.fromJson;

  @override
  List<AlumniModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAlumnisResponseDataImplCopyWith<_$GetAlumnisResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetAlumnisBody _$GetAlumnisBodyFromJson(Map<String, dynamic> json) {
  return _GetAlumnisBody.fromJson(json);
}

/// @nodoc
mixin _$GetAlumnisBody {
  @JsonKey(name: 'nama')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_lahir')
  String get tglLahir => throw _privateConstructorUsedError;
  String? get nim => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAlumnisBodyCopyWith<GetAlumnisBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAlumnisBodyCopyWith<$Res> {
  factory $GetAlumnisBodyCopyWith(
          GetAlumnisBody value, $Res Function(GetAlumnisBody) then) =
      _$GetAlumnisBodyCopyWithImpl<$Res, GetAlumnisBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nama') String name,
      @JsonKey(name: 'tgl_lahir') String tglLahir,
      String? nim});
}

/// @nodoc
class _$GetAlumnisBodyCopyWithImpl<$Res, $Val extends GetAlumnisBody>
    implements $GetAlumnisBodyCopyWith<$Res> {
  _$GetAlumnisBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? tglLahir = null,
    Object? nim = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
abstract class _$$GetAlumnisBodyImplCopyWith<$Res>
    implements $GetAlumnisBodyCopyWith<$Res> {
  factory _$$GetAlumnisBodyImplCopyWith(_$GetAlumnisBodyImpl value,
          $Res Function(_$GetAlumnisBodyImpl) then) =
      __$$GetAlumnisBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nama') String name,
      @JsonKey(name: 'tgl_lahir') String tglLahir,
      String? nim});
}

/// @nodoc
class __$$GetAlumnisBodyImplCopyWithImpl<$Res>
    extends _$GetAlumnisBodyCopyWithImpl<$Res, _$GetAlumnisBodyImpl>
    implements _$$GetAlumnisBodyImplCopyWith<$Res> {
  __$$GetAlumnisBodyImplCopyWithImpl(
      _$GetAlumnisBodyImpl _value, $Res Function(_$GetAlumnisBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? tglLahir = null,
    Object? nim = freezed,
  }) {
    return _then(_$GetAlumnisBodyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$GetAlumnisBodyImpl implements _GetAlumnisBody {
  const _$GetAlumnisBodyImpl(
      {@JsonKey(name: 'nama') required this.name,
      @JsonKey(name: 'tgl_lahir') required this.tglLahir,
      required this.nim});

  factory _$GetAlumnisBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAlumnisBodyImplFromJson(json);

  @override
  @JsonKey(name: 'nama')
  final String name;
  @override
  @JsonKey(name: 'tgl_lahir')
  final String tglLahir;
  @override
  final String? nim;

  @override
  String toString() {
    return 'GetAlumnisBody(name: $name, tglLahir: $tglLahir, nim: $nim)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAlumnisBodyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tglLahir, tglLahir) ||
                other.tglLahir == tglLahir) &&
            (identical(other.nim, nim) || other.nim == nim));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, tglLahir, nim);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAlumnisBodyImplCopyWith<_$GetAlumnisBodyImpl> get copyWith =>
      __$$GetAlumnisBodyImplCopyWithImpl<_$GetAlumnisBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAlumnisBodyImplToJson(
      this,
    );
  }
}

abstract class _GetAlumnisBody implements GetAlumnisBody {
  const factory _GetAlumnisBody(
      {@JsonKey(name: 'nama') required final String name,
      @JsonKey(name: 'tgl_lahir') required final String tglLahir,
      required final String? nim}) = _$GetAlumnisBodyImpl;

  factory _GetAlumnisBody.fromJson(Map<String, dynamic> json) =
      _$GetAlumnisBodyImpl.fromJson;

  @override
  @JsonKey(name: 'nama')
  String get name;
  @override
  @JsonKey(name: 'tgl_lahir')
  String get tglLahir;
  @override
  String? get nim;
  @override
  @JsonKey(ignore: true)
  _$$GetAlumnisBodyImplCopyWith<_$GetAlumnisBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
