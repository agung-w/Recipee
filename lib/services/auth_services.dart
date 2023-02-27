import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';

class AuthServices {
  final Dio _dio = Dio(BaseOptions(connectTimeout: const Duration(seconds: 5)));

  Future<ApiResult<String>> loginByEmail(
      {required String email, required String password}) async {
    var data = {
      "user": {"email": email, "password": password}
    };
    try {
      Response result = await _dio.post("${dotenv.env['API_URL']}/login/email",
          options: Options(headers: {
            "Content-Type": "application/json",
          }),
          data: jsonEncode(data));

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
        options: Options(headers: {
          "Content-Type": "application/json",
        }),
        data: jsonEncode(data),
      );
      return ApiResult.success(result.data['data']['token']);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['message'].toString()
          : "Connection timeout");
    }
  }
}
