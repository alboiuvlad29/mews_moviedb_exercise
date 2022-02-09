import 'package:duration/duration.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import 'genre.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String title,
    DateTime? releaseDate,
    String? posterPath,
    String? backdropPath,
    String? overview,
    String? tagline,
    int? runtime,
    @Default(<Genre>[]) List<Genre> genres,
  }) = _Movie;
  const Movie._();

  String? get formattedReleaseDate {
    if (releaseDate == null) {
      return null;
    }

    return DateFormat.yMMMMd().format(releaseDate!);
  }

  String? get formatterRuntime {
    if (runtime == null) {
      return null;
    }
    final Duration duration = Duration(minutes: runtime!);
    return prettyDuration(duration,
        abbreviated: true, delimiter: ' ', spacer: '');
  }
}
