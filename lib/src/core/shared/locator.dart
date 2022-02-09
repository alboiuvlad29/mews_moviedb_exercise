import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mews_moviedb_exercise/src/core/domain/app_config.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movies_remote_service.dart';
import 'package:mews_moviedb_exercise/src/core/infrastructure/movies_repository.dart';
import 'package:mews_moviedb_exercise/src/core/router/app_router.dart';
import 'package:mews_moviedb_exercise/src/movie_details/application/movie_details_bloc.dart';
import 'package:mews_moviedb_exercise/src/movies_featured/application/movies_featured_bloc.dart';
import 'package:mews_moviedb_exercise/src/movies_search/application/movie_search_bloc.dart';

final GetIt sl = GetIt.I;

Future<void> setupLocator(AppConfig appConfig) async {
  // Core
  sl.registerFactory(() => Dio());
  sl.registerSingleton(appConfig);
  sl.registerSingleton(AppRouter());

  // Remote Services
  sl.registerLazySingleton(() => MoviesRemoteService(sl(),
      baseUrl: appConfig.movieDBConfig.serviceBaseUrl,
      apiKey: appConfig.movieDBConfig.apiKey));

  // Repositories
  sl.registerLazySingleton(() => MoviesRepository(sl()));

  // Bloc
  sl.registerFactory(() => MoviesFeaturedBloc(sl()));
  sl.registerFactoryParam<MovieDetailsBloc, MovieDetailsBlocArgs, void>(
      (MovieDetailsBlocArgs param1, void param2) =>
          MovieDetailsBloc(param1, sl()));
  sl.registerFactory(() => MovieSearchBloc(sl()));

  return;
}
