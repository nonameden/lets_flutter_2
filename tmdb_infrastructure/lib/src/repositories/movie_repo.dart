import 'dart:async';

import 'package:meta/meta.dart';
import 'package:tmdb_infrastructure/src/api.dart';
import 'package:tmdb_infrastructure/src/models.dart';

class MovieRepository {
  Map<int, Movie> _movieById = {};
  Iterable<Movie> _loadedMovies = [];

  DateTime _updatedAt;

  final ApiAdapter _apiAdapter;

  MovieRepository({@required ApiAdapter api}) : this._apiAdapter = api;

  Future<Iterable<Movie>> listUpcoming() async {
    if (_updatedAt == null ||
        DateTime.now().difference(_updatedAt) > Duration(minutes: 1)) {
      final list = await _apiAdapter.upcomingMovies();

      _loadedMovies = list;
      _movieById = Map.fromIterable(list, key: (v) => v.id, value: (v) => v);
      return _loadedMovies;
    } else {
      return _loadedMovies;
    }
  }

  Future<Movie> getById(int id) async {
    if (_updatedAt == null) await listUpcoming();
    return _movieById[id];
  }
}
