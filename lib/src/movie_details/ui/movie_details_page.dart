import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mews_moviedb_exercise/src/core/domain/credits.dart';
import 'package:mews_moviedb_exercise/src/core/domain/movie.dart';
import 'package:mews_moviedb_exercise/src/core/shared/locator.dart';
import 'package:mews_moviedb_exercise/src/core/ui/error_retry.dart';
import 'package:mews_moviedb_exercise/src/core/ui/gradient_background.dart';
import 'package:mews_moviedb_exercise/src/core/ui/sliver_loading_indicator.dart';
import 'package:mews_moviedb_exercise/src/movie_details/application/movie_details_bloc.dart';
import 'package:mews_moviedb_exercise/src/movie_details/ui/movie_details_body.dart';
import 'package:sliver_tools/sliver_tools.dart';

class MovieDetailsPage extends StatelessWidget with AutoRouteWrapper {
  const MovieDetailsPage({
    Key? key,
    @pathParam required this.id,
  }) : super(key: key);

  final int id;

  @override
  Widget wrappedRoute(BuildContext context) {
    final MovieDetailsBlocArgs args = MovieDetailsBlocArgs(id: id);
    return BlocProvider<MovieDetailsBloc>(
      create: (BuildContext context) =>
          sl<MovieDetailsBloc>(param1: args)..init(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: CustomScrollView(
          slivers: <Widget>[
            /// In some cases, changing the first sliver in a custom scroll view would yield a framework exception. The /// issue is described more here in the issue below. In some cases it can be fixed by making a
            /// [SliverToBoxAdapter] widget as the first sliver, but in this case, the pinned behaviour of SliverAppBar /// is lost.
            ///
            /// https://github.com/flutter/flutter/issues/55170
            SliverStack(
              children: <Widget>[
                const SliverPositioned.fill(child: SizedBox()),
                BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
                  builder: (BuildContext context, MovieDetailsState state) {
                    return state.when(
                      initial: () => const SliverToBoxAdapter(),
                      loaded: (Movie item, Credits credits,
                              List<Movie> recommendatios) =>
                          MovieDetailsBody(
                        item: item,
                        credits: credits,
                        reccomendations: recommendatios,
                      ),
                      loading: () => const SliverLoadingIndicator(),
                      error: (_) => ErrorRetry(
                        error: _,
                        onRetry: () => context.read<MovieDetailsBloc>().init(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
