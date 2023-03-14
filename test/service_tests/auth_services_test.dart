import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/auth_services.dart';

import '../service_tests/auth_services_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  test("User login with email (Success)", () async {
    Dio dio = MockDio();
    await dotenv.load(fileName: ".env");
    var data = {
      "user": {"email": "tes@gmail.com", "password": "password"}
    };
    when(dio.post("${dotenv.env['API_URL']}/login/email",
            options: Options(headers: {
              "Content-Type": "application/json",
            }),
            data: jsonEncode(data)))
        .thenAnswer((_) {
      return Future.value(Response<ApiResult<String>>(
          statusCode: 200,
          requestOptions: RequestOptions(
              path: "${dotenv.env['API_URL']}/login/email",
              headers: {
                "Content-Type": "application/json",
              },
              data: jsonEncode(data))));
    });
    ApiResult<String> result = await AuthServices(dio: dio)
        .loginByEmail(email: "tes@gmail.com", password: "password");
    expect(result, equals(ApiResult.success));
  });
}
