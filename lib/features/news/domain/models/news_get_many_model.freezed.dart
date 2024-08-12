// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_get_many_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsGetManyModelResponse _$NewsGetManyModelResponseFromJson(
    Map<String, dynamic> json) {
  return _NewsGetManyModelResponse.fromJson(json);
}

/// @nodoc
mixin _$NewsGetManyModelResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  NewsGetManyModelData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsGetManyModelResponseCopyWith<NewsGetManyModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsGetManyModelResponseCopyWith<$Res> {
  factory $NewsGetManyModelResponseCopyWith(NewsGetManyModelResponse value,
          $Res Function(NewsGetManyModelResponse) then) =
      _$NewsGetManyModelResponseCopyWithImpl<$Res, NewsGetManyModelResponse>;
  @useResult
  $Res call({bool success, String message, NewsGetManyModelData data});

  $NewsGetManyModelDataCopyWith<$Res> get data;
}

/// @nodoc
class _$NewsGetManyModelResponseCopyWithImpl<$Res,
        $Val extends NewsGetManyModelResponse>
    implements $NewsGetManyModelResponseCopyWith<$Res> {
  _$NewsGetManyModelResponseCopyWithImpl(this._value, this._then);

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
              as NewsGetManyModelData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsGetManyModelDataCopyWith<$Res> get data {
    return $NewsGetManyModelDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsGetManyModelResponseImplCopyWith<$Res>
    implements $NewsGetManyModelResponseCopyWith<$Res> {
  factory _$$NewsGetManyModelResponseImplCopyWith(
          _$NewsGetManyModelResponseImpl value,
          $Res Function(_$NewsGetManyModelResponseImpl) then) =
      __$$NewsGetManyModelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, NewsGetManyModelData data});

  @override
  $NewsGetManyModelDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$NewsGetManyModelResponseImplCopyWithImpl<$Res>
    extends _$NewsGetManyModelResponseCopyWithImpl<$Res,
        _$NewsGetManyModelResponseImpl>
    implements _$$NewsGetManyModelResponseImplCopyWith<$Res> {
  __$$NewsGetManyModelResponseImplCopyWithImpl(
      _$NewsGetManyModelResponseImpl _value,
      $Res Function(_$NewsGetManyModelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$NewsGetManyModelResponseImpl(
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
              as NewsGetManyModelData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsGetManyModelResponseImpl implements _NewsGetManyModelResponse {
  const _$NewsGetManyModelResponseImpl(
      {required this.success, required this.message, required this.data});

  factory _$NewsGetManyModelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsGetManyModelResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final NewsGetManyModelData data;

  @override
  String toString() {
    return 'NewsGetManyModelResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsGetManyModelResponseImpl &&
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
  _$$NewsGetManyModelResponseImplCopyWith<_$NewsGetManyModelResponseImpl>
      get copyWith => __$$NewsGetManyModelResponseImplCopyWithImpl<
          _$NewsGetManyModelResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsGetManyModelResponseImplToJson(
      this,
    );
  }
}

abstract class _NewsGetManyModelResponse implements NewsGetManyModelResponse {
  const factory _NewsGetManyModelResponse(
          {required final bool success,
          required final String message,
          required final NewsGetManyModelData data}) =
      _$NewsGetManyModelResponseImpl;

  factory _NewsGetManyModelResponse.fromJson(Map<String, dynamic> json) =
      _$NewsGetManyModelResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  NewsGetManyModelData get data;
  @override
  @JsonKey(ignore: true)
  _$$NewsGetManyModelResponseImplCopyWith<_$NewsGetManyModelResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NewsGetManyModelData _$NewsGetManyModelDataFromJson(Map<String, dynamic> json) {
  return _NewsGetManyModelData.fromJson(json);
}

/// @nodoc
mixin _$NewsGetManyModelData {
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  List<NewsModel> get data => throw _privateConstructorUsedError;
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
  $NewsGetManyModelDataCopyWith<NewsGetManyModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsGetManyModelDataCopyWith<$Res> {
  factory $NewsGetManyModelDataCopyWith(NewsGetManyModelData value,
          $Res Function(NewsGetManyModelData) then) =
      _$NewsGetManyModelDataCopyWithImpl<$Res, NewsGetManyModelData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      List<NewsModel> data,
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
class _$NewsGetManyModelDataCopyWithImpl<$Res,
        $Val extends NewsGetManyModelData>
    implements $NewsGetManyModelDataCopyWith<$Res> {
  _$NewsGetManyModelDataCopyWithImpl(this._value, this._then);

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
              as List<NewsModel>,
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
abstract class _$$NewsGetManyModelDataImplCopyWith<$Res>
    implements $NewsGetManyModelDataCopyWith<$Res> {
  factory _$$NewsGetManyModelDataImplCopyWith(_$NewsGetManyModelDataImpl value,
          $Res Function(_$NewsGetManyModelDataImpl) then) =
      __$$NewsGetManyModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      List<NewsModel> data,
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
class __$$NewsGetManyModelDataImplCopyWithImpl<$Res>
    extends _$NewsGetManyModelDataCopyWithImpl<$Res, _$NewsGetManyModelDataImpl>
    implements _$$NewsGetManyModelDataImplCopyWith<$Res> {
  __$$NewsGetManyModelDataImplCopyWithImpl(_$NewsGetManyModelDataImpl _value,
      $Res Function(_$NewsGetManyModelDataImpl) _then)
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
    return _then(_$NewsGetManyModelDataImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
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
class _$NewsGetManyModelDataImpl implements _NewsGetManyModelData {
  const _$NewsGetManyModelDataImpl(
      {@JsonKey(name: 'current_page') required this.currentPage,
      required final List<NewsModel> data,
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

  factory _$NewsGetManyModelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsGetManyModelDataImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  final List<NewsModel> _data;
  @override
  List<NewsModel> get data {
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
    return 'NewsGetManyModelData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsGetManyModelDataImpl &&
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
  _$$NewsGetManyModelDataImplCopyWith<_$NewsGetManyModelDataImpl>
      get copyWith =>
          __$$NewsGetManyModelDataImplCopyWithImpl<_$NewsGetManyModelDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsGetManyModelDataImplToJson(
      this,
    );
  }
}

abstract class _NewsGetManyModelData implements NewsGetManyModelData {
  const factory _NewsGetManyModelData(
      {@JsonKey(name: 'current_page') required final int currentPage,
      required final List<NewsModel> data,
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
      required final int total}) = _$NewsGetManyModelDataImpl;

  factory _NewsGetManyModelData.fromJson(Map<String, dynamic> json) =
      _$NewsGetManyModelDataImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  List<NewsModel> get data;
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
  _$$NewsGetManyModelDataImplCopyWith<_$NewsGetManyModelDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
