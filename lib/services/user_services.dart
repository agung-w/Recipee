import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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
}
