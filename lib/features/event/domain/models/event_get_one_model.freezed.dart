// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_get_one_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventGetOneModelResponse _$EventGetOneModelResponseFromJson(
    Map<String, dynamic> json) {
  return _EventGetOneModelResponse.fromJson(json);
}

/// @nodoc
mixin _$EventGetOneModelResponse {
  String get message => throw _privateConstructorUsedError;
  EventModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventGetOneModelResponseCopyWith<EventGetOneModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventGetOneModelResponseCopyWith<$Res> {
  factory $EventGetOneModelResponseCopyWith(EventGetOneModelResponse value,
          $Res Function(EventGetOneModelResponse) then) =
      _$EventGetOneModelResponseCopyWithImpl<$Res, EventGetOneModelResponse>;
  @useResult
  $Res call({String message, EventModel data});

  $EventModelCopyWith<$Res> get data;
}

/// @nodoc
class _$EventGetOneModelResponseCopyWithImpl<$Res,
        $Val extends EventGetOneModelResponse>
    implements $EventGetOneModelResponseCopyWith<$Res> {
  _$EventGetOneModelResponseCopyWithImpl(this._value, this._then);

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
              as EventModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventModelCopyWith<$Res> get data {
    return $EventModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventGetOneModelResponseImplCopyWith<$Res>
    implements $EventGetOneModelResponseCopyWith<$Res> {
  factory _$$EventGetOneModelResponseImplCopyWith(
          _$EventGetOneModelResponseImpl value,
          $Res Function(_$EventGetOneModelResponseImpl) then) =
      __$$EventGetOneModelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, EventModel data});

  @override
  $EventModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$EventGetOneModelResponseImplCopyWithImpl<$Res>
    extends _$EventGetOneModelResponseCopyWithImpl<$Res,
        _$EventGetOneModelResponseImpl>
    implements _$$EventGetOneModelResponseImplCopyWith<$Res> {
  __$$EventGetOneModelResponseImplCopyWithImpl(
      _$EventGetOneModelResponseImpl _value,
      $Res Function(_$EventGetOneModelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$EventGetOneModelResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EventModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventGetOneModelResponseImpl implements _EventGetOneModelResponse {
  const _$EventGetOneModelResponseImpl(
      {required this.message, required this.data});

  factory _$EventGetOneModelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventGetOneModelResponseImplFromJson(json);

  @override
  final String message;
  @override
  final EventModel data;

  @override
  String toString() {
    return 'EventGetOneModelResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventGetOneModelResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventGetOneModelResponseImplCopyWith<_$EventGetOneModelResponseImpl>
      get copyWith => __$$EventGetOneModelResponseImplCopyWithImpl<
          _$EventGetOneModelResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventGetOneModelResponseImplToJson(
      this,
    );
  }
}

abstract class _EventGetOneModelResponse implements EventGetOneModelResponse {
  const factory _EventGetOneModelResponse(
      {required final String message,
      required final EventModel data}) = _$EventGetOneModelResponseImpl;

  factory _EventGetOneModelResponse.fromJson(Map<String, dynamic> json) =
      _$EventGetOneModelResponseImpl.fromJson;

  @override
  String get message;
  @override
  EventModel get data;
  @override
  @JsonKey(ignore: true)
  _$$EventGetOneModelResponseImplCopyWith<_$EventGetOneModelResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
