import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ta_recipe_app/entities/user.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';

class UserServices {
  late final Dio _dio;
  UserServices({Dio? dio}) {
    _dio = dio ?? Dio(BaseOptions(connectTimeout: const Duration(seconds: 5)));
  }

  Future<ApiResult<User>> getSignedInInfo({required String token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/my-profile",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        }),
      );
      User user = User.fromJson(result.data['data']['user']);
      // log(result.data);
      return ApiResult.success(user);
    } on DioError catch (e) {
      return ApiResult.failed(e.response != null
          ? e.response!.data['message'].toString()
          : "Connection timeout");
    }
  }
}
