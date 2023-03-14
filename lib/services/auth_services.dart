import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';

class AuthServices {
  late final Dio _dio;
  late final Options? options;

  AuthServices({Dio? dio, this.options}) {
    _dio = dio ?? Dio(BaseOptions(connectTimeout: const Duration(seconds: 5)));
  }

  Future<ApiResult<String>> loginByEmail(
      {required String email, required String password}) async {
    var data = {
      "user": {"email": email, "password": password}
    };
    try {
      Response result = await _dio.post("${dotenv.env['API_URL']}/login/email",
          options: options ??
              Options(headers: {
                "Content-Type": "application/json",
              }),
          data: jsonEncode(data));
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      return ApiResult.success(result.data['data']['token']);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['message'].toString()
          : "Connection timeout");
    }
  }

  Future<ApiResult<String>> registerByEmail(
      {required String email,
      required String name,
      required String password}) async {
    var data = {
      "user": {"name": name, "email": email, "password": password}
    };
    try {
      Response result = await _dio.post(
        "${dotenv.env['API_URL']}/register/email",
        options: options ??
            Options(headers: {
              "Content-Type": "application/json",
            }),
        data: jsonEncode(data),
      );
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      return ApiResult.success(result.data['data']['token']);
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        var error = e.response!.data['message'] as Map;
        errorMessage = "${error.keys.first} ${error.values.first[0]}";
      }
      return ApiResult.failed(errorMessage);
    }
  }
}
