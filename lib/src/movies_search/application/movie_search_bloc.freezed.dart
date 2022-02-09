// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieSearchStateTearOff {
  const _$MovieSearchStateTearOff();

  _MovieSearchState call(
      {List<Movie> items = const <Movie>[],
      int pageSize = 0,
      int currentPage = 0,
      String query = '',
      bool loading = false,
      bool isLastPage = false,
      NetworkFailure? error}) {
    return _MovieSearchState(
      items: items,
      pageSize: pageSize,
      currentPage: currentPage,
      query: query,
      loading: loading,
      isLastPage: isLastPage,
      error: error,
    );
  }
}

/// @nodoc
const $MovieSearchState = _$MovieSearchStateTearOff();

/// @nodoc
mixin _$MovieSearchState {
  List<Movie> get items => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  NetworkFailure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieSearchStateCopyWith<MovieSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieSearchStateCopyWith<$Res> {
  factory $MovieSearchStateCopyWith(
          MovieSearchState value, $Res Function(MovieSearchState) then) =
      _$MovieSearchStateCopyWithImpl<$Res>;
  $Res call(
      {List<Movie> items,
      int pageSize,
      int currentPage,
      String query,
      bool loading,
      bool isLastPage,
      NetworkFailure? error});

  $NetworkFailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$MovieSearchStateCopyWithImpl<$Res>
    implements $MovieSearchStateCopyWith<$Res> {
  _$MovieSearchStateCopyWithImpl(this._value, this._then);

  final MovieSearchState _value;
  // ignore: unused_field
  final $Res Function(MovieSearchState) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? pageSize = freezed,
    Object? currentPage = freezed,
    Object? query = freezed,
    Object? loading = freezed,
    Object? isLastPage = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkFailure?,
    ));
  }

  @override
  $NetworkFailureCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $NetworkFailureCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$MovieSearchStateCopyWith<$Res>
    implements $MovieSearchStateCopyWith<$Res> {
  factory _$MovieSearchStateCopyWith(
          _MovieSearchState value, $Res Function(_MovieSearchState) then) =
      __$MovieSearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Movie> items,
      int pageSize,
      int currentPage,
      String query,
      bool loading,
      bool isLastPage,
      NetworkFailure? error});

  @override
  $NetworkFailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$MovieSearchStateCopyWithImpl<$Res>
    extends _$MovieSearchStateCopyWithImpl<$Res>
    implements _$MovieSearchStateCopyWith<$Res> {
  __$MovieSearchStateCopyWithImpl(
      _MovieSearchState _value, $Res Function(_MovieSearchState) _then)
      : super(_value, (v) => _then(v as _MovieSearchState));

  @override
  _MovieSearchState get _value => super._value as _MovieSearchState;

  @override
  $Res call({
    Object? items = freezed,
    Object? pageSize = freezed,
    Object? currentPage = freezed,
    Object? query = freezed,
    Object? loading = freezed,
    Object? isLastPage = freezed,
    Object? error = freezed,
  }) {
    return _then(_MovieSearchState(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkFailure?,
    ));
  }
}

/// @nodoc

class _$_MovieSearchState extends _MovieSearchState {
  const _$_MovieSearchState(
      {this.items = const <Movie>[],
      this.pageSize = 0,
      this.currentPage = 0,
      this.query = '',
      this.loading = false,
      this.isLastPage = false,
      this.error})
      : super._();

  @JsonKey()
  @override
  final List<Movie> items;
  @JsonKey()
  @override
  final int pageSize;
  @JsonKey()
  @override
  final int currentPage;
  @JsonKey()
  @override
  final String query;
  @JsonKey()
  @override
  final bool loading;
  @JsonKey()
  @override
  final bool isLastPage;
  @override
  final NetworkFailure? error;

  @override
  String toString() {
    return 'MovieSearchState(items: $items, pageSize: $pageSize, currentPage: $currentPage, query: $query, loading: $loading, isLastPage: $isLastPage, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieSearchState &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other.isLastPage, isLastPage) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(isLastPage),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$MovieSearchStateCopyWith<_MovieSearchState> get copyWith =>
      __$MovieSearchStateCopyWithImpl<_MovieSearchState>(this, _$identity);
}

abstract class _MovieSearchState extends MovieSearchState {
  const factory _MovieSearchState(
      {List<Movie> items,
      int pageSize,
      int currentPage,
      String query,
      bool loading,
      bool isLastPage,
      NetworkFailure? error}) = _$_MovieSearchState;
  const _MovieSearchState._() : super._();

  @override
  List<Movie> get items;
  @override
  int get pageSize;
  @override
  int get currentPage;
  @override
  String get query;
  @override
  bool get loading;
  @override
  bool get isLastPage;
  @override
  NetworkFailure? get error;
  @override
  @JsonKey(ignore: true)
  _$MovieSearchStateCopyWith<_MovieSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
