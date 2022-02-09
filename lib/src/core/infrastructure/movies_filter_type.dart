enum MoviesFilterType { nowPlaying, popular, topRated, upcoming }

extension MoviesFilterTypeX on MoviesFilterType {
  String get path {
    switch (this) {
      case MoviesFilterType.nowPlaying:
        return 'now_playing';
      case MoviesFilterType.popular:
        return 'popular';
      case MoviesFilterType.topRated:
        return 'top_rated';
      case MoviesFilterType.upcoming:
        return 'upcoming';
    }
  }

  String appendtoPath(String path) {
    return path + '/' + this.path;
  }
}
