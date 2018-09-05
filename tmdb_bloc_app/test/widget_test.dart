import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';

import 'package:tmdb_bloc_app/main.dart';
import 'package:tmdb_infrastructure/infrastructure.dart';

void main() {
  testWidgets('Error state shown', (WidgetTester tester) async {
    var index = 0;
    final responses = [
      (_) async => Response("Error has occured", 500),
      (_) async => Response("""
{
  "page": 0,
  "total_pages": 0,
  "total_results": 0,
  "dates": {
    "maximum": "",
    "minimum": ""
  },
  "results": []
}
      """, 200),
    ];

    final mockClient = MockClient((request) => responses[index++](request));
    final infrastructure = Infrastructure(client: mockClient);

    await tester.pumpWidget(new MyApp(infrastructure: infrastructure));
    await tester.pumpAndSettle();

    expect(find.text('Error has occured'), findsOneWidget);
    expect(find.text('Retry'), findsOneWidget);

    await tester.tap(find.text('Retry'));
    await tester.pumpAndSettle();

    expect(find.text('Error has occured'), findsNothing);
    expect(find.text('Retry'), findsNothing);
  });
}
