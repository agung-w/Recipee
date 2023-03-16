import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ta_recipe_app/entities/ingredient.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';

import 'ingredient_services_test.mocks.dart';

@GenerateMocks([Dio])
void main() async {
  late Dio mockDio = MockDio();
  await dotenv.load(fileName: ".env");
  var optionNoToken = Options(headers: {
    "Content-Type": "application/json",
  });

  group("Find ingredient", () {
    test("valid ingridient name SUCCESS", () async {
      when(mockDio.get(
        '${dotenv.env['API_URL']}/ingredient/find/ayam',
        options: optionNoToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: {
                "status": 200,
                "message": "Sucess",
                "data": {
                  "ingredient": {"id": 12, "name": "ayam", "pic_url": null}
                }
              },
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/ingredient/find/ayam'),
            ),
          ));
      ApiResult<Ingredient> request =
          await IngredientServices(dio: mockDio, options: optionNoToken)
              .findIngredient();
      expect(
          request.mapOrNull(
            success: (value) => value.value.name,
          ),
          equals("ayam"));
    });
    test("invalid ingridient name SUCCESS", () async {});
  });
}
