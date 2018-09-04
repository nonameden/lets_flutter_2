import 'package:test/test.dart';
import 'package:tmdb_infrastructure/src/models.dart';

import 'mocks.dart';

void main() {
  test('Movie response can be deserialized', () {
    final response = MovieListResponse.fromJson(movieListReponseData);
    expect(response, isNotNull);
    expect(response.dateRange, isNotNull);
    expect(response.dateRange.minimum, '2018-09-05');
    expect(response.dateRange.maximum, '2018-09-26');
    expect(response.page, 1);
    expect(response.totalPages, 16);
    expect(response.results, isNotNull);
    expect(response.results.length, 20);
    expect(response.results.first.id, 493922);
  });

  test('Genre response can be deserialized', () {
    final response = GenreListResponse.fromJson(genreListResponseData);
    expect(response, isNotNull);
    expect(response.genres, isNotNull);
    expect(response.genres.length, 2);
    expect(response.genres.first.id, 28);
  });
}