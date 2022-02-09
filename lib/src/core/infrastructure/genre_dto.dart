import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mews_moviedb_exercise/src/core/domain/genre.dart';

part 'genre_dto.freezed.dart';
part 'genre_dto.g.dart';

@freezed
class GenreDTO with _$GenreDTO {
  const factory GenreDTO({
    required int id,
    required String name,
  }) = _GenreDTO;
  const GenreDTO._();
  factory GenreDTO.fromJson(Map<String, dynamic> json) =>
      _$GenreDTOFromJson(json);

  Genre toDomain() => Genre(id: id, name: name);
}
