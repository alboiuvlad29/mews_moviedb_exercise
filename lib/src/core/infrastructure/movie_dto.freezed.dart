// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDTO _$MovieDTOFromJson(Map<String, dynamic> json) {
  return _MovieDTO.fromJson(json);
}

/// @nodoc
class _$MovieDTOTearOff {
  const _$MovieDTOTearOff();

  _MovieDTO call(
      {required int id,
      required String title,
      @CustomDateTimeConverter() DateTime? releaseDate,
      String? tagline,
      String? posterPath,
      String? backdropPath,
      String? overview,
      int? runtime,
      List<GenreDTO> genres = const <GenreDTO>[]}) {
    return _MovieDTO(
      id: id,
      title: title,
      releaseDate: releaseDate,
      tagline: tagline,
      posterPath: posterPath,
      backdropPath: backdropPath,
      overview: overview,
      runtime: runtime,
      genres: genres,
    );
  }

  MovieDTO fromJson(Map<String, Object?> json) {
    return MovieDTO.fromJson(json);
  }
}

/// @nodoc
const $MovieDTO = _$MovieDTOTearOff();

/// @nodoc
mixin _$MovieDTO {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @CustomDateTimeConverter()
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  String? get posterPath => throw _privateConstructorUsedError;
  String? get backdropPath => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  List<GenreDTO> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDTOCopyWith<MovieDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDTOCopyWith<$Res> {
  factory $MovieDTOCopyWith(MovieDTO value, $Res Function(MovieDTO) then) =
      _$MovieDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      @CustomDateTimeConverter() DateTime? releaseDate,
      String? tagline,
      String? posterPath,
      String? backdropPath,
      String? overview,
      int? runtime,
      List<GenreDTO> genres});
}

/// @nodoc
class _$MovieDTOCopyWithImpl<$Res> implements $MovieDTOCopyWith<$Res> {
  _$MovieDTOCopyWithImpl(this._value, this._then);

  final MovieDTO _value;
  // ignore: unused_field
  final $Res Function(MovieDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? releaseDate = freezed,
    Object? tagline = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? overview = freezed,
    Object? runtime = freezed,
    Object? genres = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreDTO>,
    ));
  }
}

/// @nodoc
abstract class _$MovieDTOCopyWith<$Res> implements $MovieDTOCopyWith<$Res> {
  factory _$MovieDTOCopyWith(_MovieDTO value, $Res Function(_MovieDTO) then) =
      __$MovieDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      @CustomDateTimeConverter() DateTime? releaseDate,
      String? tagline,
      String? posterPath,
      String? backdropPath,
      String? overview,
      int? runtime,
      List<GenreDTO> genres});
}

/// @nodoc
class __$MovieDTOCopyWithImpl<$Res> extends _$MovieDTOCopyWithImpl<$Res>
    implements _$MovieDTOCopyWith<$Res> {
  __$MovieDTOCopyWithImpl(_MovieDTO _value, $Res Function(_MovieDTO) _then)
      : super(_value, (v) => _then(v as _MovieDTO));

  @override
  _MovieDTO get _value => super._value as _MovieDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? releaseDate = freezed,
    Object? tagline = freezed,
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? overview = freezed,
    Object? runtime = freezed,
    Object? genres = freezed,
  }) {
    return _then(_MovieDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDTO extends _MovieDTO {
  const _$_MovieDTO(
      {required this.id,
      required this.title,
      @CustomDateTimeConverter() this.releaseDate,
      this.tagline,
      this.posterPath,
      this.backdropPath,
      this.overview,
      this.runtime,
      this.genres = const <GenreDTO>[]})
      : super._();

  factory _$_MovieDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDTOFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @CustomDateTimeConverter()
  final DateTime? releaseDate;
  @override
  final String? tagline;
  @override
  final String? posterPath;
  @override
  final String? backdropPath;
  @override
  final String? overview;
  @override
  final int? runtime;
  @JsonKey()
  @override
  final List<GenreDTO> genres;

  @override
  String toString() {
    return 'MovieDTO(id: $id, title: $title, releaseDate: $releaseDate, tagline: $tagline, posterPath: $posterPath, backdropPath: $backdropPath, overview: $overview, runtime: $runtime, genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.tagline, tagline) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality().equals(other.runtime, runtime) &&
            const DeepCollectionEquality().equals(other.genres, genres));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(tagline),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(runtime),
      const DeepCollectionEquality().hash(genres));

  @JsonKey(ignore: true)
  @override
  _$MovieDTOCopyWith<_MovieDTO> get copyWith =>
      __$MovieDTOCopyWithImpl<_MovieDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDTOToJson(this);
  }
}

abstract class _MovieDTO extends MovieDTO {
  const factory _MovieDTO(
      {required int id,
      required String title,
      @CustomDateTimeConverter() DateTime? releaseDate,
      String? tagline,
      String? posterPath,
      String? backdropPath,
      String? overview,
      int? runtime,
      List<GenreDTO> genres}) = _$_MovieDTO;
  const _MovieDTO._() : super._();

  factory _MovieDTO.fromJson(Map<String, dynamic> json) = _$_MovieDTO.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @CustomDateTimeConverter()
  DateTime? get releaseDate;
  @override
  String? get tagline;
  @override
  String? get posterPath;
  @override
  String? get backdropPath;
  @override
  String? get overview;
  @override
  int? get runtime;
  @override
  List<GenreDTO> get genres;
  @override
  @JsonKey(ignore: true)
  _$MovieDTOCopyWith<_MovieDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
