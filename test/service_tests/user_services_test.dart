import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ta_recipe_app/entities/user.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/user_services.dart';

import 'user_services_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Dio>()])
void main() {
  test("User login with email (Success)", () async {
    Dio dio = MockDio();
    await dotenv.load(fileName: ".env");
    when(dio.get("${dotenv.env['API_URL']}/my-profile",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer token",
        }))).thenAnswer((_) {
      return Future.value(Response<ApiResult<String>>(
          statusCode: 200,
          requestOptions: RequestOptions(
            path: "${dotenv.env['API_URL']}/login/email",
            headers: {
              "Content-Type": "application/json",
              "Authorization": "Bearer token",
            },
          )));
    });
    ApiResult<User> result =
        await UserServices(dio: dio).getSignedInInfo(token: "token");
    expect(result, equals(ApiResult.success));
  });
}
