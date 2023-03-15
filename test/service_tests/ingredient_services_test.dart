import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ta_recipe_app/entities/recipe_detail.dart';
import 'package:ta_recipe_app/entities/tag.dart';
import 'package:ta_recipe_app/entities/user.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/recipe_services.dart';

import 'ingredient_services_test.mocks.dart';

@GenerateMocks([Dio])
void main() async {
  late Dio mockDio = MockDio();
  await dotenv.load(fileName: ".env");
  var optionWithToken = Options(headers: {
    "Content-Type": "application/json",
    "Authorization": "Bearer token",
  });
  var optionNoToken = Options(headers: {
    "Content-Type": "application/json",
  });

  group("Find ingredient", () {
    test("valid ingridient name SUCCESS", () => null);
    test("invalid ingridient name SUCCESS", () => null);
  });
}
