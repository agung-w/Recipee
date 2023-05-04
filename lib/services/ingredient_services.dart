import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ta_recipe_app/entities/ingredient.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';

class IngredientServices {
  late final Dio _dio;
  late final Options? options;
  IngredientServices({Dio? dio, this.options}) {
    _dio = dio ?? Dio(BaseOptions(connectTimeout: const Duration(seconds: 5)));
  }
  Future<ApiResult<Ingredient>> findIngredient({required String name}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/ingredient/find?name=$name",
        options: options ??
            Options(headers: {
              "Content-Type": "application/json",
            }),
      );
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      Ingredient resultObj =
          Ingredient.fromJson(result.data['data']['ingredient']);

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

  Future<ApiResult<Ingredient>> getRandomIngredient() async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/ingredient/random",
        options: options ??
            Options(headers: {
              "Content-Type": "application/json",
            }),
      );
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      Ingredient resultObj =
          Ingredient.fromJson(result.data['data']['ingredient']);

      return ApiResult.success(resultObj);
    } on DioError catch (e) {
      String errorMessage = "connection_timeout".tr();
      if (e.response != null) {
        errorMessage =
            e.response!.data['message'] ?? "cant_do_this_now_text".tr();
      }
      return ApiResult.failed(errorMessage);
    }
  }
}
