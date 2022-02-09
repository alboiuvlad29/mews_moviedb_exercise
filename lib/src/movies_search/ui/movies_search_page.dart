import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mews_moviedb_exercise/src/core/shared/locator.dart';
import 'package:mews_moviedb_exercise/src/core/ui/gradient_background.dart';
import 'package:mews_moviedb_exercise/src/movies_search/application/movie_search_bloc.dart';
import 'package:mews_moviedb_exercise/src/movies_search/ui/movies_search_bar.dart';
import 'package:mews_moviedb_exercise/src/movies_search/ui/movies_search_result_list.dart';

class MoviesSearchPage extends StatelessWidget with AutoRouteWrapper {
  const MoviesSearchPage({Key? key}) : super(key: key);
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<MovieSearchBloc>(
      create: (_) => sl<MovieSearchBloc>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GradientBackground(
        child: CustomScrollView(
          slivers: <Widget>[
            MoviesSearchBar(),
            MoviesSearchResultList(),
          ],
        ),
      ),
    );
  }
}
