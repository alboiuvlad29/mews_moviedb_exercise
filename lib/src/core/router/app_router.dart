import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mews_moviedb_exercise/src/movie_details/ui/movie_details_page.dart';
import 'package:mews_moviedb_exercise/src/movies_featured/ui/movie_search_page.dart';
import 'package:mews_moviedb_exercise/src/movies_search/ui/movies_search_page.dart';

part 'app_router.gr.dart';

Widget fadeInTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return FadeTransition(opacity: animation, child: child);
}

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(page: MoviesFeaturedPage, initial: true),
    AutoRoute<void>(page: MovieDetailsPage),
    CustomRoute<void>(
        page: MoviesSearchPage, transitionsBuilder: fadeInTransition),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
