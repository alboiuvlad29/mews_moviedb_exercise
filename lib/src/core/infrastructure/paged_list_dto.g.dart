// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedListDTO<T> _$PagedListDTOFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PagedListDTO<T>(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$PagedListDTOToJson<T>(
  PagedListDTO<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results.map(toJsonT).toList(),
    };
