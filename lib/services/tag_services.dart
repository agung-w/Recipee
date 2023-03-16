import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ta_recipe_app/entities/tag.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';

class TagServices {
  late final Dio _dio;
  late final Options? options;
  TagServices({Dio? dio, this.options}) {
    _dio = dio ?? Dio(BaseOptions(connectTimeout: const Duration(seconds: 5)));
  }
  Future<ApiResult<List<Tag?>>> getTags() async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/tag/list",
        options: options ??
            Options(headers: {
              "Content-Type": "application/json",
            }),
      );
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      List<Tag?> resultListObj = (result.data['data']['tags'] as List)
          .map((e) => Tag.fromJson(e))
          .toList();

      return ApiResult.success(resultListObj);
    } on DioError {
      return const ApiResult.failed("Failed to get tag list. Try again later");
    }
  }
}
