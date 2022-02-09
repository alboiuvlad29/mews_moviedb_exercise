import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mews_moviedb_exercise/src/core/domain/movie.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/genre_dto.dart';

part 'movie_dto.freezed.dart';
part 'movie_dto.g.dart';

@freezed
class MovieDTO with _$MovieDTO {
  const factory MovieDTO({
    required int id,
    required String title,
    @CustomDateTimeConverter() DateTime? releaseDate,
    String? tagline,
    String? posterPath,
    String? backdropPath,
    String? overview,
    int? runtime,
    @Default(<GenreDTO>[]) List<GenreDTO> genres,
  }) = _MovieDTO;
  const MovieDTO._();
  factory MovieDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieDTOFromJson(json);

  Movie toDomain() => Movie(
        id: id,
        title: title,
        releaseDate: releaseDate,
        tagline: tagline,
        posterPath: posterPath,
        backdropPath: backdropPath,
        overview: overview,
        runtime: runtime,
        genres: genres.map((GenreDTO e) => e.toDomain()).toList(),
      );
}

class CustomDateTimeConverter implements JsonConverter<DateTime?, String?> {
  const CustomDateTimeConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json?.isEmpty ?? true) {
      return null;
    }

    return DateTime.tryParse(json!);
  }

  @override
  String? toJson(DateTime? json) => json?.toIso8601String();
}
