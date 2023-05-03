import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ta_recipe_app/entities/ingredient.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/ingredient_services.dart';

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
        '${dotenv.env['API_URL']}/ingredient/find?name=ayam',
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
                  path: '${dotenv.env['API_URL']}/ingredient/find?name=ayam'),
            ),
          ));
      ApiResult<Ingredient> request =
          await IngredientServices(dio: mockDio, options: optionNoToken)
              .findIngredient(name: "ayam");
      expect(
          request.mapOrNull(
            success: (value) => value.value.name,
          ),
          equals("ayam"));
    });
    test("invalid ingridient name FAILED", () async {
      when(mockDio.get(
        '${dotenv.env['API_URL']}/ingredient/find?name= ',
        options: optionNoToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 422,
              data: {
                "status": 422,
                "message": {
                  "name": ["can't be blank"]
                }
              },
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/ingredient/find?name= '),
            ),
          ));
      ApiResult<Ingredient> request =
          await IngredientServices(dio: mockDio, options: optionNoToken)
              .findIngredient(name: " ");
      expect(
          request, const ApiResult<Ingredient>.failed("name can't be blank"));
    });
  });
}
