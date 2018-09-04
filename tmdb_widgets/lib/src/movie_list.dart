import 'package:flutter/material.dart';
import 'package:tmdb_infrastructure/infrastructure.dart';
import 'package:tmdb_widgets/src/movie_list_tile.dart';

typedef TapMovieCallback = void Function(Movie movie);

class MovieListView extends StatelessWidget {
  final List<Movie> movies;
  final TapMovieCallback onTap;

  const MovieListView({
    Key key,
    @required this.movies,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return MovieListTile(
          movie: movies[index],
          onTap: () => onTap(movies[index]),
        );
      },
    );
  }
}