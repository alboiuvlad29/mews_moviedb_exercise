class AppConfig {
  const AppConfig({
    required this.movieDBConfig,
  });

  /// The configuration for the MovieDB service.
  final MovieDBConfig movieDBConfig;
}

class MovieDBConfig {
  const MovieDBConfig({
    required this.serviceBaseUrl,
    required this.apiKey,
  });

  /// The base URL of the api used from https://www.themoviedb.org
  final String serviceBaseUrl;

  /// The api key used to access the api
  final String apiKey;
}
