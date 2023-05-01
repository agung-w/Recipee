import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ta_recipe_app/entities/order.dart';
import 'package:ta_recipe_app/entities/order_recipe_bundle.dart';
import 'package:ta_recipe_app/entities/shipping_address.dart';
import 'package:ta_recipe_app/entities/shipping_fee.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';

class OrderServices {
  late final Dio _dio;
  late final Options? options;
  OrderServices({Dio? dio, this.options}) {
    _dio = dio ?? Dio(BaseOptions(connectTimeout: const Duration(seconds: 5)));
  }
  Future<ApiResult<ShippingFee>> getShippingFee(
      {required double lat, required double lon, required String token}) async {
    try {
      Response result =
          await _dio.get("${dotenv.env['API_URL']}/order/shipping-fee",
              options: options ??
                  Options(headers: {
                    "Content-Type": "application/json",
                    "Authorization": "Bearer $token",
                  }),
              data: jsonEncode({
                "latlong": [lat, lon]
              }));
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }
      ShippingFee resultObj = ShippingFee.fromJson(result.data['data']);

      return ApiResult.success(resultObj);
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        errorMessage = e.response!.data['message'];
      }
      return ApiResult.failed(errorMessage);
    }
  }

  Future<ApiResult<Order>> checkPaymentStatus(
      {required String id, required String token}) async {
    try {
      Response result = await _dio.put(
        "${dotenv.env['API_URL']}/order/check-payment-status?id=$id",
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
      return ApiResult.success(Order.fromJson(result.data['data']['order']));
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        errorMessage = e.response!.data['message'];
      }
      return ApiResult.failed(errorMessage);
    }
  }

  Future<ApiResult<Order>> createOrder(
      {required ShippingAddress shippingAddress,
      required double shippingfee,
      required List<OrderRecipeBundle> bundles,
      required String token}) async {
    try {
      Response result = await _dio.post("${dotenv.env['API_URL']}/order/create",
          options: options ??
              Options(headers: {
                "Content-Type": "application/json",
                "Authorization": "Bearer $token",
              }),
          data: jsonEncode({
            "shipping_address": shippingAddress.address,
            "shipping_address_notes": shippingAddress.addressNotes,
            "recipient_name": shippingAddress.recipientName,
            "recipient_contact": shippingAddress.recipientContact,
            "shipping_fee": shippingfee,
            "order_details_attributes": bundles
                .map((e) => e.quantity > 0
                    ? {
                        "recipe_bundle_id": e.id,
                        "quantity": e.quantity,
                        "price": e.price,
                        "total_price": e.totalPrice
                      }
                    : null)
                .toList()
          }));
      if (result.statusCode != 200) {
        throw (DioError(
            response: result, requestOptions: result.requestOptions));
      }

      return ApiResult.success(Order.fromJson(result.data['data']['order']));
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        errorMessage = e.response!.data['message'];
      }
      return ApiResult.failed(errorMessage);
    }
  }

  Future<ApiResult<List<Order>>> getOrderHistoryList(
      {required String token}) async {
    try {
      Response result = await _dio.get(
        "${dotenv.env['API_URL']}/order/history",
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
      List<Order>? resultListObj = (result.data['data']['orders'] as List)
          .map((e) => Order.fromJson(e))
          .toList();
      return ApiResult.success(resultListObj);
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        errorMessage = e.response!.data['message'];
      }
      return ApiResult.failed(errorMessage);
    }
  }

  Future<ApiResult<String>> cancelOrder(
      {required String id, required String token}) async {
    try {
      Response result = await _dio.put(
        "${dotenv.env['API_URL']}/order/cancel?id=$id",
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
      return ApiResult.success(result.data['message']);
    } on DioError catch (e) {
      String errorMessage = "Connection timeout";
      if (e.response != null) {
        errorMessage = e.response!.data['message'];
      }
      return ApiResult.failed(errorMessage);
    }
  }
}
