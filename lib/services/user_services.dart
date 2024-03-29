import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/entities/user_detail.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';

class UserServices {
  late final Dio _dio;
  late final Options? options;
  UserServices({Dio? dio, this.options}) {
    _dio = dio ?? Dio(BaseOptions(connectTimeout: const Duration(seconds: 5)));
  }

  Future<ApiResult<UserDetail>> getSignedInInfo({required String token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/my-profile",
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
      UserDetail user = UserDetail.fromJson(result.data['data']['user']);
      return ApiResult.success(user);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<UserDetail>> getUserDetailByUsername(
      {required String username}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/profile/$username",
        options: options ??
            Options(headers: {
              "Content-Type": "application/json",
            }),
      );
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      UserDetail user = UserDetail.fromJson(result.data['data']['user']);
      return ApiResult.success(user);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<List<Recipe>>> getCreatedRecipeList(
      {required String username, required String? token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/created-recipe-by?username=$username",
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
      List<Recipe> resultListObj = (result.data['data']['recipes'] as List)
          .map((e) => Recipe.fromJson(e))
          .toList();
      return ApiResult.success(resultListObj);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<List<Recipe>>> getSavedRecipeList(
      {required String username, required String? token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/saved-recipe-by?username=$username",
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
      List<Recipe> resultListObj = (result.data['data']['recipes'] as List)
          .map((e) => Recipe.fromJson(e))
          .toList();
      return ApiResult.success(resultListObj);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<List<Recipe>>> getDraftRecipeList(
      {required String? token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/draft-recipes",
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
      List<Recipe> resultListObj = (result.data['data']['recipes'] as List)
          .map((e) => Recipe.fromJson(e))
          .toList();
      return ApiResult.success(resultListObj);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<List<Recipe>>> getRejectedRecipeList(
      {required String? token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/rejected-recipes",
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
      List<Recipe> resultListObj = (result.data['data']['recipes'] as List)
          .map((e) => Recipe.fromJson(e))
          .toList();
      return ApiResult.success(resultListObj);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<List<Recipe>>> getPendingRecipeList(
      {required String? token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/pending-recipes",
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
      List<Recipe> resultListObj = (result.data['data']['recipes'] as List)
          .map((e) => Recipe.fromJson(e))
          .toList();
      return ApiResult.success(resultListObj);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['message'].toString()
          : "Connection timeout");
    }
  }
}
