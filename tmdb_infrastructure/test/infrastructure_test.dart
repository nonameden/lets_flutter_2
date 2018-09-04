import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';
import 'package:tmdb_infrastructure/infrastructure.dart';
// import 'package:http_mock/http_mock.dart';
import 'mocks.dart';

void main() {
  test('Remote call happening', () async {
    // arrange
    var apiCalled = false;
    final client = MockClient((BaseRequest request) async {
      if (request.url.path == '/3/movie/upcoming') {
        apiCalled = true;
        return Response(movieListReponseData, 200);
      }
    });
    final infra = Infrastructure(apiKey: 'ApiKey', client: client);

    // act
    final list = await infra.movies.listUpcoming();

    // assert
    expect(apiCalled, true);
    expect(list.length, 1);
  });
}
