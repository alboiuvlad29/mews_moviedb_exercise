// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_featured_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MoviesFeaturedStateTearOff {
  const _$MoviesFeaturedStateTearOff();

  _MoviesFeaturedState call(
      {List<Movie> popularMovies = const <Movie>[],
      List<Movie> nowPlayingMovies = const <Movie>[],
      List<Movie> upcomingMovies = const <Movie>[],
      List<Movie> topRatedMovies = const <Movie>[]}) {
    return _MoviesFeaturedState(
      popularMovies: popularMovies,
      nowPlayingMovies: nowPlayingMovies,
      upcomingMovies: upcomingMovies,
      topRatedMovies: topRatedMovies,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error(NetworkFailure error) {
    return _Error(
      error,
    );
  }
}

/// @nodoc
const $MoviesFeaturedState = _$MoviesFeaturedStateTearOff();

/// @nodoc
mixin _$MoviesFeaturedState {
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
    TResult Function(_MoviesFeaturedState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MoviesFeaturedState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MoviesFeaturedState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesFeaturedStateCopyWith<$Res> {
  factory $MoviesFeaturedStateCopyWith(
          MoviesFeaturedState value, $Res Function(MoviesFeaturedState) then) =
      _$MoviesFeaturedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesFeaturedStateCopyWithImpl<$Res>
    implements $MoviesFeaturedStateCopyWith<$Res> {
  _$MoviesFeaturedStateCopyWithImpl(this._value, this._then);

  final MoviesFeaturedState _value;
  // ignore: unused_field
  final $Res Function(MoviesFeaturedState) _then;
}

/// @nodoc
abstract class _$MoviesFeaturedStateCopyWith<$Res> {
  factory _$MoviesFeaturedStateCopyWith(_MoviesFeaturedState value,
          $Res Function(_MoviesFeaturedState) then) =
      __$MoviesFeaturedStateCopyWithImpl<$Res>;
  $Res call(
      {List<Movie> popularMovies,
      List<Movie> nowPlayingMovies,
      List<Movie> upcomingMovies,
      List<Movie> topRatedMovies});
}

/// @nodoc
class __$MoviesFeaturedStateCopyWithImpl<$Res>
    extends _$MoviesFeaturedStateCopyWithImpl<$Res>
    implements _$MoviesFeaturedStateCopyWith<$Res> {
  __$MoviesFeaturedStateCopyWithImpl(
      _MoviesFeaturedState _value, $Res Function(_MoviesFeaturedState) _then)
      : super(_value, (v) => _then(v as _MoviesFeaturedState));

  @override
  _MoviesFeaturedState get _value => super._value as _MoviesFeaturedState;

  @override
  $Res call({
    Object? popularMovies = freezed,
    Object? nowPlayingMovies = freezed,
    Object? upcomingMovies = freezed,
    Object? topRatedMovies = freezed,
  }) {
    return _then(_MoviesFeaturedState(
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

class _$_MoviesFeaturedState implements _MoviesFeaturedState {
  const _$_MoviesFeaturedState(
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
    return 'MoviesFeaturedState(popularMovies: $popularMovies, nowPlayingMovies: $nowPlayingMovies, upcomingMovies: $upcomingMovies, topRatedMovies: $topRatedMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoviesFeaturedState &&
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
  _$MoviesFeaturedStateCopyWith<_MoviesFeaturedState> get copyWith =>
      __$MoviesFeaturedStateCopyWithImpl<_MoviesFeaturedState>(
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
    TResult Function(_MoviesFeaturedState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MoviesFeaturedState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MoviesFeaturedState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _MoviesFeaturedState implements MoviesFeaturedState {
  const factory _MoviesFeaturedState(
      {List<Movie> popularMovies,
      List<Movie> nowPlayingMovies,
      List<Movie> upcomingMovies,
      List<Movie> topRatedMovies}) = _$_MoviesFeaturedState;

  List<Movie> get popularMovies;
  List<Movie> get nowPlayingMovies;
  List<Movie> get upcomingMovies;
  List<Movie> get topRatedMovies;
  @JsonKey(ignore: true)
  _$MoviesFeaturedStateCopyWith<_MoviesFeaturedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$MoviesFeaturedStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MoviesFeaturedState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
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
    TResult Function(_MoviesFeaturedState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MoviesFeaturedState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MoviesFeaturedState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MoviesFeaturedState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({NetworkFailure error});

  $NetworkFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$MoviesFeaturedStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
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

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final NetworkFailure error;

  @override
  String toString() {
    return 'MoviesFeaturedState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

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
    TResult Function(_MoviesFeaturedState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MoviesFeaturedState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MoviesFeaturedState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MoviesFeaturedState {
  const factory _Error(NetworkFailure error) = _$_Error;

  NetworkFailure get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
