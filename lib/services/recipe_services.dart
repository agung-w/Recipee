import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/entities/recipe_bundle.dart';
import 'package:ta_recipe_app/entities/recipe_comment.dart';
import 'package:ta_recipe_app/entities/recipe_detail.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';

class RecipeServices {
  late final Dio _dio;
  late final Options? options;
  RecipeServices({Dio? dio, this.options}) {
    _dio = dio ?? Dio(BaseOptions(connectTimeout: const Duration(seconds: 5)));
  }

  Future<ApiResult<RecipeDetail>> create(
      {required String token, required RecipeDetail recipe}) async {
    try {
      Response result =
          await _dio.post("${dotenv.env['API_URL']}/recipe/create",
              options: options ??
                  Options(headers: {
                    "Content-Type": "application/json",
                    "Authorization": "Bearer $token",
                  }),
              data: recipe.toJson());
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      RecipeDetail resultObj =
          RecipeDetail.fromJson(result.data['data']['recipe']);

      return ApiResult.success(resultObj);
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        if (e.response!.data['message'] is Map) {
          var error = e.response!.data['message'];
          var pos = error.keys.first.lastIndexOf('.');
          errorMessage =
              "${(pos != -1) ? error.keys.first.substring(pos + 1) : error.keys.first} ${error.values.first[0]}";
        } else {
          errorMessage = e.response!.data['message'];
        }
      }
      return ApiResult.failed(errorMessage);
    }
  }

  Future<ApiResult<RecipeDetail>> getRecipeDetail(
      {required int id, required String token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/recipe/$id",
        options: options ??
            Options(headers: {
              "Content-Type": "application/json",
              "Authorization": "Bearer $token",
            }),
      );
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      RecipeDetail resultObj =
          RecipeDetail.fromJson(result.data['data']['recipe']);

      return ApiResult.success(resultObj);
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        errorMessage = e.response!.data['message'];
      }
      return ApiResult.failed(errorMessage);
    }
  }

  Future<ApiResult<List<Recipe?>>> searchByTitle(
      {required String query}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/search/recipe/by-title?query=$query",
        options: options ??
            Options(headers: {
              "Content-Type": "application/json",
            }),
      );
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      List<Recipe?> resultListObj = (result.data['data']['recipes'] as List)
          .map((e) => Recipe.fromJson(e))
          .toList();

      return ApiResult.success(resultListObj);
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        errorMessage = e.response!.data['message'];
      }
      return ApiResult.failed(errorMessage);
    }
  }

  Future<ApiResult<List<Recipe?>>> searchByIngredients(
      {required List<String> query}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/search/recipe/by-ingredient?query=${query.join(",")}",
        options: options ??
            Options(headers: {
              "Content-Type": "application/json",
            }),
      );
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      List<Recipe?> resultListObj = (result.data['data']['recipes'] as List)
          .map((e) => Recipe.fromJson(e))
          .toList();

      return ApiResult.success(resultListObj);
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        errorMessage = e.response!.data['message'];
      }
      return ApiResult.failed(errorMessage);
    }
  }

  Future<ApiResult<RecipeComment?>> getFirstRecipeComment(
      {required int id, required String token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/first-recipe-comment/$id",
        options: options ??
            Options(headers: {
              "Content-Type": "application/json",
              "Authorization": "Bearer $token",
            }),
      );
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      RecipeComment? resultObj;
      if (result.data['data']['recipe_comment'] != null) {
        resultObj =
            RecipeComment.fromJson(result.data['data']['recipe_comment']);
      }
      return ApiResult.success(resultObj);
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        errorMessage = e.response!.data['message'];
      }
      return ApiResult.failed(errorMessage);
    }
  }

  Future<ApiResult<List<RecipeComment?>>> getRecipeComment(
      {required int id, required String token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/recipe-comments/$id",
        options: options ??
            Options(headers: {
              "Content-Type": "application/json",
              "Authorization": "Bearer $token",
            }),
      );
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      List<RecipeComment?> resultListObj =
          (result.data['data']['recipe_comments'] as List)
              .map((e) => RecipeComment.fromJson(e))
              .toList();

      return ApiResult.success(resultListObj);
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        errorMessage = e.response!.data['message'];
      }
      return ApiResult.failed(errorMessage);
    }
  }

  Future<ApiResult<RecipeComment>> addRecipeComment(
      {required RecipeComment comment, required String token}) async {
    try {
      Response result =
          await _dio.post("${dotenv.env['API_URL']}/recipe-comment",
              options: options ??
                  Options(headers: {
                    "Content-Type": "application/json",
                    "Authorization": "Bearer $token",
                  }),
              data: {
            "comment": {
              "recipe_id": comment.recipeId,
              "content": comment.content
            }
          });
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      RecipeComment resultObj =
          RecipeComment.fromJson(result.data['data']['recipe_comment']);

      return ApiResult.success(resultObj);
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        if (e.response!.data['message'] is Map) {
          var error = e.response!.data['message'];
          var pos = error.keys.first.lastIndexOf('.');
          errorMessage =
              "${(pos != -1) ? error.keys.first.substring(pos + 1) : error.keys.first} ${error.values.first[0]}";
        } else {
          errorMessage = e.response!.data['message'];
        }
      }
      return ApiResult.failed(errorMessage);
    }
  }

  Future<ApiResult<String>> saveRecipe(
      {required int recipeId, required String token}) async {
    try {
      Response result = await _dio.put(
        "${dotenv.env['API_URL']}/save-recipe/$recipeId",
        options: options ??
            Options(headers: {
              "Content-Type": "application/json",
              "Authorization": "Bearer $token",
            }),
      );
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      return const ApiResult.success("Success");
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        if (e.response!.data['message'] is Map) {
          var error = e.response!.data['message'];
          var pos = error.keys.first.lastIndexOf('.');
          errorMessage =
              "${(pos != -1) ? error.keys.first.substring(pos + 1) : error.keys.first} ${error.values.first[0]}";
        } else {
          errorMessage = e.response!.data['message'];
        }
      }
      return ApiResult.failed(errorMessage);
    }
  }

  Future<ApiResult<String>> removeSavedRecipe(
      {required int recipeId, required String token}) async {
    try {
      Response result = await _dio.delete(
        "${dotenv.env['API_URL']}/save-recipe/$recipeId",
        options: options ??
            Options(headers: {
              "Content-Type": "application/json",
              "Authorization": "Bearer $token",
            }),
      );
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      return const ApiResult.success("Success");
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        if (e.response!.data['message'] is Map) {
          var error = e.response!.data['message'];
          var pos = error.keys.first.lastIndexOf('.');
          errorMessage =
              "${(pos != -1) ? error.keys.first.substring(pos + 1) : error.keys.first} ${error.values.first[0]}";
        } else {
          errorMessage = e.response!.data['message'];
        }
      }
      return ApiResult.failed(errorMessage);
    }
  }

  Future<ApiResult<List<RecipeBundle>?>> getBundles(
      {required int recipeId, required String token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/recipe-bundles/$recipeId",
        options: options ??
            Options(headers: {
              "Content-Type": "application/json",
            }),
      );
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      List<RecipeBundle>? resultListObj =
          (result.data['data']['recipe_bundles'] as List)
              .map((e) => RecipeBundle.fromJson(e))
              .toList();
      return ApiResult.success(resultListObj);
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        errorMessage = e.response!.data['message'];
      }
      return ApiResult.failed(errorMessage);
    }
  }
}
