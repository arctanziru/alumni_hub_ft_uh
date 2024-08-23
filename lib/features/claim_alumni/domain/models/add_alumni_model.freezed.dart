// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_alumni_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddAlumniResponse _$AddAlumniResponseFromJson(Map<String, dynamic> json) {
  return _AddAlumniResponse.fromJson(json);
}

/// @nodoc
mixin _$AddAlumniResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  AlumniModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddAlumniResponseCopyWith<AddAlumniResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAlumniResponseCopyWith<$Res> {
  factory $AddAlumniResponseCopyWith(
          AddAlumniResponse value, $Res Function(AddAlumniResponse) then) =
      _$AddAlumniResponseCopyWithImpl<$Res, AddAlumniResponse>;
  @useResult
  $Res call({bool success, String message, AlumniModel data});

  $AlumniModelCopyWith<$Res> get data;
}

/// @nodoc
class _$AddAlumniResponseCopyWithImpl<$Res, $Val extends AddAlumniResponse>
    implements $AddAlumniResponseCopyWith<$Res> {
  _$AddAlumniResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$AddAlumniResponseImplCopyWith<$Res>
    implements $AddAlumniResponseCopyWith<$Res> {
  factory _$$AddAlumniResponseImplCopyWith(_$AddAlumniResponseImpl value,
          $Res Function(_$AddAlumniResponseImpl) then) =
      __$$AddAlumniResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, AlumniModel data});

  @override
  $AlumniModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$AddAlumniResponseImplCopyWithImpl<$Res>
    extends _$AddAlumniResponseCopyWithImpl<$Res, _$AddAlumniResponseImpl>
    implements _$$AddAlumniResponseImplCopyWith<$Res> {
  __$$AddAlumniResponseImplCopyWithImpl(_$AddAlumniResponseImpl _value,
      $Res Function(_$AddAlumniResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AddAlumniResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$AddAlumniResponseImpl implements _AddAlumniResponse {
  const _$AddAlumniResponseImpl(
      {required this.success, required this.message, required this.data});

  factory _$AddAlumniResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddAlumniResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final AlumniModel data;

  @override
  String toString() {
    return 'AddAlumniResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAlumniResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAlumniResponseImplCopyWith<_$AddAlumniResponseImpl> get copyWith =>
      __$$AddAlumniResponseImplCopyWithImpl<_$AddAlumniResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddAlumniResponseImplToJson(
      this,
    );
  }
}

abstract class _AddAlumniResponse implements AddAlumniResponse {
  const factory _AddAlumniResponse(
      {required final bool success,
      required final String message,
      required final AlumniModel data}) = _$AddAlumniResponseImpl;

  factory _AddAlumniResponse.fromJson(Map<String, dynamic> json) =
      _$AddAlumniResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  AlumniModel get data;
  @override
  @JsonKey(ignore: true)
  _$$AddAlumniResponseImplCopyWith<_$AddAlumniResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddAlumniResponseData _$AddAlumniResponseDataFromJson(
    Map<String, dynamic> json) {
  return _AddAlumniResponseData.fromJson(json);
}

/// @nodoc
mixin _$AddAlumniResponseData {
  AlumniModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddAlumniResponseDataCopyWith<AddAlumniResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAlumniResponseDataCopyWith<$Res> {
  factory $AddAlumniResponseDataCopyWith(AddAlumniResponseData value,
          $Res Function(AddAlumniResponseData) then) =
      _$AddAlumniResponseDataCopyWithImpl<$Res, AddAlumniResponseData>;
  @useResult
  $Res call({AlumniModel data});

  $AlumniModelCopyWith<$Res> get data;
}

/// @nodoc
class _$AddAlumniResponseDataCopyWithImpl<$Res,
        $Val extends AddAlumniResponseData>
    implements $AddAlumniResponseDataCopyWith<$Res> {
  _$AddAlumniResponseDataCopyWithImpl(this._value, this._then);

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
abstract class _$$AddAlumniResponseDataImplCopyWith<$Res>
    implements $AddAlumniResponseDataCopyWith<$Res> {
  factory _$$AddAlumniResponseDataImplCopyWith(
          _$AddAlumniResponseDataImpl value,
          $Res Function(_$AddAlumniResponseDataImpl) then) =
      __$$AddAlumniResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AlumniModel data});

  @override
  $AlumniModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$AddAlumniResponseDataImplCopyWithImpl<$Res>
    extends _$AddAlumniResponseDataCopyWithImpl<$Res,
        _$AddAlumniResponseDataImpl>
    implements _$$AddAlumniResponseDataImplCopyWith<$Res> {
  __$$AddAlumniResponseDataImplCopyWithImpl(_$AddAlumniResponseDataImpl _value,
      $Res Function(_$AddAlumniResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AddAlumniResponseDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AlumniModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddAlumniResponseDataImpl implements _AddAlumniResponseData {
  const _$AddAlumniResponseDataImpl({required this.data});

  factory _$AddAlumniResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddAlumniResponseDataImplFromJson(json);

  @override
  final AlumniModel data;

  @override
  String toString() {
    return 'AddAlumniResponseData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAlumniResponseDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAlumniResponseDataImplCopyWith<_$AddAlumniResponseDataImpl>
      get copyWith => __$$AddAlumniResponseDataImplCopyWithImpl<
          _$AddAlumniResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddAlumniResponseDataImplToJson(
      this,
    );
  }
}

abstract class _AddAlumniResponseData implements AddAlumniResponseData {
  const factory _AddAlumniResponseData({required final AlumniModel data}) =
      _$AddAlumniResponseDataImpl;

  factory _AddAlumniResponseData.fromJson(Map<String, dynamic> json) =
      _$AddAlumniResponseDataImpl.fromJson;

  @override
  AlumniModel get data;
  @override
  @JsonKey(ignore: true)
  _$$AddAlumniResponseDataImplCopyWith<_$AddAlumniResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AddAlumniBody _$AddAlumniBodyFromJson(Map<String, dynamic> json) {
  return _AddAlumniBody.fromJson(json);
}

/// @nodoc
mixin _$AddAlumniBody {
  @JsonKey(name: 'nama')
  String get name => throw _privateConstructorUsedError;
  String get nim => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_lahir')
  String get tglLahir => throw _privateConstructorUsedError;
  @JsonKey(name: 'jurusan')
  String get jurusan => throw _privateConstructorUsedError;
  String get angkatan => throw _privateConstructorUsedError;
  String get kelamin => throw _privateConstructorUsedError;
  String? get agama => throw _privateConstructorUsedError;
  @JsonKey(name: 'golongan_darah')
  String? get golonganDarah => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_telp')
  String? get noTelp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddAlumniBodyCopyWith<AddAlumniBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAlumniBodyCopyWith<$Res> {
  factory $AddAlumniBodyCopyWith(
          AddAlumniBody value, $Res Function(AddAlumniBody) then) =
      _$AddAlumniBodyCopyWithImpl<$Res, AddAlumniBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nama') String name,
      String nim,
      @JsonKey(name: 'tgl_lahir') String tglLahir,
      @JsonKey(name: 'jurusan') String jurusan,
      String angkatan,
      String kelamin,
      String? agama,
      @JsonKey(name: 'golongan_darah') String? golonganDarah,
      @JsonKey(name: 'no_telp') String? noTelp});
}

/// @nodoc
class _$AddAlumniBodyCopyWithImpl<$Res, $Val extends AddAlumniBody>
    implements $AddAlumniBodyCopyWith<$Res> {
  _$AddAlumniBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nim = null,
    Object? tglLahir = null,
    Object? jurusan = null,
    Object? angkatan = null,
    Object? kelamin = null,
    Object? agama = freezed,
    Object? golonganDarah = freezed,
    Object? noTelp = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nim: null == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
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
      kelamin: null == kelamin
          ? _value.kelamin
          : kelamin // ignore: cast_nullable_to_non_nullable
              as String,
      agama: freezed == agama
          ? _value.agama
          : agama // ignore: cast_nullable_to_non_nullable
              as String?,
      golonganDarah: freezed == golonganDarah
          ? _value.golonganDarah
          : golonganDarah // ignore: cast_nullable_to_non_nullable
              as String?,
      noTelp: freezed == noTelp
          ? _value.noTelp
          : noTelp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddAlumniBodyImplCopyWith<$Res>
    implements $AddAlumniBodyCopyWith<$Res> {
  factory _$$AddAlumniBodyImplCopyWith(
          _$AddAlumniBodyImpl value, $Res Function(_$AddAlumniBodyImpl) then) =
      __$$AddAlumniBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nama') String name,
      String nim,
      @JsonKey(name: 'tgl_lahir') String tglLahir,
      @JsonKey(name: 'jurusan') String jurusan,
      String angkatan,
      String kelamin,
      String? agama,
      @JsonKey(name: 'golongan_darah') String? golonganDarah,
      @JsonKey(name: 'no_telp') String? noTelp});
}

/// @nodoc
class __$$AddAlumniBodyImplCopyWithImpl<$Res>
    extends _$AddAlumniBodyCopyWithImpl<$Res, _$AddAlumniBodyImpl>
    implements _$$AddAlumniBodyImplCopyWith<$Res> {
  __$$AddAlumniBodyImplCopyWithImpl(
      _$AddAlumniBodyImpl _value, $Res Function(_$AddAlumniBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nim = null,
    Object? tglLahir = null,
    Object? jurusan = null,
    Object? angkatan = null,
    Object? kelamin = null,
    Object? agama = freezed,
    Object? golonganDarah = freezed,
    Object? noTelp = freezed,
  }) {
    return _then(_$AddAlumniBodyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nim: null == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
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
      kelamin: null == kelamin
          ? _value.kelamin
          : kelamin // ignore: cast_nullable_to_non_nullable
              as String,
      agama: freezed == agama
          ? _value.agama
          : agama // ignore: cast_nullable_to_non_nullable
              as String?,
      golonganDarah: freezed == golonganDarah
          ? _value.golonganDarah
          : golonganDarah // ignore: cast_nullable_to_non_nullable
              as String?,
      noTelp: freezed == noTelp
          ? _value.noTelp
          : noTelp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddAlumniBodyImpl implements _AddAlumniBody {
  const _$AddAlumniBodyImpl(
      {@JsonKey(name: 'nama') required this.name,
      required this.nim,
      @JsonKey(name: 'tgl_lahir') required this.tglLahir,
      @JsonKey(name: 'jurusan') required this.jurusan,
      required this.angkatan,
      required this.kelamin,
      this.agama,
      @JsonKey(name: 'golongan_darah') this.golonganDarah,
      @JsonKey(name: 'no_telp') this.noTelp});

  factory _$AddAlumniBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddAlumniBodyImplFromJson(json);

  @override
  @JsonKey(name: 'nama')
  final String name;
  @override
  final String nim;
  @override
  @JsonKey(name: 'tgl_lahir')
  final String tglLahir;
  @override
  @JsonKey(name: 'jurusan')
  final String jurusan;
  @override
  final String angkatan;
  @override
  final String kelamin;
  @override
  final String? agama;
  @override
  @JsonKey(name: 'golongan_darah')
  final String? golonganDarah;
  @override
  @JsonKey(name: 'no_telp')
  final String? noTelp;

  @override
  String toString() {
    return 'AddAlumniBody(name: $name, nim: $nim, tglLahir: $tglLahir, jurusan: $jurusan, angkatan: $angkatan, kelamin: $kelamin, agama: $agama, golonganDarah: $golonganDarah, noTelp: $noTelp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAlumniBodyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nim, nim) || other.nim == nim) &&
            (identical(other.tglLahir, tglLahir) ||
                other.tglLahir == tglLahir) &&
            (identical(other.jurusan, jurusan) || other.jurusan == jurusan) &&
            (identical(other.angkatan, angkatan) ||
                other.angkatan == angkatan) &&
            (identical(other.kelamin, kelamin) || other.kelamin == kelamin) &&
            (identical(other.agama, agama) || other.agama == agama) &&
            (identical(other.golonganDarah, golonganDarah) ||
                other.golonganDarah == golonganDarah) &&
            (identical(other.noTelp, noTelp) || other.noTelp == noTelp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, nim, tglLahir, jurusan,
      angkatan, kelamin, agama, golonganDarah, noTelp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAlumniBodyImplCopyWith<_$AddAlumniBodyImpl> get copyWith =>
      __$$AddAlumniBodyImplCopyWithImpl<_$AddAlumniBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddAlumniBodyImplToJson(
      this,
    );
  }
}

abstract class _AddAlumniBody implements AddAlumniBody {
  const factory _AddAlumniBody(
      {@JsonKey(name: 'nama') required final String name,
      required final String nim,
      @JsonKey(name: 'tgl_lahir') required final String tglLahir,
      @JsonKey(name: 'jurusan') required final String jurusan,
      required final String angkatan,
      required final String kelamin,
      final String? agama,
      @JsonKey(name: 'golongan_darah') final String? golonganDarah,
      @JsonKey(name: 'no_telp') final String? noTelp}) = _$AddAlumniBodyImpl;

  factory _AddAlumniBody.fromJson(Map<String, dynamic> json) =
      _$AddAlumniBodyImpl.fromJson;

  @override
  @JsonKey(name: 'nama')
  String get name;
  @override
  String get nim;
  @override
  @JsonKey(name: 'tgl_lahir')
  String get tglLahir;
  @override
  @JsonKey(name: 'jurusan')
  String get jurusan;
  @override
  String get angkatan;
  @override
  String get kelamin;
  @override
  String? get agama;
  @override
  @JsonKey(name: 'golongan_darah')
  String? get golonganDarah;
  @override
  @JsonKey(name: 'no_telp')
  String? get noTelp;
  @override
  @JsonKey(ignore: true)
  _$$AddAlumniBodyImplCopyWith<_$AddAlumniBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
