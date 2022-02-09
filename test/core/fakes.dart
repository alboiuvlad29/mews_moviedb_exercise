import 'package:flutter_test/flutter_test.dart';
import 'package:mews_moviedb_exercise/src/core/domain/credits.dart';
import 'package:mews_moviedb_exercise/src/core/domain/movie.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/network_failure.dart';

class FakeNetworkFailure extends Fake implements NetworkFailure {}

class FakeCredits extends Fake implements Credits {}

class FakeMovie extends Fake implements Movie {}

class FakeMovies extends Fake implements List<Movie> {
  @override
  void addAll(Iterable<Movie> iterable) {}

  @override
  int get length => 0;
}
