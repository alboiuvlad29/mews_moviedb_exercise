import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mews_moviedb_exercise/src/core/domain/cast.dart';

part 'cast_dto.freezed.dart';
part 'cast_dto.g.dart';

@freezed
class CastDTO with _$CastDTO {
  const factory CastDTO({
    required String name,
    required String character,
    String? profilePath,
  }) = _CastDTO;
  const CastDTO._();
  factory CastDTO.fromJson(Map<String, dynamic> json) =>
      _$CastDTOFromJson(json);

  Cast toDomain() => Cast(
        name: name,
        character: character,
        profilePath: profilePath,
      );
}
