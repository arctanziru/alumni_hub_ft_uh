// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) {
  return _SearchModel.fromJson(json);
}

/// @nodoc
mixin _$SearchModel {
  String get message => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  SearchData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchModelCopyWith<SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
          SearchModel value, $Res Function(SearchModel) then) =
      _$SearchModelCopyWithImpl<$Res, SearchModel>;
  @useResult
  $Res call({String message, bool success, SearchData data});

  $SearchDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res, $Val extends SearchModel>
    implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchDataCopyWith<$Res> get data {
    return $SearchDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchModelImplCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$$SearchModelImplCopyWith(
          _$SearchModelImpl value, $Res Function(_$SearchModelImpl) then) =
      __$$SearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool success, SearchData data});

  @override
  $SearchDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SearchModelImplCopyWithImpl<$Res>
    extends _$SearchModelCopyWithImpl<$Res, _$SearchModelImpl>
    implements _$$SearchModelImplCopyWith<$Res> {
  __$$SearchModelImplCopyWithImpl(
      _$SearchModelImpl _value, $Res Function(_$SearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$SearchModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchModelImpl implements _SearchModel {
  const _$SearchModelImpl(
      {required this.message, required this.success, required this.data});

  factory _$SearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchModelImplFromJson(json);

  @override
  final String message;
  @override
  final bool success;
  @override
  final SearchData data;

  @override
  String toString() {
    return 'SearchModel(message: $message, success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchModelImplCopyWith<_$SearchModelImpl> get copyWith =>
      __$$SearchModelImplCopyWithImpl<_$SearchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchModelImplToJson(
      this,
    );
  }
}

abstract class _SearchModel implements SearchModel {
  const factory _SearchModel(
      {required final String message,
      required final bool success,
      required final SearchData data}) = _$SearchModelImpl;

  factory _SearchModel.fromJson(Map<String, dynamic> json) =
      _$SearchModelImpl.fromJson;

  @override
  String get message;
  @override
  bool get success;
  @override
  SearchData get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchModelImplCopyWith<_$SearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchData _$SearchDataFromJson(Map<String, dynamic> json) {
  return _SearchData.fromJson(json);
}

/// @nodoc
mixin _$SearchData {
  int get berita => throw _privateConstructorUsedError;
  int get loker => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDataCopyWith<SearchData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDataCopyWith<$Res> {
  factory $SearchDataCopyWith(
          SearchData value, $Res Function(SearchData) then) =
      _$SearchDataCopyWithImpl<$Res, SearchData>;
  @useResult
  $Res call({int berita, int loker});
}

/// @nodoc
class _$SearchDataCopyWithImpl<$Res, $Val extends SearchData>
    implements $SearchDataCopyWith<$Res> {
  _$SearchDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? berita = null,
    Object? loker = null,
  }) {
    return _then(_value.copyWith(
      berita: null == berita
          ? _value.berita
          : berita // ignore: cast_nullable_to_non_nullable
              as int,
      loker: null == loker
          ? _value.loker
          : loker // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchDataImplCopyWith<$Res>
    implements $SearchDataCopyWith<$Res> {
  factory _$$SearchDataImplCopyWith(
          _$SearchDataImpl value, $Res Function(_$SearchDataImpl) then) =
      __$$SearchDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int berita, int loker});
}

/// @nodoc
class __$$SearchDataImplCopyWithImpl<$Res>
    extends _$SearchDataCopyWithImpl<$Res, _$SearchDataImpl>
    implements _$$SearchDataImplCopyWith<$Res> {
  __$$SearchDataImplCopyWithImpl(
      _$SearchDataImpl _value, $Res Function(_$SearchDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? berita = null,
    Object? loker = null,
  }) {
    return _then(_$SearchDataImpl(
      berita: null == berita
          ? _value.berita
          : berita // ignore: cast_nullable_to_non_nullable
              as int,
      loker: null == loker
          ? _value.loker
          : loker // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchDataImpl implements _SearchData {
  const _$SearchDataImpl({required this.berita, required this.loker});

  factory _$SearchDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchDataImplFromJson(json);

  @override
  final int berita;
  @override
  final int loker;

  @override
  String toString() {
    return 'SearchData(berita: $berita, loker: $loker)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDataImpl &&
            (identical(other.berita, berita) || other.berita == berita) &&
            (identical(other.loker, loker) || other.loker == loker));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, berita, loker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDataImplCopyWith<_$SearchDataImpl> get copyWith =>
      __$$SearchDataImplCopyWithImpl<_$SearchDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchDataImplToJson(
      this,
    );
  }
}

abstract class _SearchData implements SearchData {
  const factory _SearchData(
      {required final int berita, required final int loker}) = _$SearchDataImpl;

  factory _SearchData.fromJson(Map<String, dynamic> json) =
      _$SearchDataImpl.fromJson;

  @override
  int get berita;
  @override
  int get loker;
  @override
  @JsonKey(ignore: true)
  _$$SearchDataImplCopyWith<_$SearchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
