import 'package:http/http.dart' as http;
import 'package:scoped_model/scoped_model.dart';
import 'package:tmdb_infrastructure/infrastructure.dart';

class MoviesModel extends Model {
  bool get isLoading => _isLoading;
  bool get hasError => _hasError;
  Iterable<Movie> get movies => _movies;
  Iterable<Movie> get favouriteMovies => _favourites;

  bool _isLoading = false;
  bool _hasError = false;
  Iterable<Movie> _movies;
  final _favourites = <Movie>[];
  final _infrastructure = Infrastructure(client: http.Client());

  MoviesModel() {
    load();
  }

  void addToFavourite(Movie movie) {
    if (!_favourites.contains(movie)) {
      _favourites.add(movie);
      notifyListeners();
    }
  }

  void removeFromFavourite(Movie movie) {
    if (_favourites.contains(movie)) {
      _favourites.remove(movie);
      notifyListeners();
    }
  }

  void load() {
    if (_isLoading) return;

    _isLoading = true;
    notifyListeners();

    _infrastructure.movies.listUpcoming().then((list) {
      _movies = list;
    }).catchError((_) {
      _hasError = true;
    }).whenComplete(() {
      _isLoading = false;
      notifyListeners();
    });
  }
}