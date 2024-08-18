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

AlumniGetManyResponse _$AlumniGetManyResponseFromJson(
    Map<String, dynamic> json) {
  return _AlumniGetManyResponse.fromJson(json);
}

/// @nodoc
mixin _$AlumniGetManyResponse {
  String get message => throw _privateConstructorUsedError;
  List<AlumniModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlumniGetManyResponseCopyWith<AlumniGetManyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniGetManyResponseCopyWith<$Res> {
  factory $AlumniGetManyResponseCopyWith(AlumniGetManyResponse value,
          $Res Function(AlumniGetManyResponse) then) =
      _$AlumniGetManyResponseCopyWithImpl<$Res, AlumniGetManyResponse>;
  @useResult
  $Res call({String message, List<AlumniModel> data});
}

/// @nodoc
class _$AlumniGetManyResponseCopyWithImpl<$Res,
        $Val extends AlumniGetManyResponse>
    implements $AlumniGetManyResponseCopyWith<$Res> {
  _$AlumniGetManyResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$AlumniGetManyResponseImplCopyWith<$Res>
    implements $AlumniGetManyResponseCopyWith<$Res> {
  factory _$$AlumniGetManyResponseImplCopyWith(
          _$AlumniGetManyResponseImpl value,
          $Res Function(_$AlumniGetManyResponseImpl) then) =
      __$$AlumniGetManyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<AlumniModel> data});
}

/// @nodoc
class __$$AlumniGetManyResponseImplCopyWithImpl<$Res>
    extends _$AlumniGetManyResponseCopyWithImpl<$Res,
        _$AlumniGetManyResponseImpl>
    implements _$$AlumniGetManyResponseImplCopyWith<$Res> {
  __$$AlumniGetManyResponseImplCopyWithImpl(_$AlumniGetManyResponseImpl _value,
      $Res Function(_$AlumniGetManyResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AlumniGetManyResponseImpl(
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
class _$AlumniGetManyResponseImpl implements _AlumniGetManyResponse {
  const _$AlumniGetManyResponseImpl(
      {required this.message, required final List<AlumniModel> data})
      : _data = data;

  factory _$AlumniGetManyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlumniGetManyResponseImplFromJson(json);

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
    return 'AlumniGetManyResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlumniGetManyResponseImpl &&
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
  _$$AlumniGetManyResponseImplCopyWith<_$AlumniGetManyResponseImpl>
      get copyWith => __$$AlumniGetManyResponseImplCopyWithImpl<
          _$AlumniGetManyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlumniGetManyResponseImplToJson(
      this,
    );
  }
}

abstract class _AlumniGetManyResponse implements AlumniGetManyResponse {
  const factory _AlumniGetManyResponse(
      {required final String message,
      required final List<AlumniModel> data}) = _$AlumniGetManyResponseImpl;

  factory _AlumniGetManyResponse.fromJson(Map<String, dynamic> json) =
      _$AlumniGetManyResponseImpl.fromJson;

  @override
  String get message;
  @override
  List<AlumniModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$AlumniGetManyResponseImplCopyWith<_$AlumniGetManyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AlumniJurusanResponse _$AlumniJurusanResponseFromJson(
    Map<String, dynamic> json) {
  return _AlumniJurusanResponse.fromJson(json);
}

/// @nodoc
mixin _$AlumniJurusanResponse {
  String get message => throw _privateConstructorUsedError;
  List<JurusanData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlumniJurusanResponseCopyWith<AlumniJurusanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniJurusanResponseCopyWith<$Res> {
  factory $AlumniJurusanResponseCopyWith(AlumniJurusanResponse value,
          $Res Function(AlumniJurusanResponse) then) =
      _$AlumniJurusanResponseCopyWithImpl<$Res, AlumniJurusanResponse>;
  @useResult
  $Res call({String message, List<JurusanData> data});
}

/// @nodoc
class _$AlumniJurusanResponseCopyWithImpl<$Res,
        $Val extends AlumniJurusanResponse>
    implements $AlumniJurusanResponseCopyWith<$Res> {
  _$AlumniJurusanResponseCopyWithImpl(this._value, this._then);

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
              as List<JurusanData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlumniJurusanResponseImplCopyWith<$Res>
    implements $AlumniJurusanResponseCopyWith<$Res> {
  factory _$$AlumniJurusanResponseImplCopyWith(
          _$AlumniJurusanResponseImpl value,
          $Res Function(_$AlumniJurusanResponseImpl) then) =
      __$$AlumniJurusanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<JurusanData> data});
}

/// @nodoc
class __$$AlumniJurusanResponseImplCopyWithImpl<$Res>
    extends _$AlumniJurusanResponseCopyWithImpl<$Res,
        _$AlumniJurusanResponseImpl>
    implements _$$AlumniJurusanResponseImplCopyWith<$Res> {
  __$$AlumniJurusanResponseImplCopyWithImpl(_$AlumniJurusanResponseImpl _value,
      $Res Function(_$AlumniJurusanResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AlumniJurusanResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JurusanData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlumniJurusanResponseImpl implements _AlumniJurusanResponse {
  const _$AlumniJurusanResponseImpl(
      {required this.message, required final List<JurusanData> data})
      : _data = data;

  factory _$AlumniJurusanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlumniJurusanResponseImplFromJson(json);

  @override
  final String message;
  final List<JurusanData> _data;
  @override
  List<JurusanData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AlumniJurusanResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlumniJurusanResponseImpl &&
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
  _$$AlumniJurusanResponseImplCopyWith<_$AlumniJurusanResponseImpl>
      get copyWith => __$$AlumniJurusanResponseImplCopyWithImpl<
          _$AlumniJurusanResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlumniJurusanResponseImplToJson(
      this,
    );
  }
}

abstract class _AlumniJurusanResponse implements AlumniJurusanResponse {
  const factory _AlumniJurusanResponse(
      {required final String message,
      required final List<JurusanData> data}) = _$AlumniJurusanResponseImpl;

  factory _AlumniJurusanResponse.fromJson(Map<String, dynamic> json) =
      _$AlumniJurusanResponseImpl.fromJson;

  @override
  String get message;
  @override
  List<JurusanData> get data;
  @override
  @JsonKey(ignore: true)
  _$$AlumniJurusanResponseImplCopyWith<_$AlumniJurusanResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AlumniJurusanParams _$AlumniJurusanParamsFromJson(Map<String, dynamic> json) {
  return _AlumniJurusanParams.fromJson(json);
}

/// @nodoc
mixin _$AlumniJurusanParams {
  String get angkatan => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlumniJurusanParamsCopyWith<AlumniJurusanParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniJurusanParamsCopyWith<$Res> {
  factory $AlumniJurusanParamsCopyWith(
          AlumniJurusanParams value, $Res Function(AlumniJurusanParams) then) =
      _$AlumniJurusanParamsCopyWithImpl<$Res, AlumniJurusanParams>;
  @useResult
  $Res call({String angkatan, String? search});
}

/// @nodoc
class _$AlumniJurusanParamsCopyWithImpl<$Res, $Val extends AlumniJurusanParams>
    implements $AlumniJurusanParamsCopyWith<$Res> {
  _$AlumniJurusanParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? angkatan = null,
    Object? search = freezed,
  }) {
    return _then(_value.copyWith(
      angkatan: null == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlumniJurusanParamsImplCopyWith<$Res>
    implements $AlumniJurusanParamsCopyWith<$Res> {
  factory _$$AlumniJurusanParamsImplCopyWith(_$AlumniJurusanParamsImpl value,
          $Res Function(_$AlumniJurusanParamsImpl) then) =
      __$$AlumniJurusanParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String angkatan, String? search});
}

/// @nodoc
class __$$AlumniJurusanParamsImplCopyWithImpl<$Res>
    extends _$AlumniJurusanParamsCopyWithImpl<$Res, _$AlumniJurusanParamsImpl>
    implements _$$AlumniJurusanParamsImplCopyWith<$Res> {
  __$$AlumniJurusanParamsImplCopyWithImpl(_$AlumniJurusanParamsImpl _value,
      $Res Function(_$AlumniJurusanParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? angkatan = null,
    Object? search = freezed,
  }) {
    return _then(_$AlumniJurusanParamsImpl(
      angkatan: null == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlumniJurusanParamsImpl implements _AlumniJurusanParams {
  const _$AlumniJurusanParamsImpl({required this.angkatan, this.search});

  factory _$AlumniJurusanParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlumniJurusanParamsImplFromJson(json);

  @override
  final String angkatan;
  @override
  final String? search;

  @override
  String toString() {
    return 'AlumniJurusanParams(angkatan: $angkatan, search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlumniJurusanParamsImpl &&
            (identical(other.angkatan, angkatan) ||
                other.angkatan == angkatan) &&
            (identical(other.search, search) || other.search == search));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, angkatan, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlumniJurusanParamsImplCopyWith<_$AlumniJurusanParamsImpl> get copyWith =>
      __$$AlumniJurusanParamsImplCopyWithImpl<_$AlumniJurusanParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlumniJurusanParamsImplToJson(
      this,
    );
  }
}

abstract class _AlumniJurusanParams implements AlumniJurusanParams {
  const factory _AlumniJurusanParams(
      {required final String angkatan,
      final String? search}) = _$AlumniJurusanParamsImpl;

  factory _AlumniJurusanParams.fromJson(Map<String, dynamic> json) =
      _$AlumniJurusanParamsImpl.fromJson;

  @override
  String get angkatan;
  @override
  String? get search;
  @override
  @JsonKey(ignore: true)
  _$$AlumniJurusanParamsImplCopyWith<_$AlumniJurusanParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JurusanData _$JurusanDataFromJson(Map<String, dynamic> json) {
  return _JurusanData.fromJson(json);
}

/// @nodoc
mixin _$JurusanData {
  String get jurusan => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JurusanDataCopyWith<JurusanData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JurusanDataCopyWith<$Res> {
  factory $JurusanDataCopyWith(
          JurusanData value, $Res Function(JurusanData) then) =
      _$JurusanDataCopyWithImpl<$Res, JurusanData>;
  @useResult
  $Res call({String jurusan, int total});
}

/// @nodoc
class _$JurusanDataCopyWithImpl<$Res, $Val extends JurusanData>
    implements $JurusanDataCopyWith<$Res> {
  _$JurusanDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jurusan = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      jurusan: null == jurusan
          ? _value.jurusan
          : jurusan // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JurusanDataImplCopyWith<$Res>
    implements $JurusanDataCopyWith<$Res> {
  factory _$$JurusanDataImplCopyWith(
          _$JurusanDataImpl value, $Res Function(_$JurusanDataImpl) then) =
      __$$JurusanDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jurusan, int total});
}

/// @nodoc
class __$$JurusanDataImplCopyWithImpl<$Res>
    extends _$JurusanDataCopyWithImpl<$Res, _$JurusanDataImpl>
    implements _$$JurusanDataImplCopyWith<$Res> {
  __$$JurusanDataImplCopyWithImpl(
      _$JurusanDataImpl _value, $Res Function(_$JurusanDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jurusan = null,
    Object? total = null,
  }) {
    return _then(_$JurusanDataImpl(
      jurusan: null == jurusan
          ? _value.jurusan
          : jurusan // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JurusanDataImpl implements _JurusanData {
  const _$JurusanDataImpl({required this.jurusan, required this.total});

  factory _$JurusanDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$JurusanDataImplFromJson(json);

  @override
  final String jurusan;
  @override
  final int total;

  @override
  String toString() {
    return 'JurusanData(jurusan: $jurusan, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JurusanDataImpl &&
            (identical(other.jurusan, jurusan) || other.jurusan == jurusan) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jurusan, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JurusanDataImplCopyWith<_$JurusanDataImpl> get copyWith =>
      __$$JurusanDataImplCopyWithImpl<_$JurusanDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JurusanDataImplToJson(
      this,
    );
  }
}

abstract class _JurusanData implements JurusanData {
  const factory _JurusanData(
      {required final String jurusan,
      required final int total}) = _$JurusanDataImpl;

  factory _JurusanData.fromJson(Map<String, dynamic> json) =
      _$JurusanDataImpl.fromJson;

  @override
  String get jurusan;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$JurusanDataImplCopyWith<_$JurusanDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlumniAngkatanResponse _$AlumniAngkatanResponseFromJson(
    Map<String, dynamic> json) {
  return _AlumniAngkatanResponse.fromJson(json);
}

/// @nodoc
mixin _$AlumniAngkatanResponse {
  String get message => throw _privateConstructorUsedError;
  List<AngkatanData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlumniAngkatanResponseCopyWith<AlumniAngkatanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniAngkatanResponseCopyWith<$Res> {
  factory $AlumniAngkatanResponseCopyWith(AlumniAngkatanResponse value,
          $Res Function(AlumniAngkatanResponse) then) =
      _$AlumniAngkatanResponseCopyWithImpl<$Res, AlumniAngkatanResponse>;
  @useResult
  $Res call({String message, List<AngkatanData> data});
}

/// @nodoc
class _$AlumniAngkatanResponseCopyWithImpl<$Res,
        $Val extends AlumniAngkatanResponse>
    implements $AlumniAngkatanResponseCopyWith<$Res> {
  _$AlumniAngkatanResponseCopyWithImpl(this._value, this._then);

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
              as List<AngkatanData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlumniAngkatanResponseImplCopyWith<$Res>
    implements $AlumniAngkatanResponseCopyWith<$Res> {
  factory _$$AlumniAngkatanResponseImplCopyWith(
          _$AlumniAngkatanResponseImpl value,
          $Res Function(_$AlumniAngkatanResponseImpl) then) =
      __$$AlumniAngkatanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<AngkatanData> data});
}

/// @nodoc
class __$$AlumniAngkatanResponseImplCopyWithImpl<$Res>
    extends _$AlumniAngkatanResponseCopyWithImpl<$Res,
        _$AlumniAngkatanResponseImpl>
    implements _$$AlumniAngkatanResponseImplCopyWith<$Res> {
  __$$AlumniAngkatanResponseImplCopyWithImpl(
      _$AlumniAngkatanResponseImpl _value,
      $Res Function(_$AlumniAngkatanResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$AlumniAngkatanResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AngkatanData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlumniAngkatanResponseImpl implements _AlumniAngkatanResponse {
  const _$AlumniAngkatanResponseImpl(
      {required this.message, required final List<AngkatanData> data})
      : _data = data;

  factory _$AlumniAngkatanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlumniAngkatanResponseImplFromJson(json);

  @override
  final String message;
  final List<AngkatanData> _data;
  @override
  List<AngkatanData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AlumniAngkatanResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlumniAngkatanResponseImpl &&
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
  _$$AlumniAngkatanResponseImplCopyWith<_$AlumniAngkatanResponseImpl>
      get copyWith => __$$AlumniAngkatanResponseImplCopyWithImpl<
          _$AlumniAngkatanResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlumniAngkatanResponseImplToJson(
      this,
    );
  }
}

abstract class _AlumniAngkatanResponse implements AlumniAngkatanResponse {
  const factory _AlumniAngkatanResponse(
      {required final String message,
      required final List<AngkatanData> data}) = _$AlumniAngkatanResponseImpl;

  factory _AlumniAngkatanResponse.fromJson(Map<String, dynamic> json) =
      _$AlumniAngkatanResponseImpl.fromJson;

  @override
  String get message;
  @override
  List<AngkatanData> get data;
  @override
  @JsonKey(ignore: true)
  _$$AlumniAngkatanResponseImplCopyWith<_$AlumniAngkatanResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AlumniAngkatanParams _$AlumniAngkatanParamsFromJson(Map<String, dynamic> json) {
  return _AlumniAngkatanParams.fromJson(json);
}

/// @nodoc
mixin _$AlumniAngkatanParams {
  String? get search => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlumniAngkatanParamsCopyWith<AlumniAngkatanParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniAngkatanParamsCopyWith<$Res> {
  factory $AlumniAngkatanParamsCopyWith(AlumniAngkatanParams value,
          $Res Function(AlumniAngkatanParams) then) =
      _$AlumniAngkatanParamsCopyWithImpl<$Res, AlumniAngkatanParams>;
  @useResult
  $Res call({String? search});
}

/// @nodoc
class _$AlumniAngkatanParamsCopyWithImpl<$Res,
        $Val extends AlumniAngkatanParams>
    implements $AlumniAngkatanParamsCopyWith<$Res> {
  _$AlumniAngkatanParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_value.copyWith(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlumniAngkatanParamsImplCopyWith<$Res>
    implements $AlumniAngkatanParamsCopyWith<$Res> {
  factory _$$AlumniAngkatanParamsImplCopyWith(_$AlumniAngkatanParamsImpl value,
          $Res Function(_$AlumniAngkatanParamsImpl) then) =
      __$$AlumniAngkatanParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? search});
}

/// @nodoc
class __$$AlumniAngkatanParamsImplCopyWithImpl<$Res>
    extends _$AlumniAngkatanParamsCopyWithImpl<$Res, _$AlumniAngkatanParamsImpl>
    implements _$$AlumniAngkatanParamsImplCopyWith<$Res> {
  __$$AlumniAngkatanParamsImplCopyWithImpl(_$AlumniAngkatanParamsImpl _value,
      $Res Function(_$AlumniAngkatanParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_$AlumniAngkatanParamsImpl(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlumniAngkatanParamsImpl implements _AlumniAngkatanParams {
  const _$AlumniAngkatanParamsImpl({this.search});

  factory _$AlumniAngkatanParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlumniAngkatanParamsImplFromJson(json);

  @override
  final String? search;

  @override
  String toString() {
    return 'AlumniAngkatanParams(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlumniAngkatanParamsImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlumniAngkatanParamsImplCopyWith<_$AlumniAngkatanParamsImpl>
      get copyWith =>
          __$$AlumniAngkatanParamsImplCopyWithImpl<_$AlumniAngkatanParamsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlumniAngkatanParamsImplToJson(
      this,
    );
  }
}

abstract class _AlumniAngkatanParams implements AlumniAngkatanParams {
  const factory _AlumniAngkatanParams({final String? search}) =
      _$AlumniAngkatanParamsImpl;

  factory _AlumniAngkatanParams.fromJson(Map<String, dynamic> json) =
      _$AlumniAngkatanParamsImpl.fromJson;

  @override
  String? get search;
  @override
  @JsonKey(ignore: true)
  _$$AlumniAngkatanParamsImplCopyWith<_$AlumniAngkatanParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AngkatanData _$AngkatanDataFromJson(Map<String, dynamic> json) {
  return _AngkatanData.fromJson(json);
}

/// @nodoc
mixin _$AngkatanData {
  String get angkatan => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AngkatanDataCopyWith<AngkatanData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AngkatanDataCopyWith<$Res> {
  factory $AngkatanDataCopyWith(
          AngkatanData value, $Res Function(AngkatanData) then) =
      _$AngkatanDataCopyWithImpl<$Res, AngkatanData>;
  @useResult
  $Res call({String angkatan, int total});
}

/// @nodoc
class _$AngkatanDataCopyWithImpl<$Res, $Val extends AngkatanData>
    implements $AngkatanDataCopyWith<$Res> {
  _$AngkatanDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? angkatan = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      angkatan: null == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AngkatanDataImplCopyWith<$Res>
    implements $AngkatanDataCopyWith<$Res> {
  factory _$$AngkatanDataImplCopyWith(
          _$AngkatanDataImpl value, $Res Function(_$AngkatanDataImpl) then) =
      __$$AngkatanDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String angkatan, int total});
}

/// @nodoc
class __$$AngkatanDataImplCopyWithImpl<$Res>
    extends _$AngkatanDataCopyWithImpl<$Res, _$AngkatanDataImpl>
    implements _$$AngkatanDataImplCopyWith<$Res> {
  __$$AngkatanDataImplCopyWithImpl(
      _$AngkatanDataImpl _value, $Res Function(_$AngkatanDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? angkatan = null,
    Object? total = null,
  }) {
    return _then(_$AngkatanDataImpl(
      angkatan: null == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AngkatanDataImpl implements _AngkatanData {
  const _$AngkatanDataImpl({required this.angkatan, required this.total});

  factory _$AngkatanDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AngkatanDataImplFromJson(json);

  @override
  final String angkatan;
  @override
  final int total;

  @override
  String toString() {
    return 'AngkatanData(angkatan: $angkatan, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AngkatanDataImpl &&
            (identical(other.angkatan, angkatan) ||
                other.angkatan == angkatan) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, angkatan, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AngkatanDataImplCopyWith<_$AngkatanDataImpl> get copyWith =>
      __$$AngkatanDataImplCopyWithImpl<_$AngkatanDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AngkatanDataImplToJson(
      this,
    );
  }
}

abstract class _AngkatanData implements AngkatanData {
  const factory _AngkatanData(
      {required final String angkatan,
      required final int total}) = _$AngkatanDataImpl;

  factory _AngkatanData.fromJson(Map<String, dynamic> json) =
      _$AngkatanDataImpl.fromJson;

  @override
  String get angkatan;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$AngkatanDataImplCopyWith<_$AngkatanDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlumniGetManyParams _$AlumniGetManyParamsFromJson(Map<String, dynamic> json) {
  return _AlumniGetManyParams.fromJson(json);
}

/// @nodoc
mixin _$AlumniGetManyParams {
  String get angkatan => throw _privateConstructorUsedError;
  String get jurusan => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlumniGetManyParamsCopyWith<AlumniGetManyParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniGetManyParamsCopyWith<$Res> {
  factory $AlumniGetManyParamsCopyWith(
          AlumniGetManyParams value, $Res Function(AlumniGetManyParams) then) =
      _$AlumniGetManyParamsCopyWithImpl<$Res, AlumniGetManyParams>;
  @useResult
  $Res call({String angkatan, String jurusan, String? search});
}

/// @nodoc
class _$AlumniGetManyParamsCopyWithImpl<$Res, $Val extends AlumniGetManyParams>
    implements $AlumniGetManyParamsCopyWith<$Res> {
  _$AlumniGetManyParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? angkatan = null,
    Object? jurusan = null,
    Object? search = freezed,
  }) {
    return _then(_value.copyWith(
      angkatan: null == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String,
      jurusan: null == jurusan
          ? _value.jurusan
          : jurusan // ignore: cast_nullable_to_non_nullable
              as String,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlumniGetManyParamsImplCopyWith<$Res>
    implements $AlumniGetManyParamsCopyWith<$Res> {
  factory _$$AlumniGetManyParamsImplCopyWith(_$AlumniGetManyParamsImpl value,
          $Res Function(_$AlumniGetManyParamsImpl) then) =
      __$$AlumniGetManyParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String angkatan, String jurusan, String? search});
}

/// @nodoc
class __$$AlumniGetManyParamsImplCopyWithImpl<$Res>
    extends _$AlumniGetManyParamsCopyWithImpl<$Res, _$AlumniGetManyParamsImpl>
    implements _$$AlumniGetManyParamsImplCopyWith<$Res> {
  __$$AlumniGetManyParamsImplCopyWithImpl(_$AlumniGetManyParamsImpl _value,
      $Res Function(_$AlumniGetManyParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? angkatan = null,
    Object? jurusan = null,
    Object? search = freezed,
  }) {
    return _then(_$AlumniGetManyParamsImpl(
      angkatan: null == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String,
      jurusan: null == jurusan
          ? _value.jurusan
          : jurusan // ignore: cast_nullable_to_non_nullable
              as String,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlumniGetManyParamsImpl implements _AlumniGetManyParams {
  const _$AlumniGetManyParamsImpl(
      {required this.angkatan, required this.jurusan, this.search});

  factory _$AlumniGetManyParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlumniGetManyParamsImplFromJson(json);

  @override
  final String angkatan;
  @override
  final String jurusan;
  @override
  final String? search;

  @override
  String toString() {
    return 'AlumniGetManyParams(angkatan: $angkatan, jurusan: $jurusan, search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlumniGetManyParamsImpl &&
            (identical(other.angkatan, angkatan) ||
                other.angkatan == angkatan) &&
            (identical(other.jurusan, jurusan) || other.jurusan == jurusan) &&
            (identical(other.search, search) || other.search == search));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, angkatan, jurusan, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlumniGetManyParamsImplCopyWith<_$AlumniGetManyParamsImpl> get copyWith =>
      __$$AlumniGetManyParamsImplCopyWithImpl<_$AlumniGetManyParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlumniGetManyParamsImplToJson(
      this,
    );
  }
}

abstract class _AlumniGetManyParams implements AlumniGetManyParams {
  const factory _AlumniGetManyParams(
      {required final String angkatan,
      required final String jurusan,
      final String? search}) = _$AlumniGetManyParamsImpl;

  factory _AlumniGetManyParams.fromJson(Map<String, dynamic> json) =
      _$AlumniGetManyParamsImpl.fromJson;

  @override
  String get angkatan;
  @override
  String get jurusan;
  @override
  String? get search;
  @override
  @JsonKey(ignore: true)
  _$$AlumniGetManyParamsImplCopyWith<_$AlumniGetManyParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AlumniBody _$AlumniBodyFromJson(Map<String, dynamic> json) {
  return _AlumniBody.fromJson(json);
}

/// @nodoc
mixin _$AlumniBody {
  String? get nim => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_anggota')
  String? get noAnggota => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_lahir')
  String? get tglLahir => throw _privateConstructorUsedError;
  String? get jurusan => throw _privateConstructorUsedError;
  String? get angkatan => throw _privateConstructorUsedError;
  EKelamin? get kelamin => throw _privateConstructorUsedError;
  String? get agama => throw _privateConstructorUsedError;
  @JsonKey(name: 'golongan_darah')
  String? get golonganDarah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlumniBodyCopyWith<AlumniBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniBodyCopyWith<$Res> {
  factory $AlumniBodyCopyWith(
          AlumniBody value, $Res Function(AlumniBody) then) =
      _$AlumniBodyCopyWithImpl<$Res, AlumniBody>;
  @useResult
  $Res call(
      {String? nim,
      @JsonKey(name: 'no_anggota') String? noAnggota,
      String? nama,
      @JsonKey(name: 'tgl_lahir') String? tglLahir,
      String? jurusan,
      String? angkatan,
      EKelamin? kelamin,
      String? agama,
      @JsonKey(name: 'golongan_darah') String? golonganDarah});
}

/// @nodoc
class _$AlumniBodyCopyWithImpl<$Res, $Val extends AlumniBody>
    implements $AlumniBodyCopyWith<$Res> {
  _$AlumniBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nim = freezed,
    Object? noAnggota = freezed,
    Object? nama = freezed,
    Object? tglLahir = freezed,
    Object? jurusan = freezed,
    Object? angkatan = freezed,
    Object? kelamin = freezed,
    Object? agama = freezed,
    Object? golonganDarah = freezed,
  }) {
    return _then(_value.copyWith(
      nim: freezed == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String?,
      noAnggota: freezed == noAnggota
          ? _value.noAnggota
          : noAnggota // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      tglLahir: freezed == tglLahir
          ? _value.tglLahir
          : tglLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      jurusan: freezed == jurusan
          ? _value.jurusan
          : jurusan // ignore: cast_nullable_to_non_nullable
              as String?,
      angkatan: freezed == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String?,
      kelamin: freezed == kelamin
          ? _value.kelamin
          : kelamin // ignore: cast_nullable_to_non_nullable
              as EKelamin?,
      agama: freezed == agama
          ? _value.agama
          : agama // ignore: cast_nullable_to_non_nullable
              as String?,
      golonganDarah: freezed == golonganDarah
          ? _value.golonganDarah
          : golonganDarah // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlumniBodyImplCopyWith<$Res>
    implements $AlumniBodyCopyWith<$Res> {
  factory _$$AlumniBodyImplCopyWith(
          _$AlumniBodyImpl value, $Res Function(_$AlumniBodyImpl) then) =
      __$$AlumniBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? nim,
      @JsonKey(name: 'no_anggota') String? noAnggota,
      String? nama,
      @JsonKey(name: 'tgl_lahir') String? tglLahir,
      String? jurusan,
      String? angkatan,
      EKelamin? kelamin,
      String? agama,
      @JsonKey(name: 'golongan_darah') String? golonganDarah});
}

/// @nodoc
class __$$AlumniBodyImplCopyWithImpl<$Res>
    extends _$AlumniBodyCopyWithImpl<$Res, _$AlumniBodyImpl>
    implements _$$AlumniBodyImplCopyWith<$Res> {
  __$$AlumniBodyImplCopyWithImpl(
      _$AlumniBodyImpl _value, $Res Function(_$AlumniBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nim = freezed,
    Object? noAnggota = freezed,
    Object? nama = freezed,
    Object? tglLahir = freezed,
    Object? jurusan = freezed,
    Object? angkatan = freezed,
    Object? kelamin = freezed,
    Object? agama = freezed,
    Object? golonganDarah = freezed,
  }) {
    return _then(_$AlumniBodyImpl(
      nim: freezed == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String?,
      noAnggota: freezed == noAnggota
          ? _value.noAnggota
          : noAnggota // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      tglLahir: freezed == tglLahir
          ? _value.tglLahir
          : tglLahir // ignore: cast_nullable_to_non_nullable
              as String?,
      jurusan: freezed == jurusan
          ? _value.jurusan
          : jurusan // ignore: cast_nullable_to_non_nullable
              as String?,
      angkatan: freezed == angkatan
          ? _value.angkatan
          : angkatan // ignore: cast_nullable_to_non_nullable
              as String?,
      kelamin: freezed == kelamin
          ? _value.kelamin
          : kelamin // ignore: cast_nullable_to_non_nullable
              as EKelamin?,
      agama: freezed == agama
          ? _value.agama
          : agama // ignore: cast_nullable_to_non_nullable
              as String?,
      golonganDarah: freezed == golonganDarah
          ? _value.golonganDarah
          : golonganDarah // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlumniBodyImpl implements _AlumniBody {
  const _$AlumniBodyImpl(
      {this.nim,
      @JsonKey(name: 'no_anggota') this.noAnggota,
      this.nama,
      @JsonKey(name: 'tgl_lahir') this.tglLahir,
      this.jurusan,
      this.angkatan,
      this.kelamin,
      this.agama,
      @JsonKey(name: 'golongan_darah') this.golonganDarah});

  factory _$AlumniBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlumniBodyImplFromJson(json);

  @override
  final String? nim;
  @override
  @JsonKey(name: 'no_anggota')
  final String? noAnggota;
  @override
  final String? nama;
  @override
  @JsonKey(name: 'tgl_lahir')
  final String? tglLahir;
  @override
  final String? jurusan;
  @override
  final String? angkatan;
  @override
  final EKelamin? kelamin;
  @override
  final String? agama;
  @override
  @JsonKey(name: 'golongan_darah')
  final String? golonganDarah;

  @override
  String toString() {
    return 'AlumniBody(nim: $nim, noAnggota: $noAnggota, nama: $nama, tglLahir: $tglLahir, jurusan: $jurusan, angkatan: $angkatan, kelamin: $kelamin, agama: $agama, golonganDarah: $golonganDarah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlumniBodyImpl &&
            (identical(other.nim, nim) || other.nim == nim) &&
            (identical(other.noAnggota, noAnggota) ||
                other.noAnggota == noAnggota) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.tglLahir, tglLahir) ||
                other.tglLahir == tglLahir) &&
            (identical(other.jurusan, jurusan) || other.jurusan == jurusan) &&
            (identical(other.angkatan, angkatan) ||
                other.angkatan == angkatan) &&
            (identical(other.kelamin, kelamin) || other.kelamin == kelamin) &&
            (identical(other.agama, agama) || other.agama == agama) &&
            (identical(other.golonganDarah, golonganDarah) ||
                other.golonganDarah == golonganDarah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nim, noAnggota, nama, tglLahir,
      jurusan, angkatan, kelamin, agama, golonganDarah);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlumniBodyImplCopyWith<_$AlumniBodyImpl> get copyWith =>
      __$$AlumniBodyImplCopyWithImpl<_$AlumniBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlumniBodyImplToJson(
      this,
    );
  }
}

abstract class _AlumniBody implements AlumniBody {
  const factory _AlumniBody(
          {final String? nim,
          @JsonKey(name: 'no_anggota') final String? noAnggota,
          final String? nama,
          @JsonKey(name: 'tgl_lahir') final String? tglLahir,
          final String? jurusan,
          final String? angkatan,
          final EKelamin? kelamin,
          final String? agama,
          @JsonKey(name: 'golongan_darah') final String? golonganDarah}) =
      _$AlumniBodyImpl;

  factory _AlumniBody.fromJson(Map<String, dynamic> json) =
      _$AlumniBodyImpl.fromJson;

  @override
  String? get nim;
  @override
  @JsonKey(name: 'no_anggota')
  String? get noAnggota;
  @override
  String? get nama;
  @override
  @JsonKey(name: 'tgl_lahir')
  String? get tglLahir;
  @override
  String? get jurusan;
  @override
  String? get angkatan;
  @override
  EKelamin? get kelamin;
  @override
  String? get agama;
  @override
  @JsonKey(name: 'golongan_darah')
  String? get golonganDarah;
  @override
  @JsonKey(ignore: true)
  _$$AlumniBodyImplCopyWith<_$AlumniBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
