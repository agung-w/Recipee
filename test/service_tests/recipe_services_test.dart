import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/entities/recipe_comment.dart';
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
  RecipeDetail validRecipe = RecipeDetail.fromJson({
    "title": "Telor Dada Tahu",
    "poster_pic_url": "tes.com",
    "description": "test",
    "prep_time": 10,
    "serving": 2,
    "user": {
      "name": "Agung",
      "username": "user_00000001",
      "profile_pic_url": null
    },
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
      {"id": 1, "name": "sarapan"}
    ]
  });
  RecipeDetail invalidRecipeBlankTitle = RecipeDetail.fromJson({
    "title": "",
    "poster_pic_url": "tes.com",
    "description": "test",
    "prep_time": 10,
    "serving": 2,
    "user": {
      "name": "Agung",
      "username": "user_00000001",
      "profile_pic_url": null
    },
  });
  RecipeDetail invalidRecipeWrongIngredientId = RecipeDetail.fromJson({
    "title": "Telor Dada Tahu",
    "poster_pic_url": "tes.com",
    "description": "test",
    "prep_time": 10,
    "serving": 2,
    "user": {
      "name": "Agung",
      "username": "user_00000001",
      "profile_pic_url": null
    },
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
      {"id": 1, "name": "sarapan"}
    ]
  });
  RecipeComment validComment =
      RecipeComment.fromJson({"recipe_id": 8, "content": "TestComment"});
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
        "user": {
          "name": "Agung",
          "username": "user_00000001",
          "profile_pic_url": null
        },
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
          {"id": 1, "name": "sarapan"}
        ]
      }
    }
  };
  var recipeListSucessResponse = {
    "status": 200,
    "message": "Sucess",
    "data": {
      "recipes": [
        {
          "id": 5,
          "title": "Recipe Test",
          "poster_pic_url": null,
          "description": "test",
          "prep_time": 10,
          "serving": 2,
          "created_at": "2023-03-06T10:40:15.950Z",
          "user": {
            "name": "Agung",
            "username": "user_00000001",
            "profile_pic_url": null
          },
          "tags": [
            {"id": 1, "name": "sarapan"}
          ],
          "is_saved": null
        },
        {
          "id": 6,
          "title": "Recipe Test",
          "poster_pic_url": null,
          "description": "test",
          "prep_time": 10,
          "serving": 2,
          "created_at": "2023-03-06T16:59:39.415Z",
          "user": {
            "name": "Agung",
            "username": "user_00000001",
            "profile_pic_url": null
          },
          "tags": [
            {"id": 1, "name": "sarapan"}
          ],
          "is_saved": null
        },
        {
          "id": 11,
          "title": "Kue Test",
          "poster_pic_url": null,
          "description": "test",
          "prep_time": 10,
          "serving": 2,
          "created_at": "2023-03-09T05:11:25.127Z",
          "user": {
            "name": "Agung",
            "username": "user_00000001",
            "profile_pic_url": null
          },
          "tags": [
            {"id": 1, "name": "sarapan"}
          ],
          "is_saved": true
        }
      ]
    }
  };
  var recipeCommentsSuccessResponse = {
    "status": 200,
    "message": "Sucess",
    "data": {
      "recipe_comments": [
        {
          "content": "test comment",
          "updated_at": "2023-03-13T12:39:48.535Z",
          "user": {
            "name": "Agung",
            "username": "user_00000001",
            "profile_pic_url": null
          }
        },
        {
          "content": "test comment 2",
          "updated_at": "2023-03-13T12:39:59.903Z",
          "user": {
            "name": "Agung",
            "username": "user_00000001",
            "profile_pic_url": null
          }
        },
        {
          "content": "test comment 3",
          "updated_at": "2023-03-14T16:13:52.771Z",
          "user": {
            "name": "Agung",
            "username": "user_00000001",
            "profile_pic_url": null
          }
        }
      ]
    }
  };
  var recipeCommentSuccessResponse = {
    "status": 200,
    "message": "Sucess",
    "data": {
      "recipe_comment": {
        "content": "TestComment",
        "updated_at": "2023-03-16T06:43:53.939Z",
        "user": {
          "name": "Agung",
          "username": "user_00000001",
          "profile_pic_url": null
        }
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

  group("Get recipe by id", () {
    test("recipe existed SUCCESS", () async {
      when(mockDio.get(
        '${dotenv.env['API_URL']}/recipe/24',
        options: optionWithToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: successResponse,
              requestOptions:
                  RequestOptions(path: '${dotenv.env['API_URL']}/recipe/24'),
            ),
          ));
      ApiResult<RecipeDetail> request =
          await RecipeServices(dio: mockDio, options: optionWithToken)
              .getRecipeDetail(id: 24, token: 'token');
      expect(
          request.mapOrNull(
            success: (value) => value.value.title,
          ),
          equals(validRecipe.title));
    });
    test("recipe existed but no token provided FAILED", () async {
      when(mockDio.get(
        '${dotenv.env['API_URL']}/recipe/24',
        options: optionNoToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 401,
              data: {"status": 401, "message": "Nil JSON web token"},
              requestOptions:
                  RequestOptions(path: '${dotenv.env['API_URL']}/recipe/24'),
            ),
          ));
      ApiResult<RecipeDetail> request =
          await RecipeServices(dio: mockDio, options: optionNoToken)
              .getRecipeDetail(id: 24, token: '');
      expect(request,
          equals(const ApiResult<RecipeDetail>.failed('Nil JSON web token')));
    });
    test("recipe not existed FAILED", () async {
      when(mockDio.get(
        '${dotenv.env['API_URL']}/recipe/10',
        options: optionWithToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 404,
              data: {"status": 404, "message": "Recipe not found"},
              requestOptions:
                  RequestOptions(path: '${dotenv.env['API_URL']}/recipe/10'),
            ),
          ));
      ApiResult<RecipeDetail> request =
          await RecipeServices(dio: mockDio, options: optionWithToken)
              .getRecipeDetail(id: 10, token: 'token');
      expect(request,
          equals(const ApiResult<RecipeDetail>.failed('Recipe not found')));
    });
  });
  group("Search recipe by title", () {
    test("query found SUCCESS", () async {
      when(mockDio.get(
        '${dotenv.env['API_URL']}/search/recipe/by-title?query=tes',
        options: optionNoToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: recipeListSucessResponse,
              requestOptions: RequestOptions(
                  path:
                      '${dotenv.env['API_URL']}/search/recipe/by-title?query=tes'),
            ),
          ));
      ApiResult<List<Recipe?>> request =
          await RecipeServices(dio: mockDio, options: optionNoToken)
              .searchByTitle(query: "tes");
      expect(
          request.mapOrNull(success: (value) => value.value.length), equals(3));
    });
    test("query not found SUCCESS", () async {
      when(mockDio.get(
        '${dotenv.env['API_URL']}/search/recipe/by-title?query=tes123',
        options: optionNoToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: {
                "status": 200,
                "message": "Sucess",
                "data": {"recipes": []}
              },
              requestOptions: RequestOptions(
                  path:
                      '${dotenv.env['API_URL']}/search/recipe/by-title?query=tes123'),
            ),
          ));
      ApiResult<List<Recipe?>> request =
          await RecipeServices(dio: mockDio, options: optionNoToken)
              .searchByTitle(query: "tes123");
      expect(request.mapOrNull(success: (value) => value.value.isEmpty),
          equals(true));
    });
  });
  group("Search recipe by ingredients", () {
    test("query found SUCCESS", () async {
      when(mockDio.get(
        '${dotenv.env['API_URL']}/search/recipe/by-ingredient?query=tes,ayam',
        options: optionNoToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: recipeListSucessResponse,
              requestOptions: RequestOptions(
                  path:
                      '${dotenv.env['API_URL']}/search/recipe/by-ingredient?query=tes,ayam'),
            ),
          ));
      ApiResult<List<Recipe?>> request =
          await RecipeServices(dio: mockDio, options: optionNoToken)
              .searchByIngredients(query: List<String>.of(['tes', 'ayam']));
      expect(
          request.mapOrNull(success: (value) => value.value.length), equals(2));
    });
    test("query not found SUCCESS", () async {
      when(mockDio.get(
        '${dotenv.env['API_URL']}/search/recipe/by-ingredient?query=tes123',
        options: optionNoToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: {
                "status": 200,
                "message": "Sucess",
                "data": {"recipes": []}
              },
              requestOptions: RequestOptions(
                  path:
                      '${dotenv.env['API_URL']}/search/recipe/by-ingredient?query=tes123'),
            ),
          ));
      ApiResult<List<Recipe?>> request =
          await RecipeServices(dio: mockDio, options: optionNoToken)
              .searchByIngredients(query: List<String>.of(['tes123']));
      expect(request.mapOrNull(success: (value) => value.value.isEmpty),
          equals(true));
    });
  });
  group("Get recipe comment", () {
    test("recipe existed SUCCESS", () async {
      when(mockDio.get(
        '${dotenv.env['API_URL']}/recipe-comments/8',
        options: optionWithToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: recipeCommentsSuccessResponse,
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/recipe-comments/8'),
            ),
          ));
      ApiResult<List<RecipeComment?>> request =
          await RecipeServices(dio: mockDio, options: optionWithToken)
              .getRecipeComment(id: 8, token: 'token');
      expect(
          request.mapOrNull(success: (value) => value.value.length), equals(3));
    });
    test("recipe existed but no comment SUCCESS", () async {
      when(mockDio.get(
        '${dotenv.env['API_URL']}/recipe-comments/24',
        options: optionWithToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: {
                "status": 200,
                "message": "Sucess",
                "data": {"recipe_comments": []}
              },
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/recipe-comments/24'),
            ),
          ));
      ApiResult<List<RecipeComment?>> request =
          await RecipeServices(dio: mockDio, options: optionWithToken)
              .getRecipeComment(id: 24, token: 'token');
      expect(
          request.mapOrNull(success: (value) => value.value.length), equals(0));
    });
    test("recipe exsited but no token provided FAILED", () async {
      when(mockDio.get(
        '${dotenv.env['API_URL']}/recipe-comments/8',
        options: optionNoToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 401,
              data: {"status": 401, "message": "Nil JSON web token"},
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/recipe-comments/8'),
            ),
          ));
      ApiResult<List<RecipeComment?>> request =
          await RecipeServices(dio: mockDio, options: optionNoToken)
              .getRecipeComment(id: 8, token: '');
      expect(
          request,
          equals(const ApiResult<List<RecipeComment?>>.failed(
              "Nil JSON web token")));
    });
  });
  group("Post recipe comment", () {
    test("valid comment attributes SUCCESS", () async {
      when(mockDio.post(
        '${dotenv.env['API_URL']}/recipe-comment',
        data: validComment.toJson(),
        options: optionWithToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: recipeCommentSuccessResponse,
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/recipe-comment'),
            ),
          ));
      ApiResult<RecipeComment> request =
          await RecipeServices(dio: mockDio, options: optionWithToken)
              .addRecipeComment(comment: validComment, token: 'token');
      expect(
          request.mapOrNull(
            success: (value) => value.value.content,
          ),
          equals(validComment.content));
    });
    test("invalid comment attributes blank content FAILED", () async {
      when(mockDio.post(
        '${dotenv.env['API_URL']}/recipe-comment',
        data: const RecipeComment(recipeId: 8, content: "").toJson(),
        options: optionWithToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 422,
              data: {
                "status": 422,
                "message": {
                  "content": ["is too short (minimum is 1 character)"]
                }
              },
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/recipe-comment'),
            ),
          ));
      ApiResult<RecipeComment> request =
          await RecipeServices(dio: mockDio, options: optionWithToken)
              .addRecipeComment(
                  comment: const RecipeComment(recipeId: 8, content: ""),
                  token: 'token');
      expect(
          request,
          equals(const ApiResult<RecipeComment>.failed(
              "content is too short (minimum is 1 character)")));
    });
    test("no auth token provided FAILED", () async {
      when(mockDio.post(
        '${dotenv.env['API_URL']}/recipe-comment',
        data: validComment.toJson(),
        options: optionNoToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 401,
              data: {"status": 401, "message": "Nil JSON web token"},
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/recipe-comment'),
            ),
          ));
      ApiResult<RecipeComment> request =
          await RecipeServices(dio: mockDio, options: optionNoToken)
              .addRecipeComment(comment: validComment, token: '');
      expect(request,
          equals(const ApiResult<RecipeComment>.failed("Nil JSON web token")));
    });
  });
  group("Save recipe", () {
    test("SUCCESS", () async {
      when(mockDio.put(
        '${dotenv.env['API_URL']}/save-recipe/1',
        options: optionWithToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: {
                "status": 200,
                "message": "Sucess",
                "data": {"saved_recipe_id": 1, "recipe_total_saved": 1}
              },
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/save-recipe/1'),
            ),
          ));
      ApiResult<String> request =
          await RecipeServices(dio: mockDio, options: optionWithToken)
              .saveRecipe(recipeId: 1, token: 'token');
      expect(
          request.mapOrNull(
            success: (value) => value.value,
          ),
          equals("Success"));
    });
    test("user already saved this recipe FAILED", () async {
      when(mockDio.put(
        '${dotenv.env['API_URL']}/save-recipe/1',
        options: optionWithToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 422,
              data: {
                "status": 422,
                "message": {
                  "user": ["has already been taken"]
                }
              },
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/save-recipe/1'),
            ),
          ));
      ApiResult<String> request =
          await RecipeServices(dio: mockDio, options: optionWithToken)
              .saveRecipe(recipeId: 1, token: 'token');
      expect(
          request,
          equals(
              const ApiResult<String>.failed("user has already been taken")));
    });
    test("no auth token provided FAILED", () async {
      when(mockDio.put(
        '${dotenv.env['API_URL']}/save-recipe/1',
        options: optionNoToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 401,
              data: {"status": 401, "message": "Nil JSON web token"},
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/save-recipe/1'),
            ),
          ));
      ApiResult<String> request =
          await RecipeServices(dio: mockDio, options: optionNoToken)
              .saveRecipe(recipeId: 1, token: '');
      expect(request,
          equals(const ApiResult<String>.failed("Nil JSON web token")));
    });
  });
  group("Delete saved recipe", () {
    test("SUCCESS", () async {
      when(mockDio.delete(
        '${dotenv.env['API_URL']}/save-recipe/1',
        options: optionWithToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: {
                "status": 200,
                "message": "Sucess",
                "data": {"saved_recipe_id": 1, "recipe_total_saved": 0}
              },
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/save-recipe/1'),
            ),
          ));
      ApiResult<String> request =
          await RecipeServices(dio: mockDio, options: optionWithToken)
              .removeSavedRecipe(recipeId: 1, token: 'token');
      expect(
          request.mapOrNull(
            success: (value) => value.value,
          ),
          equals("Success"));
    });
    test("user haven't save this recipe yet FAILED", () async {
      when(mockDio.delete(
        '${dotenv.env['API_URL']}/save-recipe/1',
        options: optionWithToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 422,
              data: {"status": 422, "message": "Cant prosses this now"},
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/save-recipe/8'),
            ),
          ));
      ApiResult<String> request =
          await RecipeServices(dio: mockDio, options: optionWithToken)
              .removeSavedRecipe(recipeId: 1, token: 'token');
      expect(request,
          equals(const ApiResult<String>.failed("Cant prosses this now")));
    });
    test("no auth token provided FAILED", () async {
      when(mockDio.delete(
        '${dotenv.env['API_URL']}/save-recipe/1',
        options: optionNoToken,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 401,
              data: {"status": 401, "message": "Nil JSON web token"},
              requestOptions: RequestOptions(
                  path: '${dotenv.env['API_URL']}/save-recipe/8'),
            ),
          ));
      ApiResult<String> request =
          await RecipeServices(dio: mockDio, options: optionNoToken)
              .removeSavedRecipe(recipeId: 1, token: '');
      expect(request,
          equals(const ApiResult<String>.failed("Nil JSON web token")));
    });
  });
}
