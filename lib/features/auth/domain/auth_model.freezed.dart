// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) {
  return _SignInResponse.fromJson(json);
}

/// @nodoc
mixin _$SignInResponse {
  String get token => throw _privateConstructorUsedError;
  SignInResponseData get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInResponseCopyWith<SignInResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseCopyWith<$Res> {
  factory $SignInResponseCopyWith(
          SignInResponse value, $Res Function(SignInResponse) then) =
      _$SignInResponseCopyWithImpl<$Res, SignInResponse>;
  @useResult
  $Res call(
      {String token, SignInResponseData data, String message, bool success});

  $SignInResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SignInResponseCopyWithImpl<$Res, $Val extends SignInResponse>
    implements $SignInResponseCopyWith<$Res> {
  _$SignInResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? data = null,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignInResponseData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInResponseDataCopyWith<$Res> get data {
    return $SignInResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInResponseImplCopyWith<$Res>
    implements $SignInResponseCopyWith<$Res> {
  factory _$$SignInResponseImplCopyWith(_$SignInResponseImpl value,
          $Res Function(_$SignInResponseImpl) then) =
      __$$SignInResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token, SignInResponseData data, String message, bool success});

  @override
  $SignInResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SignInResponseImplCopyWithImpl<$Res>
    extends _$SignInResponseCopyWithImpl<$Res, _$SignInResponseImpl>
    implements _$$SignInResponseImplCopyWith<$Res> {
  __$$SignInResponseImplCopyWithImpl(
      _$SignInResponseImpl _value, $Res Function(_$SignInResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? data = null,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_$SignInResponseImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignInResponseData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInResponseImpl implements _SignInResponse {
  const _$SignInResponseImpl(
      {required this.token,
      required this.data,
      required this.message,
      required this.success});

  factory _$SignInResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInResponseImplFromJson(json);

  @override
  final String token;
  @override
  final SignInResponseData data;
  @override
  final String message;
  @override
  final bool success;

  @override
  String toString() {
    return 'SignInResponse(token: $token, data: $data, message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, data, message, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInResponseImplCopyWith<_$SignInResponseImpl> get copyWith =>
      __$$SignInResponseImplCopyWithImpl<_$SignInResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInResponseImplToJson(
      this,
    );
  }
}

abstract class _SignInResponse implements SignInResponse {
  const factory _SignInResponse(
      {required final String token,
      required final SignInResponseData data,
      required final String message,
      required final bool success}) = _$SignInResponseImpl;

  factory _SignInResponse.fromJson(Map<String, dynamic> json) =
      _$SignInResponseImpl.fromJson;

  @override
  String get token;
  @override
  SignInResponseData get data;
  @override
  String get message;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$SignInResponseImplCopyWith<_$SignInResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInResponseData _$SignInResponseDataFromJson(Map<String, dynamic> json) {
  return _SignInResponseData.fromJson(json);
}

/// @nodoc
mixin _$SignInResponseData {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInResponseDataCopyWith<SignInResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseDataCopyWith<$Res> {
  factory $SignInResponseDataCopyWith(
          SignInResponseData value, $Res Function(SignInResponseData) then) =
      _$SignInResponseDataCopyWithImpl<$Res, SignInResponseData>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$SignInResponseDataCopyWithImpl<$Res, $Val extends SignInResponseData>
    implements $SignInResponseDataCopyWith<$Res> {
  _$SignInResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInResponseDataImplCopyWith<$Res>
    implements $SignInResponseDataCopyWith<$Res> {
  factory _$$SignInResponseDataImplCopyWith(_$SignInResponseDataImpl value,
          $Res Function(_$SignInResponseDataImpl) then) =
      __$$SignInResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SignInResponseDataImplCopyWithImpl<$Res>
    extends _$SignInResponseDataCopyWithImpl<$Res, _$SignInResponseDataImpl>
    implements _$$SignInResponseDataImplCopyWith<$Res> {
  __$$SignInResponseDataImplCopyWithImpl(_$SignInResponseDataImpl _value,
      $Res Function(_$SignInResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SignInResponseDataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInResponseDataImpl implements _SignInResponseData {
  const _$SignInResponseDataImpl({required this.email});

  factory _$SignInResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInResponseDataImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInResponseData(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInResponseDataImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInResponseDataImplCopyWith<_$SignInResponseDataImpl> get copyWith =>
      __$$SignInResponseDataImplCopyWithImpl<_$SignInResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInResponseDataImplToJson(
      this,
    );
  }
}

abstract class _SignInResponseData implements SignInResponseData {
  const factory _SignInResponseData({required final String email}) =
      _$SignInResponseDataImpl;

  factory _SignInResponseData.fromJson(Map<String, dynamic> json) =
      _$SignInResponseDataImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$SignInResponseDataImplCopyWith<_$SignInResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInBody _$SignInBodyFromJson(Map<String, dynamic> json) {
  return _SignInBody.fromJson(json);
}

/// @nodoc
mixin _$SignInBody {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInBodyCopyWith<SignInBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInBodyCopyWith<$Res> {
  factory $SignInBodyCopyWith(
          SignInBody value, $Res Function(SignInBody) then) =
      _$SignInBodyCopyWithImpl<$Res, SignInBody>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInBodyCopyWithImpl<$Res, $Val extends SignInBody>
    implements $SignInBodyCopyWith<$Res> {
  _$SignInBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInBodyImplCopyWith<$Res>
    implements $SignInBodyCopyWith<$Res> {
  factory _$$SignInBodyImplCopyWith(
          _$SignInBodyImpl value, $Res Function(_$SignInBodyImpl) then) =
      __$$SignInBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInBodyImplCopyWithImpl<$Res>
    extends _$SignInBodyCopyWithImpl<$Res, _$SignInBodyImpl>
    implements _$$SignInBodyImplCopyWith<$Res> {
  __$$SignInBodyImplCopyWithImpl(
      _$SignInBodyImpl _value, $Res Function(_$SignInBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInBodyImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInBodyImpl implements _SignInBody {
  const _$SignInBodyImpl({required this.email, required this.password});

  factory _$SignInBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInBodyImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInBody(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInBodyImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInBodyImplCopyWith<_$SignInBodyImpl> get copyWith =>
      __$$SignInBodyImplCopyWithImpl<_$SignInBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInBodyImplToJson(
      this,
    );
  }
}

abstract class _SignInBody implements SignInBody {
  const factory _SignInBody(
      {required final String email,
      required final String password}) = _$SignInBodyImpl;

  factory _SignInBody.fromJson(Map<String, dynamic> json) =
      _$SignInBodyImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignInBodyImplCopyWith<_$SignInBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) {
  return _SignUpResponse.fromJson(json);
}

/// @nodoc
mixin _$SignUpResponse {
  String get token => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpResponseCopyWith<SignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseCopyWith<$Res> {
  factory $SignUpResponseCopyWith(
          SignUpResponse value, $Res Function(SignUpResponse) then) =
      _$SignUpResponseCopyWithImpl<$Res, SignUpResponse>;
  @useResult
  $Res call({String token, UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$SignUpResponseCopyWithImpl<$Res, $Val extends SignUpResponse>
    implements $SignUpResponseCopyWith<$Res> {
  _$SignUpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpResponseImplCopyWith<$Res>
    implements $SignUpResponseCopyWith<$Res> {
  factory _$$SignUpResponseImplCopyWith(_$SignUpResponseImpl value,
          $Res Function(_$SignUpResponseImpl) then) =
      __$$SignUpResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignUpResponseImplCopyWithImpl<$Res>
    extends _$SignUpResponseCopyWithImpl<$Res, _$SignUpResponseImpl>
    implements _$$SignUpResponseImplCopyWith<$Res> {
  __$$SignUpResponseImplCopyWithImpl(
      _$SignUpResponseImpl _value, $Res Function(_$SignUpResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
  }) {
    return _then(_$SignUpResponseImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpResponseImpl implements _SignUpResponse {
  const _$SignUpResponseImpl({required this.token, required this.user});

  factory _$SignUpResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpResponseImplFromJson(json);

  @override
  final String token;
  @override
  final UserModel user;

  @override
  String toString() {
    return 'SignUpResponse(token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpResponseImplCopyWith<_$SignUpResponseImpl> get copyWith =>
      __$$SignUpResponseImplCopyWithImpl<_$SignUpResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpResponseImplToJson(
      this,
    );
  }
}

abstract class _SignUpResponse implements SignUpResponse {
  const factory _SignUpResponse(
      {required final String token,
      required final UserModel user}) = _$SignUpResponseImpl;

  factory _SignUpResponse.fromJson(Map<String, dynamic> json) =
      _$SignUpResponseImpl.fromJson;

  @override
  String get token;
  @override
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$SignUpResponseImplCopyWith<_$SignUpResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignUpBody _$SignUpBodyFromJson(Map<String, dynamic> json) {
  return _SignUpBody.fromJson(json);
}

/// @nodoc
mixin _$SignUpBody {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get department => throw _privateConstructorUsedError;
  String get batch => throw _privateConstructorUsedError;
  String get graduationYear => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get longitudes => throw _privateConstructorUsedError;
  String? get latitudes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpBodyCopyWith<SignUpBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpBodyCopyWith<$Res> {
  factory $SignUpBodyCopyWith(
          SignUpBody value, $Res Function(SignUpBody) then) =
      _$SignUpBodyCopyWithImpl<$Res, SignUpBody>;
  @useResult
  $Res call(
      {String email,
      String password,
      String name,
      String department,
      String batch,
      String graduationYear,
      String phoneNumber,
      String address,
      String? longitudes,
      String? latitudes});
}

/// @nodoc
class _$SignUpBodyCopyWithImpl<$Res, $Val extends SignUpBody>
    implements $SignUpBodyCopyWith<$Res> {
  _$SignUpBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? department = null,
    Object? batch = null,
    Object? graduationYear = null,
    Object? phoneNumber = null,
    Object? address = null,
    Object? longitudes = freezed,
    Object? latitudes = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      batch: null == batch
          ? _value.batch
          : batch // ignore: cast_nullable_to_non_nullable
              as String,
      graduationYear: null == graduationYear
          ? _value.graduationYear
          : graduationYear // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      longitudes: freezed == longitudes
          ? _value.longitudes
          : longitudes // ignore: cast_nullable_to_non_nullable
              as String?,
      latitudes: freezed == latitudes
          ? _value.latitudes
          : latitudes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpBodyImplCopyWith<$Res>
    implements $SignUpBodyCopyWith<$Res> {
  factory _$$SignUpBodyImplCopyWith(
          _$SignUpBodyImpl value, $Res Function(_$SignUpBodyImpl) then) =
      __$$SignUpBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      String name,
      String department,
      String batch,
      String graduationYear,
      String phoneNumber,
      String address,
      String? longitudes,
      String? latitudes});
}

/// @nodoc
class __$$SignUpBodyImplCopyWithImpl<$Res>
    extends _$SignUpBodyCopyWithImpl<$Res, _$SignUpBodyImpl>
    implements _$$SignUpBodyImplCopyWith<$Res> {
  __$$SignUpBodyImplCopyWithImpl(
      _$SignUpBodyImpl _value, $Res Function(_$SignUpBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? department = null,
    Object? batch = null,
    Object? graduationYear = null,
    Object? phoneNumber = null,
    Object? address = null,
    Object? longitudes = freezed,
    Object? latitudes = freezed,
  }) {
    return _then(_$SignUpBodyImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      batch: null == batch
          ? _value.batch
          : batch // ignore: cast_nullable_to_non_nullable
              as String,
      graduationYear: null == graduationYear
          ? _value.graduationYear
          : graduationYear // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      longitudes: freezed == longitudes
          ? _value.longitudes
          : longitudes // ignore: cast_nullable_to_non_nullable
              as String?,
      latitudes: freezed == latitudes
          ? _value.latitudes
          : latitudes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpBodyImpl implements _SignUpBody {
  const _$SignUpBodyImpl(
      {required this.email,
      required this.password,
      required this.name,
      required this.department,
      required this.batch,
      required this.graduationYear,
      required this.phoneNumber,
      required this.address,
      this.longitudes,
      this.latitudes});

  factory _$SignUpBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpBodyImplFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;
  @override
  final String department;
  @override
  final String batch;
  @override
  final String graduationYear;
  @override
  final String phoneNumber;
  @override
  final String address;
  @override
  final String? longitudes;
  @override
  final String? latitudes;

  @override
  String toString() {
    return 'SignUpBody(email: $email, password: $password, name: $name, department: $department, batch: $batch, graduationYear: $graduationYear, phoneNumber: $phoneNumber, address: $address, longitudes: $longitudes, latitudes: $latitudes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpBodyImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.batch, batch) || other.batch == batch) &&
            (identical(other.graduationYear, graduationYear) ||
                other.graduationYear == graduationYear) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.longitudes, longitudes) ||
                other.longitudes == longitudes) &&
            (identical(other.latitudes, latitudes) ||
                other.latitudes == latitudes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      password,
      name,
      department,
      batch,
      graduationYear,
      phoneNumber,
      address,
      longitudes,
      latitudes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpBodyImplCopyWith<_$SignUpBodyImpl> get copyWith =>
      __$$SignUpBodyImplCopyWithImpl<_$SignUpBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpBodyImplToJson(
      this,
    );
  }
}

abstract class _SignUpBody implements SignUpBody {
  const factory _SignUpBody(
      {required final String email,
      required final String password,
      required final String name,
      required final String department,
      required final String batch,
      required final String graduationYear,
      required final String phoneNumber,
      required final String address,
      final String? longitudes,
      final String? latitudes}) = _$SignUpBodyImpl;

  factory _SignUpBody.fromJson(Map<String, dynamic> json) =
      _$SignUpBodyImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String get name;
  @override
  String get department;
  @override
  String get batch;
  @override
  String get graduationYear;
  @override
  String get phoneNumber;
  @override
  String get address;
  @override
  String? get longitudes;
  @override
  String? get latitudes;
  @override
  @JsonKey(ignore: true)
  _$$SignUpBodyImplCopyWith<_$SignUpBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInWithGoogleResponse _$SignInWithGoogleResponseFromJson(
    Map<String, dynamic> json) {
  return _SignInWithGoogleResponse.fromJson(json);
}

/// @nodoc
mixin _$SignInWithGoogleResponse {
  String get token => throw _privateConstructorUsedError;
  UserGetOneData get user => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInWithGoogleResponseCopyWith<SignInWithGoogleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithGoogleResponseCopyWith<$Res> {
  factory $SignInWithGoogleResponseCopyWith(SignInWithGoogleResponse value,
          $Res Function(SignInWithGoogleResponse) then) =
      _$SignInWithGoogleResponseCopyWithImpl<$Res, SignInWithGoogleResponse>;
  @useResult
  $Res call({String token, UserGetOneData user, String message, bool success});

  $UserGetOneDataCopyWith<$Res> get user;
}

/// @nodoc
class _$SignInWithGoogleResponseCopyWithImpl<$Res,
        $Val extends SignInWithGoogleResponse>
    implements $SignInWithGoogleResponseCopyWith<$Res> {
  _$SignInWithGoogleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserGetOneData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserGetOneDataCopyWith<$Res> get user {
    return $UserGetOneDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInWithGoogleResponseImplCopyWith<$Res>
    implements $SignInWithGoogleResponseCopyWith<$Res> {
  factory _$$SignInWithGoogleResponseImplCopyWith(
          _$SignInWithGoogleResponseImpl value,
          $Res Function(_$SignInWithGoogleResponseImpl) then) =
      __$$SignInWithGoogleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, UserGetOneData user, String message, bool success});

  @override
  $UserGetOneDataCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignInWithGoogleResponseImplCopyWithImpl<$Res>
    extends _$SignInWithGoogleResponseCopyWithImpl<$Res,
        _$SignInWithGoogleResponseImpl>
    implements _$$SignInWithGoogleResponseImplCopyWith<$Res> {
  __$$SignInWithGoogleResponseImplCopyWithImpl(
      _$SignInWithGoogleResponseImpl _value,
      $Res Function(_$SignInWithGoogleResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? user = null,
    Object? message = null,
    Object? success = null,
  }) {
    return _then(_$SignInWithGoogleResponseImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserGetOneData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInWithGoogleResponseImpl implements _SignInWithGoogleResponse {
  const _$SignInWithGoogleResponseImpl(
      {required this.token,
      required this.user,
      required this.message,
      required this.success});

  factory _$SignInWithGoogleResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInWithGoogleResponseImplFromJson(json);

  @override
  final String token;
  @override
  final UserGetOneData user;
  @override
  final String message;
  @override
  final bool success;

  @override
  String toString() {
    return 'SignInWithGoogleResponse(token: $token, user: $user, message: $message, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGoogleResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, user, message, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithGoogleResponseImplCopyWith<_$SignInWithGoogleResponseImpl>
      get copyWith => __$$SignInWithGoogleResponseImplCopyWithImpl<
          _$SignInWithGoogleResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInWithGoogleResponseImplToJson(
      this,
    );
  }
}

abstract class _SignInWithGoogleResponse implements SignInWithGoogleResponse {
  const factory _SignInWithGoogleResponse(
      {required final String token,
      required final UserGetOneData user,
      required final String message,
      required final bool success}) = _$SignInWithGoogleResponseImpl;

  factory _SignInWithGoogleResponse.fromJson(Map<String, dynamic> json) =
      _$SignInWithGoogleResponseImpl.fromJson;

  @override
  String get token;
  @override
  UserGetOneData get user;
  @override
  String get message;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$SignInWithGoogleResponseImplCopyWith<_$SignInWithGoogleResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
