import 'package:flutter/material.dart';
import 'package:tmdb_infrastructure/infrastructure.dart';
import 'package:tmdb_widgets/src/error_view.dart';
import 'package:tmdb_widgets/src/loading_view.dart';
import 'package:tmdb_widgets/src/movie_list.dart';

class MovieListTab extends StatelessWidget {
  final Iterable<Movie> movies;
  final bool isLoading;
  final bool hasError;
  final TapMovieCallback onTap;
  final VoidCallback onRetry;

  const MovieListTab({
    Key key,
    this.movies,
    this.isLoading: false,
    this.hasError: false,
    this.onTap,
    this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (hasError) {
      return ErrorView(onTap: onRetry);
    } else if (movies == null || isLoading) {
      return LoadingView();
    } else {
      return MovieListView(
        movies: movies.toList(),
        onTap: onTap,
      );
    }
  }
}
