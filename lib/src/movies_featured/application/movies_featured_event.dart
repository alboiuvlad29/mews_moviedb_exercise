part of 'movies_featured_bloc.dart';

@immutable
abstract class MoviesFeaturedEvent {}

@immutable
class MoviesFeaturedLoadEvent extends MoviesFeaturedEvent {}

@immutable
class MoviesFeaturedLoadingFailure extends MoviesFeaturedEvent {
  MoviesFeaturedLoadingFailure(this.error);
  final NetworkFailure error;
}
