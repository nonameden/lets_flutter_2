import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:tmdb_infrastructure/infrastructure.dart';

class MoviesBloc {
  // Inputs
  Sink<void> get load => _loadController.sink;
  Sink<Movie> get addToFavourites => _addController.sink;
  Sink<Movie> get removeFromFavourites => _removeController.sink;

  // Outputs
  Stream<Iterable<Movie>> get movies => _moviesController.stream;
  Stream<Iterable<Movie>> get favouriteMovies => _favouriotesController.stream;

  final Infrastructure infrastructure;
  final _favourites = <Movie>[];

  final _loadController = StreamController();
  final _addController = StreamController<Movie>();
  final _removeController = StreamController<Movie>();
  final _moviesController = BehaviorSubject<Iterable<Movie>>();
  final _favouriotesController = BehaviorSubject<Iterable<Movie>>(seedValue: []);

  final _subscription = <StreamSubscription>[];

  MoviesBloc(this.infrastructure) {
    _subscription.addAll([
      _addController.stream.listen((movie) {
        if (!_favourites.contains(movie)) {
          _favourites.add(movie);
          _favouriotesController.add(_favourites);
        }
      }),
      _removeController.stream.listen((movie) {
        if (_favourites.contains(movie)) {
          _favourites.remove(movie);
          _favouriotesController.add(_favourites);
        }
      }),
      _loadController.stream.listen((_) {
        infrastructure.movies.listUpcoming().then((list) {
          _moviesController.add(list);
        }).catchError((error) {
          _moviesController.addError(error);
        });
      }),
    ]);
  }

  void close() {
    _loadController.close();
    _addController.close();
    _removeController.close();
    _subscription.forEach((subscription) => subscription.cancel());
  }
}
