import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ta_recipe_app/entities/tag.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/tag_services.dart';

import 'tag_services_test.mocks.dart';

@GenerateMocks([Dio])
void main() async {
  late Dio mockDio = MockDio();
  await dotenv.load(fileName: ".env");
  var optionNoToken = Options(headers: {
    "Content-Type": "application/json",
  });

  group("Get tag list", () {
    test("SUCCESS", () async {
      when(mockDio.get(
        '${dotenv.env['API_URL']}/tag/list',
        options: optionNoToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: {
                "status": 200,
                "message": "Sucess",
                "data": {
                  "tags": [
                    {"id": 1, "name": "sarapan"}
                  ]
                }
              },
              requestOptions:
                  RequestOptions(path: '${dotenv.env['API_URL']}/tag/list'),
            ),
          ));
      ApiResult<List<Tag?>> request =
          await TagServices(dio: mockDio, options: optionNoToken).getTags();
      expect(
          request.mapOrNull(
            success: (value) => value.value.length,
          ),
          equals(1));
    });
  });
}
