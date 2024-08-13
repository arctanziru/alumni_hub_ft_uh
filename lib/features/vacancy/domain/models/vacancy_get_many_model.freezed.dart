// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vacancy_get_many_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VacancyGetManyModelResponse _$VacancyGetManyModelResponseFromJson(
    Map<String, dynamic> json) {
  return _VacancyGetManyModelResponse.fromJson(json);
}

/// @nodoc
mixin _$VacancyGetManyModelResponse {
  String get message => throw _privateConstructorUsedError;
  VacancyGetManyModelData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VacancyGetManyModelResponseCopyWith<VacancyGetManyModelResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacancyGetManyModelResponseCopyWith<$Res> {
  factory $VacancyGetManyModelResponseCopyWith(
          VacancyGetManyModelResponse value,
          $Res Function(VacancyGetManyModelResponse) then) =
      _$VacancyGetManyModelResponseCopyWithImpl<$Res,
          VacancyGetManyModelResponse>;
  @useResult
  $Res call({String message, VacancyGetManyModelData data});

  $VacancyGetManyModelDataCopyWith<$Res> get data;
}

/// @nodoc
class _$VacancyGetManyModelResponseCopyWithImpl<$Res,
        $Val extends VacancyGetManyModelResponse>
    implements $VacancyGetManyModelResponseCopyWith<$Res> {
  _$VacancyGetManyModelResponseCopyWithImpl(this._value, this._then);

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
              as VacancyGetManyModelData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VacancyGetManyModelDataCopyWith<$Res> get data {
    return $VacancyGetManyModelDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VacancyGetManyModelResponseImplCopyWith<$Res>
    implements $VacancyGetManyModelResponseCopyWith<$Res> {
  factory _$$VacancyGetManyModelResponseImplCopyWith(
          _$VacancyGetManyModelResponseImpl value,
          $Res Function(_$VacancyGetManyModelResponseImpl) then) =
      __$$VacancyGetManyModelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, VacancyGetManyModelData data});

  @override
  $VacancyGetManyModelDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$VacancyGetManyModelResponseImplCopyWithImpl<$Res>
    extends _$VacancyGetManyModelResponseCopyWithImpl<$Res,
        _$VacancyGetManyModelResponseImpl>
    implements _$$VacancyGetManyModelResponseImplCopyWith<$Res> {
  __$$VacancyGetManyModelResponseImplCopyWithImpl(
      _$VacancyGetManyModelResponseImpl _value,
      $Res Function(_$VacancyGetManyModelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$VacancyGetManyModelResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VacancyGetManyModelData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VacancyGetManyModelResponseImpl
    implements _VacancyGetManyModelResponse {
  const _$VacancyGetManyModelResponseImpl(
      {required this.message, required this.data});

  factory _$VacancyGetManyModelResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VacancyGetManyModelResponseImplFromJson(json);

  @override
  final String message;
  @override
  final VacancyGetManyModelData data;

  @override
  String toString() {
    return 'VacancyGetManyModelResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VacancyGetManyModelResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VacancyGetManyModelResponseImplCopyWith<_$VacancyGetManyModelResponseImpl>
      get copyWith => __$$VacancyGetManyModelResponseImplCopyWithImpl<
          _$VacancyGetManyModelResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VacancyGetManyModelResponseImplToJson(
      this,
    );
  }
}

abstract class _VacancyGetManyModelResponse
    implements VacancyGetManyModelResponse {
  const factory _VacancyGetManyModelResponse(
          {required final String message,
          required final VacancyGetManyModelData data}) =
      _$VacancyGetManyModelResponseImpl;

  factory _VacancyGetManyModelResponse.fromJson(Map<String, dynamic> json) =
      _$VacancyGetManyModelResponseImpl.fromJson;

  @override
  String get message;
  @override
  VacancyGetManyModelData get data;
  @override
  @JsonKey(ignore: true)
  _$$VacancyGetManyModelResponseImplCopyWith<_$VacancyGetManyModelResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VacancyGetManyModelData _$VacancyGetManyModelDataFromJson(
    Map<String, dynamic> json) {
  return _VacancyGetManyModelData.fromJson(json);
}

/// @nodoc
mixin _$VacancyGetManyModelData {
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  List<VacancyModel> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String get lastPageUrl => throw _privateConstructorUsedError;
  List<LinkModel> get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VacancyGetManyModelDataCopyWith<VacancyGetManyModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VacancyGetManyModelDataCopyWith<$Res> {
  factory $VacancyGetManyModelDataCopyWith(VacancyGetManyModelData value,
          $Res Function(VacancyGetManyModelData) then) =
      _$VacancyGetManyModelDataCopyWithImpl<$Res, VacancyGetManyModelData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      List<VacancyModel> data,
      @JsonKey(name: 'first_page_url') String firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int lastPage,
      @JsonKey(name: 'last_page_url') String lastPageUrl,
      List<LinkModel> links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String path,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int total});
}

/// @nodoc
class _$VacancyGetManyModelDataCopyWithImpl<$Res,
        $Val extends VacancyGetManyModelData>
    implements $VacancyGetManyModelDataCopyWith<$Res> {
  _$VacancyGetManyModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? firstPageUrl = null,
    Object? from = freezed,
    Object? lastPage = null,
    Object? lastPageUrl = null,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = null,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<VacancyModel>,
      firstPageUrl: null == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: null == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkModel>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VacancyGetManyModelDataImplCopyWith<$Res>
    implements $VacancyGetManyModelDataCopyWith<$Res> {
  factory _$$VacancyGetManyModelDataImplCopyWith(
          _$VacancyGetManyModelDataImpl value,
          $Res Function(_$VacancyGetManyModelDataImpl) then) =
      __$$VacancyGetManyModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      List<VacancyModel> data,
      @JsonKey(name: 'first_page_url') String firstPageUrl,
      int? from,
      @JsonKey(name: 'last_page') int lastPage,
      @JsonKey(name: 'last_page_url') String lastPageUrl,
      List<LinkModel> links,
      @JsonKey(name: 'next_page_url') String? nextPageUrl,
      String path,
      @JsonKey(name: 'per_page') int perPage,
      @JsonKey(name: 'prev_page_url') String? prevPageUrl,
      int? to,
      int total});
}

/// @nodoc
class __$$VacancyGetManyModelDataImplCopyWithImpl<$Res>
    extends _$VacancyGetManyModelDataCopyWithImpl<$Res,
        _$VacancyGetManyModelDataImpl>
    implements _$$VacancyGetManyModelDataImplCopyWith<$Res> {
  __$$VacancyGetManyModelDataImplCopyWithImpl(
      _$VacancyGetManyModelDataImpl _value,
      $Res Function(_$VacancyGetManyModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
    Object? firstPageUrl = null,
    Object? from = freezed,
    Object? lastPage = null,
    Object? lastPageUrl = null,
    Object? links = null,
    Object? nextPageUrl = freezed,
    Object? path = null,
    Object? perPage = null,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = null,
  }) {
    return _then(_$VacancyGetManyModelDataImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<VacancyModel>,
      firstPageUrl: null == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      lastPageUrl: null == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkModel>,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VacancyGetManyModelDataImpl implements _VacancyGetManyModelData {
  const _$VacancyGetManyModelDataImpl(
      {@JsonKey(name: 'current_page') required this.currentPage,
      required final List<VacancyModel> data,
      @JsonKey(name: 'first_page_url') required this.firstPageUrl,
      required this.from,
      @JsonKey(name: 'last_page') required this.lastPage,
      @JsonKey(name: 'last_page_url') required this.lastPageUrl,
      required final List<LinkModel> links,
      @JsonKey(name: 'next_page_url') this.nextPageUrl,
      required this.path,
      @JsonKey(name: 'per_page') required this.perPage,
      @JsonKey(name: 'prev_page_url') this.prevPageUrl,
      required this.to,
      required this.total})
      : _data = data,
        _links = links;

  factory _$VacancyGetManyModelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VacancyGetManyModelDataImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  final List<VacancyModel> _data;
  @override
  List<VacancyModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'first_page_url')
  final String firstPageUrl;
  @override
  final int? from;
  @override
  @JsonKey(name: 'last_page')
  final int lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  final String lastPageUrl;
  final List<LinkModel> _links;
  @override
  List<LinkModel> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  final String path;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  @override
  final int? to;
  @override
  final int total;

  @override
  String toString() {
    return 'VacancyGetManyModelData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VacancyGetManyModelDataImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VacancyGetManyModelDataImplCopyWith<_$VacancyGetManyModelDataImpl>
      get copyWith => __$$VacancyGetManyModelDataImplCopyWithImpl<
          _$VacancyGetManyModelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VacancyGetManyModelDataImplToJson(
      this,
    );
  }
}

abstract class _VacancyGetManyModelData implements VacancyGetManyModelData {
  const factory _VacancyGetManyModelData(
      {@JsonKey(name: 'current_page') required final int currentPage,
      required final List<VacancyModel> data,
      @JsonKey(name: 'first_page_url') required final String firstPageUrl,
      required final int? from,
      @JsonKey(name: 'last_page') required final int lastPage,
      @JsonKey(name: 'last_page_url') required final String lastPageUrl,
      required final List<LinkModel> links,
      @JsonKey(name: 'next_page_url') final String? nextPageUrl,
      required final String path,
      @JsonKey(name: 'per_page') required final int perPage,
      @JsonKey(name: 'prev_page_url') final String? prevPageUrl,
      required final int? to,
      required final int total}) = _$VacancyGetManyModelDataImpl;

  factory _VacancyGetManyModelData.fromJson(Map<String, dynamic> json) =
      _$VacancyGetManyModelDataImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  List<VacancyModel> get data;
  @override
  @JsonKey(name: 'first_page_url')
  String get firstPageUrl;
  @override
  int? get from;
  @override
  @JsonKey(name: 'last_page')
  int get lastPage;
  @override
  @JsonKey(name: 'last_page_url')
  String get lastPageUrl;
  @override
  List<LinkModel> get links;
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @override
  String get path;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  @JsonKey(name: 'prev_page_url')
  String? get prevPageUrl;
  @override
  int? get to;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$VacancyGetManyModelDataImplCopyWith<_$VacancyGetManyModelDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
