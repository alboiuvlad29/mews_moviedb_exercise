part of 'movie_details_bloc.dart';

@immutable
abstract class MovieDetailsEvent {}

@immutable
class MovieDetailsLoadEvent extends MovieDetailsEvent {}

@immutable
class MovieDetailsLoadingFailedEvent extends MovieDetailsEvent {
  MovieDetailsLoadingFailedEvent(this.error);
  final NetworkFailure error;
}
