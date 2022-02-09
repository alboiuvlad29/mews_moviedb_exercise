import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mews_moviedb_exercise/src/core/ui/movies_search_app_bar.dart';
import 'package:mews_moviedb_exercise/src/movies_search/application/movie_search_bloc.dart';

class MoviesSearchBar extends StatelessWidget {
  const MoviesSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieSearchBloc, MovieSearchState>(
      builder: (BuildContext context, MovieSearchState state) {
        return MoviesSearchAppBar(
          persistentOnly: true,
          navBuilder: (BuildContext context, double animation) =>
              CustomSearchBar(
            animation: animation,
            autofocus: true,
            loading: state.loading,
            onChange: (String query) =>
                context.read<MovieSearchBloc>().search(query),
            onCancel: () => AutoRouter.of(context).pop(),
          ),
        );
      },
    );
  }
}
