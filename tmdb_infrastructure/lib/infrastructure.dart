import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:tmdb_infrastructure/src/api.dart';
import 'package:tmdb_infrastructure/src/repositories/movie_repo.dart';

export 'src/models.dart';

class Infrastructure {
  final String apiKey;
  final Client client;
  final String locale;

  ApiAdapter _apiAdapter;
  MovieRepository _movieRepo;

  Infrastructure({
    this.apiKey: 'b3e15c2f101994e2eb4c0a785326a3a9',
    @required this.client,
    this.locale: 'en-Us',
  }) {
    _apiAdapter = ApiAdapter(client, apiKey, locale: locale);
    _movieRepo = MovieRepository(api: _apiAdapter);
  }

  MovieRepository get movies => _movieRepo;
}
