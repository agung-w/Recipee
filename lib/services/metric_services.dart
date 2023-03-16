import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ta_recipe_app/entities/metric.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';

class MetricServices {
  late final Dio _dio;
  late final Options? options;
  MetricServices({Dio? dio, this.options}) {
    _dio = dio ?? Dio(BaseOptions(connectTimeout: const Duration(seconds: 5)));
  }
  Future<ApiResult<List<Metric?>>> getMetrics() async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/metric/list",
        options: options ??
            Options(headers: {
              "Content-Type": "application/json",
            }),
      );
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      List<Metric?> resultListObj = (result.data['data']['metrics'] as List)
          .map((e) => Metric.fromJson(e))
          .toList();

      return ApiResult.success(resultListObj);
    } on DioError {
      return const ApiResult.failed("Failed to get metrics. Try again later");
    }
  }
}
