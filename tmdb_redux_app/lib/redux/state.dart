import 'package:tmdb_infrastructure/infrastructure.dart';

class AppState {
  final Iterable<Movie> movies;
  final Iterable<Movie> favouriteMovies;
  final bool isLoading;
  final bool hasError;

  AppState({
    this.movies,
    this.favouriteMovies: const [],
    this.isLoading: false,
    this.hasError: false,
  });
}