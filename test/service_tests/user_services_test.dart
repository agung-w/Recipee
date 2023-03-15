import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ta_recipe_app/entities/user.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/user_services.dart';

import 'user_services_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  group("Get current user", () {
    test("Get current user auth token provided (Success)", () async {
      Dio dio = MockDio();
      var options = Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer token",
      });
      await dotenv.load(fileName: ".env");
      when(dio.get("${dotenv.env['API_URL']}/my-profile", options: options))
          .thenAnswer((_) {
        return Future.value(Response(
            data: {
              "status": 200,
              "message": "Sucess",
              "data": {
                "user": {"name": "tes"}
              }
            },
            statusCode: 200,
            requestOptions: RequestOptions(
              path: "${dotenv.env['API_URL']}/my-profile",
            )));
      });
      ApiResult<User> result = await UserServices(dio: dio, options: options)
          .getSignedInInfo(token: "token");
      expect(result, equals(ApiResult.success));
    });

    test("Get current user auth token not provided (Failed)", () async {
      Dio dio = MockDio();
      var options = Options(headers: {
        "Content-Type": "application/json",
      });
      await dotenv.load(fileName: ".env");
      when(dio.get("${dotenv.env['API_URL']}/my-profile", options: options))
          .thenAnswer((_) {
        return Future.value(Response(
            data: {"status": 401, "message": "unauthorized"},
            statusCode: 401,
            requestOptions: RequestOptions(
              path: "${dotenv.env['API_URL']}/my-profile",
            )));
      });
      ApiResult<User> result = await UserServices(dio: dio, options: options)
          .getSignedInInfo(token: "");
      expect(result, equals(const ApiResult<User>.failed("unauthorized")));
    });
  });
}
