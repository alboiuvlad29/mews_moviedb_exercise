import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/src/core/ui/movies_horizontal_list.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../core/domain/movie.dart';

class MoviesFeaturedLoaded extends StatelessWidget {
  const MoviesFeaturedLoaded({
    Key? key,
    required this.nowPlaying,
    required this.popularMovies,
    required this.topRatedMovies,
    required this.upcomingMovies,
  }) : super(key: key);

  final List<Movie> nowPlaying;
  final List<Movie> popularMovies;
  final List<Movie> topRatedMovies;
  final List<Movie> upcomingMovies;

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: <Widget>[
        const SizedBox(height: 20),
        MoviesHorizontalList(
          title: 'Now',
          smallTitle: 'Playing',
          items: nowPlaying,
        ),
        const SizedBox(height: 20),
        MoviesHorizontalList(
          title: 'Popular',
          smallTitle: 'Movies',
          items: popularMovies,
        ),
        const SizedBox(height: 20),
        MoviesHorizontalList(
          title: 'Top Rated',
          smallTitle: 'Movies',
          items: topRatedMovies,
        ),
        const SizedBox(height: 20),
        MoviesHorizontalList(
          title: 'Upcoming',
          smallTitle: 'Movies',
          items: upcomingMovies,
        ),
      ],
    );
  }
}
