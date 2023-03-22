import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ta_recipe_app/entities/user_detail.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/user_services.dart';

import 'user_services_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  Dio dio = MockDio();
  var options = Options(headers: {
    "Content-Type": "application/json",
    "Authorization": "Bearer token",
  });
  var noTokenOptions = Options(headers: {
    "Content-Type": "application/json",
  });
  group("Get user signed in info", () {
    test("auth token provided (Success)", () async {
      await dotenv.load(fileName: ".env");
      when(dio.get("${dotenv.env['API_URL']}/my-profile", options: options))
          .thenAnswer((_) {
        return Future.value(Response(
            data: {
              "status": 200,
              "message": "Sucess",
              "data": {
                "user": {
                  "name": "Agung",
                  "username": "user_00000001",
                  "email": "agung@gmail.com",
                  "profile_pic_url": null,
                  "followers_count": 0,
                  "following_count": 1
                }
              }
            },
            statusCode: 200,
            requestOptions: RequestOptions(
              path: "${dotenv.env['API_URL']}/my-profile",
            )));
      });
      ApiResult<UserDetail> result =
          await UserServices(dio: dio, options: options)
              .getSignedInInfo(token: "token");
      expect(
          result.mapOrNull(
            success: (value) => value.value.name,
          ),
          equals("Agung"));
    });

    test("auth token not provided (Failed)", () async {
      await dotenv.load(fileName: ".env");
      when(dio.get("${dotenv.env['API_URL']}/my-profile",
              options: noTokenOptions))
          .thenAnswer((_) {
        return Future.value(Response(
            data: {"status": 401, "message": "Nil JSON web token"},
            statusCode: 401,
            requestOptions: RequestOptions(
              path: "${dotenv.env['API_URL']}/my-profile",
            )));
      });
      ApiResult<UserDetail> result =
          await UserServices(dio: dio, options: noTokenOptions)
              .getSignedInInfo(token: "");
      expect(result,
          equals(const ApiResult<UserDetail>.failed("Nil JSON web token")));
    });
  });

  group("Get User by username", () {
    test("user found", () async {
      await dotenv.load(fileName: ".env");
      when(dio.get("${dotenv.env['API_URL']}/profile/user_00000001",
              options: options))
          .thenAnswer((_) {
        return Future.value(Response(
            data: {
              "status": 200,
              "message": "Sucess",
              "data": {
                "user": {
                  "name": "Agung",
                  "username": "user_00000001",
                  "email": "agung@gmail.com",
                  "profile_pic_url": null,
                  "followers_count": 0,
                  "following_count": 1
                }
              }
            },
            statusCode: 200,
            requestOptions: RequestOptions(
              path: "${dotenv.env['API_URL']}/profile/user_00000001",
            )));
      });
      ApiResult<UserDetail> result =
          await UserServices(dio: dio, options: options)
              .getUserDetailByUsername(username: "user_00000001");
      expect(
          result.mapOrNull(
            success: (value) => value.value.name,
          ),
          equals("Agung"));
    });

    test("user not found", () async {
      await dotenv.load(fileName: ".env");
      when(dio.get("${dotenv.env['API_URL']}/profile/user_notfound",
              options: options))
          .thenAnswer((_) {
        return Future.value(Response(
            data: {"status": 404, "message": "User not found"},
            statusCode: 401,
            requestOptions: RequestOptions(
              path: "${dotenv.env['API_URL']}/profile/user_notfound",
            )));
      });
      ApiResult<UserDetail> result =
          await UserServices(dio: dio, options: options)
              .getUserDetailByUsername(username: "user_notfound");
      expect(
          result, equals(const ApiResult<UserDetail>.failed("User not found")));
    });
  });
}
