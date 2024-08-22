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
  List<String> get data => throw _privateConstructorUsedError;

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
  $Res call({String message, List<String> data});
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
              as List<String>,
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
  $Res call({String message, List<String> data});
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
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllJurusanResponseImpl implements _GetAllJurusanResponse {
  const _$GetAllJurusanResponseImpl(
      {required this.message, required final List<String> data})
      : _data = data;

  factory _$GetAllJurusanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllJurusanResponseImplFromJson(json);

  @override
  final String message;
  final List<String> _data;
  @override
  List<String> get data {
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
      required final List<String> data}) = _$GetAllJurusanResponseImpl;

  factory _GetAllJurusanResponse.fromJson(Map<String, dynamic> json) =
      _$GetAllJurusanResponseImpl.fromJson;

  @override
  String get message;
  @override
  List<String> get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAllJurusanResponseImplCopyWith<_$GetAllJurusanResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
