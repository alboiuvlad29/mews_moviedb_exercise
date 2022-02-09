// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    MoviesFeaturedRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const MoviesFeaturedPage());
    },
    MovieDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MovieDetailsRouteArgs>(
          orElse: () => MovieDetailsRouteArgs(id: pathParams.getInt('id')));
      return AdaptivePage<void>(
          routeData: routeData,
          child: MovieDetailsPage(key: args.key, id: args.id));
    },
    MoviesSearchRoute.name: (routeData) {
      return CustomPage<void>(
          routeData: routeData,
          child: const MoviesSearchPage(),
          transitionsBuilder: fadeInTransition,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(MoviesFeaturedRoute.name, path: '/'),
        RouteConfig(MovieDetailsRoute.name, path: '/movie-details-page'),
        RouteConfig(MoviesSearchRoute.name, path: '/movies-search-page')
      ];
}

/// generated route for
/// [MoviesFeaturedPage]
class MoviesFeaturedRoute extends PageRouteInfo<void> {
  const MoviesFeaturedRoute() : super(MoviesFeaturedRoute.name, path: '/');

  static const String name = 'MoviesFeaturedRoute';
}

/// generated route for
/// [MovieDetailsPage]
class MovieDetailsRoute extends PageRouteInfo<MovieDetailsRouteArgs> {
  MovieDetailsRoute({Key? key, required int id})
      : super(MovieDetailsRoute.name,
            path: '/movie-details-page',
            args: MovieDetailsRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'MovieDetailsRoute';
}

class MovieDetailsRouteArgs {
  const MovieDetailsRouteArgs({this.key, required this.id});

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'MovieDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [MoviesSearchPage]
class MoviesSearchRoute extends PageRouteInfo<void> {
  const MoviesSearchRoute()
      : super(MoviesSearchRoute.name, path: '/movies-search-page');

  static const String name = 'MoviesSearchRoute';
}
