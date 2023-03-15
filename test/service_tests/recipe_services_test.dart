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

import 'recipe_services_test.mocks.dart';

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
  var user = User.fromJson(
      {"name": "Agung", "username": "user_00000001", "profile_pic_url": null});
  RecipeDetail validRecipe = RecipeDetail.fromJson({
    "title": "Telor Dada Tahu",
    "poster_pic_url": "tes.com",
    "description": "test",
    "prep_time": 10,
    "serving": 2,
    "user": user,
    "recipe_ingredients": [
      {
        "quantity": null,
        "ingredient": {"id": 4, "name": "tahu", "pic_url": null}
      },
      {
        "quantity": 1,
        "ingredient": {"id": 5, "name": "telor", "pic_url": null}
      },
      {
        "quantity": 1,
        "ingredient": {"id": 6, "name": "dada ayam", "pic_url": null},
        "metric": {"id": 1, "name": "kilogram", "abbrev": "kg"}
      }
    ],
    "cooking_steps": [
      {"step": 1, "description": "Test", "pic_url": "tes.com"},
      {"step": 2, "description": "Test123", "pic_url": "tes.com"}
    ],
    "tags": [
      Tag.fromJson({"id": 1, "name": "sarapan"})
    ]
  });
  RecipeDetail invalidRecipeBlankTitle = RecipeDetail.fromJson({
    "title": "",
    "poster_pic_url": "tes.com",
    "description": "test",
    "prep_time": 10,
    "serving": 2,
    "user": user,
  });
  RecipeDetail invalidRecipeWrongIngredientId = RecipeDetail.fromJson({
    "title": "Telor Dada Tahu",
    "poster_pic_url": "tes.com",
    "description": "test",
    "prep_time": 10,
    "serving": 2,
    "user": user,
    "recipe_ingredients": [
      {
        "quantity": null,
        "ingredient": {"id": null, "name": "tahu", "pic_url": null}
      },
    ],
    "cooking_steps": [
      {"step": 1, "description": "Test", "pic_url": "tes.com"},
      {"step": 2, "description": "Test123", "pic_url": "tes.com"}
    ],
    "tags": [
      Tag.fromJson({"id": 1, "name": "sarapan"})
    ]
  });
  var successResponse = {
    "status": 200,
    "message": "Sucess",
    "data": {
      "recipe": {
        "id": 24,
        "title": "Telor Dada Tahu",
        "poster_pic_url": "tes.com",
        "description": "test",
        "prep_time": 10,
        "serving": 2,
        "created_at": "2023-03-15T15:29:36.665Z",
        "user": user,
        "recipe_ingredients": [
          {
            "quantity": null,
            "ingredient": {"id": 4, "name": "tahu", "pic_url": null}
          },
          {
            "quantity": 1,
            "ingredient": {"id": 5, "name": "telor", "pic_url": null}
          },
          {
            "quantity": 1,
            "ingredient": {"id": 6, "name": "dada ayam", "pic_url": null},
            "metric": {"id": 1, "name": "kilogram", "abbrev": "kg"}
          }
        ],
        "cooking_steps": [
          {"step": 1, "description": "Test", "pic_url": "tes.com"},
          {"step": 2, "description": "Test123", "pic_url": "tes.com"}
        ],
        "tags": [
          Tag.fromJson({"id": 1, "name": "sarapan"})
        ]
      }
    }
  };
  group("Create recipe", () {
    test("valid attributes provided SUCCESS", () async {
      when(mockDio.post(
        '${dotenv.env['API_URL']}/recipe/create',
        data: validRecipe.toJson(),
        options: optionWithToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: successResponse,
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/recipe/create'),
            ),
          ));
      ApiResult<RecipeDetail> request =
          await RecipeServices(dio: mockDio, options: optionWithToken)
              .create(recipe: validRecipe, token: 'token');
      expect(
          request.mapOrNull(
            success: (value) => value.value.title,
          ),
          equals(validRecipe.title));
    });

    test("valid attributes provided (no token provided) FAILED", () async {
      when(mockDio.post(
        '${dotenv.env['API_URL']}/recipe/create',
        data: validRecipe.toJson(),
        options: optionNoToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 401,
              data: {"status": 401, "message": "Nil JSON web token"},
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/recipe/create'),
            ),
          ));
      ApiResult<RecipeDetail> request =
          await RecipeServices(dio: mockDio, options: optionNoToken)
              .create(recipe: validRecipe, token: '');
      expect(request,
          equals(const ApiResult<RecipeDetail>.failed("Nil JSON web token")));
    });

    test("invalid attributes provided (blank title) FAILED", () async {
      when(mockDio.post(
        '${dotenv.env['API_URL']}/recipe/create',
        data: invalidRecipeBlankTitle.toJson(),
        options: optionWithToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 422,
              data: {
                "status": 422,
                "message": {
                  "title": ["can't be blank"]
                }
              },
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/recipe/create'),
            ),
          ));
      ApiResult<RecipeDetail> request =
          await RecipeServices(dio: mockDio, options: optionWithToken)
              .create(recipe: invalidRecipeBlankTitle, token: 'token');
      expect(request,
          equals(const ApiResult<RecipeDetail>.failed("title can't be blank")));
    });

    test("invalid attributes provided (invalid ingredient id) FAILED",
        () async {
      when(mockDio.post(
        '${dotenv.env['API_URL']}/recipe/create',
        data: invalidRecipeWrongIngredientId.toJson(),
        options: optionWithToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 422,
              data: {
                "status": 422,
                "message": {
                  "recipe_ingredients.ingredient": ["must exist"]
                }
              },
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/recipe/create'),
            ),
          ));
      ApiResult<RecipeDetail> request =
          await RecipeServices(dio: mockDio, options: optionWithToken)
              .create(recipe: invalidRecipeWrongIngredientId, token: 'token');
      expect(
          request,
          equals(
              const ApiResult<RecipeDetail>.failed("ingredient must exist")));
    });
  });
}
