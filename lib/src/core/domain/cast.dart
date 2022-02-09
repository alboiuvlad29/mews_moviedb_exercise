import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast.freezed.dart';

@freezed
class Cast with _$Cast {
  const factory Cast({
    required String name,
    required String character,
    String? profilePath,
  }) = _Cast;
  const Cast._();
}
