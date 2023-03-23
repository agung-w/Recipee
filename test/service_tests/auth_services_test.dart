import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/auth_services.dart';

import 'auth_services_test.mocks.dart';

@GenerateMocks([Dio])
void main() async {
  late Dio mockDio = MockDio();
  await dotenv.load(fileName: ".env");

  group("Login by email", () {
    var options = Options(headers: {
      "Content-Type": "application/json",
    });
    test("Use valid credentials (Success)", () async {
      when(mockDio.post(
        '${dotenv.env['API_URL']}/login/email',
        data: jsonEncode({
          "user": {"email": "tes@gmail.com", "password": "123456"}
        }),
        options: options,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: {
                "status": 200,
                "message": "Sucess",
                "data": {"token": "jwt-token"}
              },
              requestOptions:
                  RequestOptions(path: '${dotenv.env['API_URL']}/login/email'),
            ),
          ));
      ApiResult<String> token =
          await AuthServices(dio: mockDio, options: options)
              .loginByEmail(email: "tes@gmail.com", password: "123456");
      expect(token, equals(const ApiResult.success("jwt-token")));
    });
    test("Use invalid credentials (Failed)", () async {
      when(mockDio.post(
        '${dotenv.env['API_URL']}/login/email',
        data: jsonEncode({
          "user": {"email": "tes@gmail.com", "password": "password"}
        }),
        options: options,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 401,
              data: {"status": 401, "message": "Invalid credentials"},
              requestOptions:
                  RequestOptions(path: '${dotenv.env['API_URL']}/login/email'),
            ),
          ));
      ApiResult<String> token =
          await AuthServices(dio: mockDio, options: options)
              .loginByEmail(email: "tes@gmail.com", password: "password");
      expect(
          token, equals(const ApiResult<String>.failed("Invalid credentials")));
    });
  });

  group("Register by email", () {
    var options = Options(headers: {
      "Content-Type": "application/json",
    });
    test("Use valid parameter (Success)", () async {
      when(mockDio.post(
        '${dotenv.env['API_URL']}/register/email',
        data: jsonEncode({
          "user": {
            "name": "tes",
            "email": "tes@gmail.com",
            "username": "username",
            "password": "123456",
          }
        }),
        options: options,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 200,
              data: {
                "status": 200,
                "message": "Sucess",
                "data": {"token": "jwt-token"}
              },
              requestOptions:
                  RequestOptions(path: '${dotenv.env['API_URL']}/login/email'),
            ),
          ));
      ApiResult<String> token =
          await AuthServices(dio: mockDio, options: options).registerByEmail(
              email: "tes@gmail.com",
              password: "123456",
              name: "tes",
              username: 'username');
      expect(token, equals(const ApiResult.success("jwt-token")));
    });
    test("Use existing email (Failed)", () async {
      when(mockDio.post(
        '${dotenv.env['API_URL']}/register/email',
        data: jsonEncode({
          "user": {
            "name": "tes",
            "email": "tes@gmail.com",
            "username": "username",
            "password": "password"
          }
        }),
        options: options,
      )).thenAnswer((_) async => Future.value(
            Response(
              statusCode: 422,
              data: {
                "status": 422,
                "message": {
                  "email": ["has already been taken"]
                }
              },
              requestOptions:
                  RequestOptions(path: '${dotenv.env['API_URL']}/login/email'),
            ),
          ));
      ApiResult<String> token =
          await AuthServices(dio: mockDio, options: options).registerByEmail(
              email: "tes@gmail.com",
              password: "password",
              name: "tes",
              username: 'username');
      expect(
          token,
          equals(
              const ApiResult<String>.failed("email has already been taken")));
    });
  });
}
