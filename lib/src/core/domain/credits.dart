import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mews_moviedb_exercise/src/core/domain/cast.dart';

part 'credits.freezed.dart';

@freezed
class Credits with _$Credits {
  const factory Credits({
    required List<Cast> cast,
  }) = _Credits;
  const Credits._();
}
