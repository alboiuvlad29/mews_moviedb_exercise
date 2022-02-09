import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paged_list_dto.g.dart';

@JsonSerializable()
class PagedListDTO<T> {
  const PagedListDTO({
    required this.page,
    required this.results,
  });

  factory PagedListDTO.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PagedListDTOFromJson<T>(json, fromJsonT);

  final int page;
  final List<T> results;

  List<Q> toDomain<Q>(Q Function(T value) mapper) =>
      results.map(mapper).toList();
}
