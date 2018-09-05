import 'package:tmdb_infrastructure/infrastructure.dart';

class LoadingAction {}

class LoadFailedAction {}

class LoadSuccessAction {
  final Iterable<Movie> movies;

  LoadSuccessAction(this.movies);
}

class AddToFavouriteAction {
  final Movie movie;

  AddToFavouriteAction(this.movie);
}

class RemoveFromFavouriteAction {
  final Movie movie;

  RemoveFromFavouriteAction(this.movie);
}