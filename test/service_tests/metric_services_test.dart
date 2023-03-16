import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ta_recipe_app/entities/metric.dart';

import 'tag_services_test.mocks.dart';

@GenerateMocks([Dio])
void main() async {
  late Dio mockDio = MockDio();
  await dotenv.load(fileName: ".env");
  var optionNoToken = Options(headers: {
    "Content-Type": "application/json",
  });

  group("Get metric list", () {
    test("SUCCESS", () async {
      when(mockDio.get(
        '${dotenv.env['API_URL']}/metric/list',
        options: optionNoToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: {
                "status": 200,
                "message": "Sucess",
                "data": {
                  "metrics": [
                    {"id": 1, "name": "kilogram", "abbrev": "kg"}
                  ]
                }
              },
              requestOptions:
                  RequestOptions(path: '${dotenv.env['API_URL']}/metric/list'),
            ),
          ));
      List<Metric?> request =
          await MetricServices(dio: mockDio, options: optionNoToken)
              .getMetrics();
      expect(request.length, equals(1));
    });
  });
}
