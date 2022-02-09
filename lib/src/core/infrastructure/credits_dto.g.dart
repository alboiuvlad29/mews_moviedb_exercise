// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credits_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreditsDTO _$$_CreditsDTOFromJson(Map<String, dynamic> json) =>
    _$_CreditsDTO(
      cast: (json['cast'] as List<dynamic>)
          .map((e) => CastDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CreditsDTOToJson(_$_CreditsDTO instance) =>
    <String, dynamic>{
      'cast': instance.cast,
    };
