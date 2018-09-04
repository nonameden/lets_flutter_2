import 'dart:async';
import 'package:http/http.dart';
import 'package:tmdb_infrastructure/src/models.dart';

class ApiAdapter {
  final Client client;
  final String apiKey;
  final String locale;

  static const String _apiBaseUrl = 'https://api.themoviedb.org/3';

  ApiAdapter(this.client, this.apiKey, {this.locale: 'en-Us'});

  Future<Iterable<Movie>> upcomingMovies() {
    return client
        .get("$_apiBaseUrl/movie/upcoming?api_key=$apiKey&language=$locale")
        .then((response) {
      if (response.statusCode == 200) {
        return MovieListResponse.fromJson(response.body).results;
      } else {
        throw IOError(response);
      }
    });
  }

  Future<Iterable<Genre>> genres() {
    return client
        .get("$_apiBaseUrl/genre/movie/list?api_key=$apiKey&language=$locale")
        .then((response) {
      if (response.statusCode == 200) {
        return GenreListResponse.fromJson(response.body).genres;
      } else {
        throw IOError(response);
      }
    });
  }
}

class IOError extends Error {
  final Response response;

  IOError(this.response);
}
