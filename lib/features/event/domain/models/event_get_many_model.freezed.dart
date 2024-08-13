// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_get_many_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventGetManyModelResponse _$EventGetManyModelResponseFromJson(
    Map<String, dynamic> json) {
  return _EventGetManyModelResponse.fromJson(json);
}

/// @nodoc
mixin _$EventGetManyModelResponse {
  String get message => throw _privateConstructorUsedError;
  EventGetManyModelData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventGetManyModelResponseCopyWith<EventGetManyModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventGetManyModelResponseCopyWith<$Res> {
  factory $EventGetManyModelResponseCopyWith(EventGetManyModelResponse value,
          $Res Function(EventGetManyModelResponse) then) =
      _$EventGetManyModelResponseCopyWithImpl<$Res, EventGetManyModelResponse>;
  @useResult
  $Res call({String message, EventGetManyModelData data});

  $EventGetManyModelDataCopyWith<$Res> get data;
}

/// @nodoc
class _$EventGetManyModelResponseCopyWithImpl<$Res,
        $Val extends EventGetManyModelResponse>
    implements $EventGetManyModelResponseCopyWith<$Res> {
  _$EventGetManyModelResponseCopyWithImpl(this._value, this._then);

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
              as EventGetManyModelData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventGetManyModelDataCopyWith<$Res> get data {
    return $EventGetManyModelDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventGetManyModelResponseImplCopyWith<$Res>
    implements $EventGetManyModelResponseCopyWith<$Res> {
  factory _$$EventGetManyModelResponseImplCopyWith(
          _$EventGetManyModelResponseImpl value,
          $Res Function(_$EventGetManyModelResponseImpl) then) =
      __$$EventGetManyModelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, EventGetManyModelData data});

  @override
  $EventGetManyModelDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$EventGetManyModelResponseImplCopyWithImpl<$Res>
    extends _$EventGetManyModelResponseCopyWithImpl<$Res,
        _$EventGetManyModelResponseImpl>
    implements _$$EventGetManyModelResponseImplCopyWith<$Res> {
  __$$EventGetManyModelResponseImplCopyWithImpl(
      _$EventGetManyModelResponseImpl _value,
      $Res Function(_$EventGetManyModelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$EventGetManyModelResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EventGetManyModelData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventGetManyModelResponseImpl implements _EventGetManyModelResponse {
  const _$EventGetManyModelResponseImpl(
      {required this.message, required this.data});

  factory _$EventGetManyModelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventGetManyModelResponseImplFromJson(json);

  @override
  final String message;
  @override
  final EventGetManyModelData data;

  @override
  String toString() {
    return 'EventGetManyModelResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventGetManyModelResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventGetManyModelResponseImplCopyWith<_$EventGetManyModelResponseImpl>
      get copyWith => __$$EventGetManyModelResponseImplCopyWithImpl<
          _$EventGetManyModelResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventGetManyModelResponseImplToJson(
      this,
    );
  }
}

abstract class _EventGetManyModelResponse implements EventGetManyModelResponse {
  const factory _EventGetManyModelResponse(
          {required final String message,
          required final EventGetManyModelData data}) =
      _$EventGetManyModelResponseImpl;

  factory _EventGetManyModelResponse.fromJson(Map<String, dynamic> json) =
      _$EventGetManyModelResponseImpl.fromJson;

  @override
  String get message;
  @override
  EventGetManyModelData get data;
  @override
  @JsonKey(ignore: true)
  _$$EventGetManyModelResponseImplCopyWith<_$EventGetManyModelResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EventGetManyModelData _$EventGetManyModelDataFromJson(
    Map<String, dynamic> json) {
  return _EventGetManyModelData.fromJson(json);
}

/// @nodoc
mixin _$EventGetManyModelData {
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  List<EventModel> get data => throw _privateConstructorUsedError;
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
  $EventGetManyModelDataCopyWith<EventGetManyModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventGetManyModelDataCopyWith<$Res> {
  factory $EventGetManyModelDataCopyWith(EventGetManyModelData value,
          $Res Function(EventGetManyModelData) then) =
      _$EventGetManyModelDataCopyWithImpl<$Res, EventGetManyModelData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      List<EventModel> data,
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
class _$EventGetManyModelDataCopyWithImpl<$Res,
        $Val extends EventGetManyModelData>
    implements $EventGetManyModelDataCopyWith<$Res> {
  _$EventGetManyModelDataCopyWithImpl(this._value, this._then);

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
              as List<EventModel>,
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
abstract class _$$EventGetManyModelDataImplCopyWith<$Res>
    implements $EventGetManyModelDataCopyWith<$Res> {
  factory _$$EventGetManyModelDataImplCopyWith(
          _$EventGetManyModelDataImpl value,
          $Res Function(_$EventGetManyModelDataImpl) then) =
      __$$EventGetManyModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      List<EventModel> data,
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
class __$$EventGetManyModelDataImplCopyWithImpl<$Res>
    extends _$EventGetManyModelDataCopyWithImpl<$Res,
        _$EventGetManyModelDataImpl>
    implements _$$EventGetManyModelDataImplCopyWith<$Res> {
  __$$EventGetManyModelDataImplCopyWithImpl(_$EventGetManyModelDataImpl _value,
      $Res Function(_$EventGetManyModelDataImpl) _then)
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
    return _then(_$EventGetManyModelDataImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
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
class _$EventGetManyModelDataImpl implements _EventGetManyModelData {
  const _$EventGetManyModelDataImpl(
      {@JsonKey(name: 'current_page') required this.currentPage,
      required final List<EventModel> data,
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

  factory _$EventGetManyModelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventGetManyModelDataImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  final List<EventModel> _data;
  @override
  List<EventModel> get data {
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
    return 'EventGetManyModelData(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventGetManyModelDataImpl &&
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
  _$$EventGetManyModelDataImplCopyWith<_$EventGetManyModelDataImpl>
      get copyWith => __$$EventGetManyModelDataImplCopyWithImpl<
          _$EventGetManyModelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventGetManyModelDataImplToJson(
      this,
    );
  }
}

abstract class _EventGetManyModelData implements EventGetManyModelData {
  const factory _EventGetManyModelData(
      {@JsonKey(name: 'current_page') required final int currentPage,
      required final List<EventModel> data,
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
      required final int total}) = _$EventGetManyModelDataImpl;

  factory _EventGetManyModelData.fromJson(Map<String, dynamic> json) =
      _$EventGetManyModelDataImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  List<EventModel> get data;
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
  _$$EventGetManyModelDataImplCopyWith<_$EventGetManyModelDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
