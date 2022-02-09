// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MoviesSearchStateTearOff {
  const _$MoviesSearchStateTearOff();

  _MoviesSearchState call(
      {List<Movie> popularMovies = const <Movie>[],
      List<Movie> nowPlayingMovies = const <Movie>[],
      List<Movie> upcomingMovies = const <Movie>[],
      List<Movie> topRatedMovies = const <Movie>[]}) {
    return _MoviesSearchState(
      popularMovies: popularMovies,
      nowPlayingMovies: nowPlayingMovies,
      upcomingMovies: upcomingMovies,
      topRatedMovies: topRatedMovies,
    );
  }

  _MoviesSearchStateLoading loading() {
    return const _MoviesSearchStateLoading();
  }

  _MoviesSearchStateError error(NetworkFailure error) {
    return _MoviesSearchStateError(
      error,
    );
  }
}

/// @nodoc
const $MoviesSearchState = _$MoviesSearchStateTearOff();

/// @nodoc
mixin _$MoviesSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Movie> popularMovies, List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies, List<Movie> topRatedMovies)
        $default, {
    required TResult Function() loading,
    required TResult Function(NetworkFailure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Movie> popularMovies, List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies, List<Movie> topRatedMovies)?
        $default, {
    TResult Function()? loading,
    TResult Function(NetworkFailure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Movie> popularMovies, List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies, List<Movie> topRatedMovies)?
        $default, {
    TResult Function()? loading,
    TResult Function(NetworkFailure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MoviesSearchState value) $default, {
    required TResult Function(_MoviesSearchStateLoading value) loading,
    required TResult Function(_MoviesSearchStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MoviesSearchState value)? $default, {
    TResult Function(_MoviesSearchStateLoading value)? loading,
    TResult Function(_MoviesSearchStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MoviesSearchState value)? $default, {
    TResult Function(_MoviesSearchStateLoading value)? loading,
    TResult Function(_MoviesSearchStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesSearchStateCopyWith<$Res> {
  factory $MoviesSearchStateCopyWith(
          MoviesSearchState value, $Res Function(MoviesSearchState) then) =
      _$MoviesSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesSearchStateCopyWithImpl<$Res>
    implements $MoviesSearchStateCopyWith<$Res> {
  _$MoviesSearchStateCopyWithImpl(this._value, this._then);

  final MoviesSearchState _value;
  // ignore: unused_field
  final $Res Function(MoviesSearchState) _then;
}

/// @nodoc
abstract class _$MoviesSearchStateCopyWith<$Res> {
  factory _$MoviesSearchStateCopyWith(
          _MoviesSearchState value, $Res Function(_MoviesSearchState) then) =
      __$MoviesSearchStateCopyWithImpl<$Res>;
  $Res call(
      {List<Movie> popularMovies,
      List<Movie> nowPlayingMovies,
      List<Movie> upcomingMovies,
      List<Movie> topRatedMovies});
}

/// @nodoc
class __$MoviesSearchStateCopyWithImpl<$Res>
    extends _$MoviesSearchStateCopyWithImpl<$Res>
    implements _$MoviesSearchStateCopyWith<$Res> {
  __$MoviesSearchStateCopyWithImpl(
      _MoviesSearchState _value, $Res Function(_MoviesSearchState) _then)
      : super(_value, (v) => _then(v as _MoviesSearchState));

  @override
  _MoviesSearchState get _value => super._value as _MoviesSearchState;

  @override
  $Res call({
    Object? popularMovies = freezed,
    Object? nowPlayingMovies = freezed,
    Object? upcomingMovies = freezed,
    Object? topRatedMovies = freezed,
  }) {
    return _then(_MoviesSearchState(
      popularMovies: popularMovies == freezed
          ? _value.popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      nowPlayingMovies: nowPlayingMovies == freezed
          ? _value.nowPlayingMovies
          : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      upcomingMovies: upcomingMovies == freezed
          ? _value.upcomingMovies
          : upcomingMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      topRatedMovies: topRatedMovies == freezed
          ? _value.topRatedMovies
          : topRatedMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$_MoviesSearchState implements _MoviesSearchState {
  const _$_MoviesSearchState(
      {this.popularMovies = const <Movie>[],
      this.nowPlayingMovies = const <Movie>[],
      this.upcomingMovies = const <Movie>[],
      this.topRatedMovies = const <Movie>[]});

  @JsonKey()
  @override
  final List<Movie> popularMovies;
  @JsonKey()
  @override
  final List<Movie> nowPlayingMovies;
  @JsonKey()
  @override
  final List<Movie> upcomingMovies;
  @JsonKey()
  @override
  final List<Movie> topRatedMovies;

  @override
  String toString() {
    return 'MoviesSearchState(popularMovies: $popularMovies, nowPlayingMovies: $nowPlayingMovies, upcomingMovies: $upcomingMovies, topRatedMovies: $topRatedMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoviesSearchState &&
            const DeepCollectionEquality()
                .equals(other.popularMovies, popularMovies) &&
            const DeepCollectionEquality()
                .equals(other.nowPlayingMovies, nowPlayingMovies) &&
            const DeepCollectionEquality()
                .equals(other.upcomingMovies, upcomingMovies) &&
            const DeepCollectionEquality()
                .equals(other.topRatedMovies, topRatedMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(popularMovies),
      const DeepCollectionEquality().hash(nowPlayingMovies),
      const DeepCollectionEquality().hash(upcomingMovies),
      const DeepCollectionEquality().hash(topRatedMovies));

  @JsonKey(ignore: true)
  @override
  _$MoviesSearchStateCopyWith<_MoviesSearchState> get copyWith =>
      __$MoviesSearchStateCopyWithImpl<_MoviesSearchState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Movie> popularMovies, List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies, List<Movie> topRatedMovies)
        $default, {
    required TResult Function() loading,
    required TResult Function(NetworkFailure error) error,
  }) {
    return $default(
        popularMovies, nowPlayingMovies, upcomingMovies, topRatedMovies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Movie> popularMovies, List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies, List<Movie> topRatedMovies)?
        $default, {
    TResult Function()? loading,
    TResult Function(NetworkFailure error)? error,
  }) {
    return $default?.call(
        popularMovies, nowPlayingMovies, upcomingMovies, topRatedMovies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Movie> popularMovies, List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies, List<Movie> topRatedMovies)?
        $default, {
    TResult Function()? loading,
    TResult Function(NetworkFailure error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          popularMovies, nowPlayingMovies, upcomingMovies, topRatedMovies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MoviesSearchState value) $default, {
    required TResult Function(_MoviesSearchStateLoading value) loading,
    required TResult Function(_MoviesSearchStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MoviesSearchState value)? $default, {
    TResult Function(_MoviesSearchStateLoading value)? loading,
    TResult Function(_MoviesSearchStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MoviesSearchState value)? $default, {
    TResult Function(_MoviesSearchStateLoading value)? loading,
    TResult Function(_MoviesSearchStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _MoviesSearchState implements MoviesSearchState {
  const factory _MoviesSearchState(
      {List<Movie> popularMovies,
      List<Movie> nowPlayingMovies,
      List<Movie> upcomingMovies,
      List<Movie> topRatedMovies}) = _$_MoviesSearchState;

  List<Movie> get popularMovies;
  List<Movie> get nowPlayingMovies;
  List<Movie> get upcomingMovies;
  List<Movie> get topRatedMovies;
  @JsonKey(ignore: true)
  _$MoviesSearchStateCopyWith<_MoviesSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MoviesSearchStateLoadingCopyWith<$Res> {
  factory _$MoviesSearchStateLoadingCopyWith(_MoviesSearchStateLoading value,
          $Res Function(_MoviesSearchStateLoading) then) =
      __$MoviesSearchStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$MoviesSearchStateLoadingCopyWithImpl<$Res>
    extends _$MoviesSearchStateCopyWithImpl<$Res>
    implements _$MoviesSearchStateLoadingCopyWith<$Res> {
  __$MoviesSearchStateLoadingCopyWithImpl(_MoviesSearchStateLoading _value,
      $Res Function(_MoviesSearchStateLoading) _then)
      : super(_value, (v) => _then(v as _MoviesSearchStateLoading));

  @override
  _MoviesSearchStateLoading get _value =>
      super._value as _MoviesSearchStateLoading;
}

/// @nodoc

class _$_MoviesSearchStateLoading implements _MoviesSearchStateLoading {
  const _$_MoviesSearchStateLoading();

  @override
  String toString() {
    return 'MoviesSearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoviesSearchStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Movie> popularMovies, List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies, List<Movie> topRatedMovies)
        $default, {
    required TResult Function() loading,
    required TResult Function(NetworkFailure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Movie> popularMovies, List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies, List<Movie> topRatedMovies)?
        $default, {
    TResult Function()? loading,
    TResult Function(NetworkFailure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Movie> popularMovies, List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies, List<Movie> topRatedMovies)?
        $default, {
    TResult Function()? loading,
    TResult Function(NetworkFailure error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MoviesSearchState value) $default, {
    required TResult Function(_MoviesSearchStateLoading value) loading,
    required TResult Function(_MoviesSearchStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MoviesSearchState value)? $default, {
    TResult Function(_MoviesSearchStateLoading value)? loading,
    TResult Function(_MoviesSearchStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MoviesSearchState value)? $default, {
    TResult Function(_MoviesSearchStateLoading value)? loading,
    TResult Function(_MoviesSearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MoviesSearchStateLoading implements MoviesSearchState {
  const factory _MoviesSearchStateLoading() = _$_MoviesSearchStateLoading;
}

/// @nodoc
abstract class _$MoviesSearchStateErrorCopyWith<$Res> {
  factory _$MoviesSearchStateErrorCopyWith(_MoviesSearchStateError value,
          $Res Function(_MoviesSearchStateError) then) =
      __$MoviesSearchStateErrorCopyWithImpl<$Res>;
  $Res call({NetworkFailure error});

  $NetworkFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$MoviesSearchStateErrorCopyWithImpl<$Res>
    extends _$MoviesSearchStateCopyWithImpl<$Res>
    implements _$MoviesSearchStateErrorCopyWith<$Res> {
  __$MoviesSearchStateErrorCopyWithImpl(_MoviesSearchStateError _value,
      $Res Function(_MoviesSearchStateError) _then)
      : super(_value, (v) => _then(v as _MoviesSearchStateError));

  @override
  _MoviesSearchStateError get _value => super._value as _MoviesSearchStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_MoviesSearchStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkFailure,
    ));
  }

  @override
  $NetworkFailureCopyWith<$Res> get error {
    return $NetworkFailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_MoviesSearchStateError implements _MoviesSearchStateError {
  const _$_MoviesSearchStateError(this.error);

  @override
  final NetworkFailure error;

  @override
  String toString() {
    return 'MoviesSearchState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoviesSearchStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$MoviesSearchStateErrorCopyWith<_MoviesSearchStateError> get copyWith =>
      __$MoviesSearchStateErrorCopyWithImpl<_MoviesSearchStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Movie> popularMovies, List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies, List<Movie> topRatedMovies)
        $default, {
    required TResult Function() loading,
    required TResult Function(NetworkFailure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Movie> popularMovies, List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies, List<Movie> topRatedMovies)?
        $default, {
    TResult Function()? loading,
    TResult Function(NetworkFailure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Movie> popularMovies, List<Movie> nowPlayingMovies,
            List<Movie> upcomingMovies, List<Movie> topRatedMovies)?
        $default, {
    TResult Function()? loading,
    TResult Function(NetworkFailure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MoviesSearchState value) $default, {
    required TResult Function(_MoviesSearchStateLoading value) loading,
    required TResult Function(_MoviesSearchStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MoviesSearchState value)? $default, {
    TResult Function(_MoviesSearchStateLoading value)? loading,
    TResult Function(_MoviesSearchStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MoviesSearchState value)? $default, {
    TResult Function(_MoviesSearchStateLoading value)? loading,
    TResult Function(_MoviesSearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _MoviesSearchStateError implements MoviesSearchState {
  const factory _MoviesSearchStateError(NetworkFailure error) =
      _$_MoviesSearchStateError;

  NetworkFailure get error;
  @JsonKey(ignore: true)
  _$MoviesSearchStateErrorCopyWith<_MoviesSearchStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
