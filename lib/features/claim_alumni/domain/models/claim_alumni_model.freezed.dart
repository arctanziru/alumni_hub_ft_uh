// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim_alumni_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClaimAlumniResponse _$ClaimAlumniResponseFromJson(Map<String, dynamic> json) {
  return _ClaimAlumniResponse.fromJson(json);
}

/// @nodoc
mixin _$ClaimAlumniResponse {
  String get message => throw _privateConstructorUsedError;
  AlumniModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimAlumniResponseCopyWith<ClaimAlumniResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimAlumniResponseCopyWith<$Res> {
  factory $ClaimAlumniResponseCopyWith(
          ClaimAlumniResponse value, $Res Function(ClaimAlumniResponse) then) =
      _$ClaimAlumniResponseCopyWithImpl<$Res, ClaimAlumniResponse>;
  @useResult
  $Res call({String message, AlumniModel data});

  $AlumniModelCopyWith<$Res> get data;
}

/// @nodoc
class _$ClaimAlumniResponseCopyWithImpl<$Res, $Val extends ClaimAlumniResponse>
    implements $ClaimAlumniResponseCopyWith<$Res> {
  _$ClaimAlumniResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$ClaimAlumniResponseImplCopyWith<$Res>
    implements $ClaimAlumniResponseCopyWith<$Res> {
  factory _$$ClaimAlumniResponseImplCopyWith(_$ClaimAlumniResponseImpl value,
          $Res Function(_$ClaimAlumniResponseImpl) then) =
      __$$ClaimAlumniResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, AlumniModel data});

  @override
  $AlumniModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$ClaimAlumniResponseImplCopyWithImpl<$Res>
    extends _$ClaimAlumniResponseCopyWithImpl<$Res, _$ClaimAlumniResponseImpl>
    implements _$$ClaimAlumniResponseImplCopyWith<$Res> {
  __$$ClaimAlumniResponseImplCopyWithImpl(_$ClaimAlumniResponseImpl _value,
      $Res Function(_$ClaimAlumniResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$ClaimAlumniResponseImpl(
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
class _$ClaimAlumniResponseImpl implements _ClaimAlumniResponse {
  const _$ClaimAlumniResponseImpl({required this.message, required this.data});

  factory _$ClaimAlumniResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimAlumniResponseImplFromJson(json);

  @override
  final String message;
  @override
  final AlumniModel data;

  @override
  String toString() {
    return 'ClaimAlumniResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimAlumniResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimAlumniResponseImplCopyWith<_$ClaimAlumniResponseImpl> get copyWith =>
      __$$ClaimAlumniResponseImplCopyWithImpl<_$ClaimAlumniResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimAlumniResponseImplToJson(
      this,
    );
  }
}

abstract class _ClaimAlumniResponse implements ClaimAlumniResponse {
  const factory _ClaimAlumniResponse(
      {required final String message,
      required final AlumniModel data}) = _$ClaimAlumniResponseImpl;

  factory _ClaimAlumniResponse.fromJson(Map<String, dynamic> json) =
      _$ClaimAlumniResponseImpl.fromJson;

  @override
  String get message;
  @override
  AlumniModel get data;
  @override
  @JsonKey(ignore: true)
  _$$ClaimAlumniResponseImplCopyWith<_$ClaimAlumniResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClaimAlumniResponseData _$ClaimAlumniResponseDataFromJson(
    Map<String, dynamic> json) {
  return _ClaimAlumniResponseData.fromJson(json);
}

/// @nodoc
mixin _$ClaimAlumniResponseData {
  AlumniModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimAlumniResponseDataCopyWith<ClaimAlumniResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimAlumniResponseDataCopyWith<$Res> {
  factory $ClaimAlumniResponseDataCopyWith(ClaimAlumniResponseData value,
          $Res Function(ClaimAlumniResponseData) then) =
      _$ClaimAlumniResponseDataCopyWithImpl<$Res, ClaimAlumniResponseData>;
  @useResult
  $Res call({AlumniModel data});

  $AlumniModelCopyWith<$Res> get data;
}

/// @nodoc
class _$ClaimAlumniResponseDataCopyWithImpl<$Res,
        $Val extends ClaimAlumniResponseData>
    implements $ClaimAlumniResponseDataCopyWith<$Res> {
  _$ClaimAlumniResponseDataCopyWithImpl(this._value, this._then);

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
abstract class _$$ClaimAlumniResponseDataImplCopyWith<$Res>
    implements $ClaimAlumniResponseDataCopyWith<$Res> {
  factory _$$ClaimAlumniResponseDataImplCopyWith(
          _$ClaimAlumniResponseDataImpl value,
          $Res Function(_$ClaimAlumniResponseDataImpl) then) =
      __$$ClaimAlumniResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AlumniModel data});

  @override
  $AlumniModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$ClaimAlumniResponseDataImplCopyWithImpl<$Res>
    extends _$ClaimAlumniResponseDataCopyWithImpl<$Res,
        _$ClaimAlumniResponseDataImpl>
    implements _$$ClaimAlumniResponseDataImplCopyWith<$Res> {
  __$$ClaimAlumniResponseDataImplCopyWithImpl(
      _$ClaimAlumniResponseDataImpl _value,
      $Res Function(_$ClaimAlumniResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ClaimAlumniResponseDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AlumniModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimAlumniResponseDataImpl implements _ClaimAlumniResponseData {
  const _$ClaimAlumniResponseDataImpl({required this.data});

  factory _$ClaimAlumniResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimAlumniResponseDataImplFromJson(json);

  @override
  final AlumniModel data;

  @override
  String toString() {
    return 'ClaimAlumniResponseData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimAlumniResponseDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimAlumniResponseDataImplCopyWith<_$ClaimAlumniResponseDataImpl>
      get copyWith => __$$ClaimAlumniResponseDataImplCopyWithImpl<
          _$ClaimAlumniResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimAlumniResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ClaimAlumniResponseData implements ClaimAlumniResponseData {
  const factory _ClaimAlumniResponseData({required final AlumniModel data}) =
      _$ClaimAlumniResponseDataImpl;

  factory _ClaimAlumniResponseData.fromJson(Map<String, dynamic> json) =
      _$ClaimAlumniResponseDataImpl.fromJson;

  @override
  AlumniModel get data;
  @override
  @JsonKey(ignore: true)
  _$$ClaimAlumniResponseDataImplCopyWith<_$ClaimAlumniResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClaimAlumniBody _$ClaimAlumniBodyFromJson(Map<String, dynamic> json) {
  return _ClaimAlumniBody.fromJson(json);
}

/// @nodoc
mixin _$ClaimAlumniBody {
  int get idAlumni => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimAlumniBodyCopyWith<ClaimAlumniBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimAlumniBodyCopyWith<$Res> {
  factory $ClaimAlumniBodyCopyWith(
          ClaimAlumniBody value, $Res Function(ClaimAlumniBody) then) =
      _$ClaimAlumniBodyCopyWithImpl<$Res, ClaimAlumniBody>;
  @useResult
  $Res call({int idAlumni});
}

/// @nodoc
class _$ClaimAlumniBodyCopyWithImpl<$Res, $Val extends ClaimAlumniBody>
    implements $ClaimAlumniBodyCopyWith<$Res> {
  _$ClaimAlumniBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idAlumni = null,
  }) {
    return _then(_value.copyWith(
      idAlumni: null == idAlumni
          ? _value.idAlumni
          : idAlumni // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClaimAlumniBodyImplCopyWith<$Res>
    implements $ClaimAlumniBodyCopyWith<$Res> {
  factory _$$ClaimAlumniBodyImplCopyWith(_$ClaimAlumniBodyImpl value,
          $Res Function(_$ClaimAlumniBodyImpl) then) =
      __$$ClaimAlumniBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int idAlumni});
}

/// @nodoc
class __$$ClaimAlumniBodyImplCopyWithImpl<$Res>
    extends _$ClaimAlumniBodyCopyWithImpl<$Res, _$ClaimAlumniBodyImpl>
    implements _$$ClaimAlumniBodyImplCopyWith<$Res> {
  __$$ClaimAlumniBodyImplCopyWithImpl(
      _$ClaimAlumniBodyImpl _value, $Res Function(_$ClaimAlumniBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idAlumni = null,
  }) {
    return _then(_$ClaimAlumniBodyImpl(
      idAlumni: null == idAlumni
          ? _value.idAlumni
          : idAlumni // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClaimAlumniBodyImpl implements _ClaimAlumniBody {
  const _$ClaimAlumniBodyImpl({required this.idAlumni});

  factory _$ClaimAlumniBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClaimAlumniBodyImplFromJson(json);

  @override
  final int idAlumni;

  @override
  String toString() {
    return 'ClaimAlumniBody(idAlumni: $idAlumni)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClaimAlumniBodyImpl &&
            (identical(other.idAlumni, idAlumni) ||
                other.idAlumni == idAlumni));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idAlumni);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClaimAlumniBodyImplCopyWith<_$ClaimAlumniBodyImpl> get copyWith =>
      __$$ClaimAlumniBodyImplCopyWithImpl<_$ClaimAlumniBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClaimAlumniBodyImplToJson(
      this,
    );
  }
}

abstract class _ClaimAlumniBody implements ClaimAlumniBody {
  const factory _ClaimAlumniBody({required final int idAlumni}) =
      _$ClaimAlumniBodyImpl;

  factory _ClaimAlumniBody.fromJson(Map<String, dynamic> json) =
      _$ClaimAlumniBodyImpl.fromJson;

  @override
  int get idAlumni;
  @override
  @JsonKey(ignore: true)
  _$$ClaimAlumniBodyImplCopyWith<_$ClaimAlumniBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
