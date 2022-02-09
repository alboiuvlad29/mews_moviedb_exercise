import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mews_moviedb_exercise/src/core/domain/credits.dart';

import 'cast_dto.dart';

part 'credits_dto.freezed.dart';
part 'credits_dto.g.dart';

@freezed
class CreditsDTO with _$CreditsDTO {
  const factory CreditsDTO({
    required List<CastDTO> cast,
  }) = _CreditsDTO;
  const CreditsDTO._();
  factory CreditsDTO.fromJson(Map<String, dynamic> json) =>
      _$CreditsDTOFromJson(json);

  Credits toDomain() =>
      Credits(cast: cast.map((CastDTO e) => e.toDomain()).toList());
}
