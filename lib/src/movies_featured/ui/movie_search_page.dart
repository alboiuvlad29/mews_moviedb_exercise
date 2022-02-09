import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mews_moviedb_exercise/src/core/router/app_router.dart';
import 'package:mews_moviedb_exercise/src/core/shared/locator.dart';
import 'package:mews_moviedb_exercise/src/core/ui/gradient_background.dart';
import 'package:mews_moviedb_exercise/src/core/ui/movies_search_app_bar.dart';
import 'package:mews_moviedb_exercise/src/movies_featured/application/movies_featured_bloc.dart';

import '../../core/ui/bottom_sliver_padding.dart';
import '../../core/ui/error_retry.dart';
import '../../core/ui/sliver_loading_indicator.dart';
import 'movies_featured_loaded.dart';

class MoviesFeaturedPage extends StatelessWidget implements AutoRouteWrapper {
  const MoviesFeaturedPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<MoviesFeaturedBloc>(
      create: (BuildContext context) => sl<MoviesFeaturedBloc>()..init(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: RefreshIndicator(
          onRefresh: () => context.read<MoviesFeaturedBloc>().init(),
          child: CustomScrollView(
            slivers: <Widget>[
              MoviesSearchAppBar(
                navBuilder: (BuildContext context, double animation) =>
                    GestureDetector(
                  onTap: () =>
                      AutoRouter.of(context).push(const MoviesSearchRoute()),
                  child: AbsorbPointer(
                    child: CustomSearchBar(
                      animation: animation,
                    ),
                  ),
                ),
              ),
              BlocBuilder<MoviesFeaturedBloc, MoviesFeaturedState>(
                builder: (BuildContext context, MoviesFeaturedState state) {
                  return state.map(
                    (_) {
                      return MoviesFeaturedLoaded(
                        nowPlaying: _.nowPlayingMovies,
                        popularMovies: _.popularMovies,
                        topRatedMovies: _.topRatedMovies,
                        upcomingMovies: _.upcomingMovies,
                      );
                    },
                    loading: (_) => const SliverLoadingIndicator(),
                    error: (_) => ErrorRetry(
                      error: _.error,
                      onRetry: () => context.read<MoviesFeaturedBloc>().init(),
                    ),
                  );
                },
              ),
              const BottomSliverPadding(),
            ],
          ),
        ),
      ),
    );
  }
}
