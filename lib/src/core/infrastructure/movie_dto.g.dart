// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDTO _$$_MovieDTOFromJson(Map<String, dynamic> json) => _$_MovieDTO(
      id: json['id'] as int,
      title: json['title'] as String,
      releaseDate: const CustomDateTimeConverter()
          .fromJson(json['release_date'] as String?),
      tagline: json['tagline'] as String?,
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      overview: json['overview'] as String?,
      runtime: json['runtime'] as int?,
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => GenreDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GenreDTO>[],
    );

Map<String, dynamic> _$$_MovieDTOToJson(_$_MovieDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'release_date':
          const CustomDateTimeConverter().toJson(instance.releaseDate),
      'tagline': instance.tagline,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'overview': instance.overview,
      'runtime': instance.runtime,
      'genres': instance.genres,
    };
