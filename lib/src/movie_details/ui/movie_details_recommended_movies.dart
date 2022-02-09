import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/src/core/domain/movie.dart';
import 'package:mews_moviedb_exercise/src/core/ui/movies_horizontal_list.dart';

class RecommendedMovies extends StatelessWidget {
  const RecommendedMovies({
    Key? key,
    required this.recommendations,
  }) : super(key: key);

  final List<Movie> recommendations;

  @override
  Widget build(BuildContext context) {
    if (recommendations.isEmpty) {
      return const SizedBox();
    }
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: MoviesHorizontalList(
          title: 'Recommended', smallTitle: 'Movies', items: recommendations),
    );
  }
}
