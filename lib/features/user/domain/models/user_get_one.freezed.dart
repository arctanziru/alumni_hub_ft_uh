// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_get_one.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserGetOneResponse _$UserGetOneResponseFromJson(Map<String, dynamic> json) {
  return _UserGetOneResponse.fromJson(json);
}

/// @nodoc
mixin _$UserGetOneResponse {
  String get message => throw _privateConstructorUsedError;
  UserGetOneData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGetOneResponseCopyWith<UserGetOneResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGetOneResponseCopyWith<$Res> {
  factory $UserGetOneResponseCopyWith(
          UserGetOneResponse value, $Res Function(UserGetOneResponse) then) =
      _$UserGetOneResponseCopyWithImpl<$Res, UserGetOneResponse>;
  @useResult
  $Res call({String message, UserGetOneData data});

  $UserGetOneDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UserGetOneResponseCopyWithImpl<$Res, $Val extends UserGetOneResponse>
    implements $UserGetOneResponseCopyWith<$Res> {
  _$UserGetOneResponseCopyWithImpl(this._value, this._then);

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
              as UserGetOneData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserGetOneDataCopyWith<$Res> get data {
    return $UserGetOneDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserGetOneResponseImplCopyWith<$Res>
    implements $UserGetOneResponseCopyWith<$Res> {
  factory _$$UserGetOneResponseImplCopyWith(_$UserGetOneResponseImpl value,
          $Res Function(_$UserGetOneResponseImpl) then) =
      __$$UserGetOneResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, UserGetOneData data});

  @override
  $UserGetOneDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserGetOneResponseImplCopyWithImpl<$Res>
    extends _$UserGetOneResponseCopyWithImpl<$Res, _$UserGetOneResponseImpl>
    implements _$$UserGetOneResponseImplCopyWith<$Res> {
  __$$UserGetOneResponseImplCopyWithImpl(_$UserGetOneResponseImpl _value,
      $Res Function(_$UserGetOneResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$UserGetOneResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserGetOneData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserGetOneResponseImpl implements _UserGetOneResponse {
  const _$UserGetOneResponseImpl({required this.message, required this.data});

  factory _$UserGetOneResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserGetOneResponseImplFromJson(json);

  @override
  final String message;
  @override
  final UserGetOneData data;

  @override
  String toString() {
    return 'UserGetOneResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGetOneResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGetOneResponseImplCopyWith<_$UserGetOneResponseImpl> get copyWith =>
      __$$UserGetOneResponseImplCopyWithImpl<_$UserGetOneResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserGetOneResponseImplToJson(
      this,
    );
  }
}

abstract class _UserGetOneResponse implements UserGetOneResponse {
  const factory _UserGetOneResponse(
      {required final String message,
      required final UserGetOneData data}) = _$UserGetOneResponseImpl;

  factory _UserGetOneResponse.fromJson(Map<String, dynamic> json) =
      _$UserGetOneResponseImpl.fromJson;

  @override
  String get message;
  @override
  UserGetOneData get data;
  @override
  @JsonKey(ignore: true)
  _$$UserGetOneResponseImplCopyWith<_$UserGetOneResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserGetOneData _$UserGetOneDataFromJson(Map<String, dynamic> json) {
  return _UserGetOneData.fromJson(json);
}

/// @nodoc
mixin _$UserGetOneData {
  @JsonKey(name: 'id_user')
  int get idUser => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_active')
  String? get lastActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  AlumniModel? get alumni => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGetOneDataCopyWith<UserGetOneData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGetOneDataCopyWith<$Res> {
  factory $UserGetOneDataCopyWith(
          UserGetOneData value, $Res Function(UserGetOneData) then) =
      _$UserGetOneDataCopyWithImpl<$Res, UserGetOneData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_user') int idUser,
      String email,
      String? avatar,
      @JsonKey(name: 'last_active') String? lastActive,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      AlumniModel? alumni});

  $AlumniModelCopyWith<$Res>? get alumni;
}

/// @nodoc
class _$UserGetOneDataCopyWithImpl<$Res, $Val extends UserGetOneData>
    implements $UserGetOneDataCopyWith<$Res> {
  _$UserGetOneDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = null,
    Object? email = null,
    Object? avatar = freezed,
    Object? lastActive = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? alumni = freezed,
  }) {
    return _then(_value.copyWith(
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActive: freezed == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      alumni: freezed == alumni
          ? _value.alumni
          : alumni // ignore: cast_nullable_to_non_nullable
              as AlumniModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlumniModelCopyWith<$Res>? get alumni {
    if (_value.alumni == null) {
      return null;
    }

    return $AlumniModelCopyWith<$Res>(_value.alumni!, (value) {
      return _then(_value.copyWith(alumni: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserGetOneDataImplCopyWith<$Res>
    implements $UserGetOneDataCopyWith<$Res> {
  factory _$$UserGetOneDataImplCopyWith(_$UserGetOneDataImpl value,
          $Res Function(_$UserGetOneDataImpl) then) =
      __$$UserGetOneDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_user') int idUser,
      String email,
      String? avatar,
      @JsonKey(name: 'last_active') String? lastActive,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      AlumniModel? alumni});

  @override
  $AlumniModelCopyWith<$Res>? get alumni;
}

/// @nodoc
class __$$UserGetOneDataImplCopyWithImpl<$Res>
    extends _$UserGetOneDataCopyWithImpl<$Res, _$UserGetOneDataImpl>
    implements _$$UserGetOneDataImplCopyWith<$Res> {
  __$$UserGetOneDataImplCopyWithImpl(
      _$UserGetOneDataImpl _value, $Res Function(_$UserGetOneDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUser = null,
    Object? email = null,
    Object? avatar = freezed,
    Object? lastActive = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? alumni = freezed,
  }) {
    return _then(_$UserGetOneDataImpl(
      idUser: null == idUser
          ? _value.idUser
          : idUser // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActive: freezed == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      alumni: freezed == alumni
          ? _value.alumni
          : alumni // ignore: cast_nullable_to_non_nullable
              as AlumniModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserGetOneDataImpl implements _UserGetOneData {
  const _$UserGetOneDataImpl(
      {@JsonKey(name: 'id_user') required this.idUser,
      required this.email,
      this.avatar,
      @JsonKey(name: 'last_active') this.lastActive,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      this.alumni});

  factory _$UserGetOneDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserGetOneDataImplFromJson(json);

  @override
  @JsonKey(name: 'id_user')
  final int idUser;
  @override
  final String email;
  @override
  final String? avatar;
  @override
  @JsonKey(name: 'last_active')
  final String? lastActive;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final AlumniModel? alumni;

  @override
  String toString() {
    return 'UserGetOneData(idUser: $idUser, email: $email, avatar: $avatar, lastActive: $lastActive, createdAt: $createdAt, updatedAt: $updatedAt, alumni: $alumni)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserGetOneDataImpl &&
            (identical(other.idUser, idUser) || other.idUser == idUser) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.lastActive, lastActive) ||
                other.lastActive == lastActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.alumni, alumni) || other.alumni == alumni));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idUser, email, avatar,
      lastActive, createdAt, updatedAt, alumni);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserGetOneDataImplCopyWith<_$UserGetOneDataImpl> get copyWith =>
      __$$UserGetOneDataImplCopyWithImpl<_$UserGetOneDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserGetOneDataImplToJson(
      this,
    );
  }
}

abstract class _UserGetOneData implements UserGetOneData {
  const factory _UserGetOneData(
      {@JsonKey(name: 'id_user') required final int idUser,
      required final String email,
      final String? avatar,
      @JsonKey(name: 'last_active') final String? lastActive,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      final AlumniModel? alumni}) = _$UserGetOneDataImpl;

  factory _UserGetOneData.fromJson(Map<String, dynamic> json) =
      _$UserGetOneDataImpl.fromJson;

  @override
  @JsonKey(name: 'id_user')
  int get idUser;
  @override
  String get email;
  @override
  String? get avatar;
  @override
  @JsonKey(name: 'last_active')
  String? get lastActive;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  AlumniModel? get alumni;
  @override
  @JsonKey(ignore: true)
  _$$UserGetOneDataImplCopyWith<_$UserGetOneDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
