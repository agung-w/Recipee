import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:latlong2/latlong.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/entities/shipping_address.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ta_recipe_app/entities/shipping_fee.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/helpers/custom_placemark.dart';
import 'package:ta_recipe_app/services/order_services.dart';

part 'shipping_state.dart';
part 'shipping_cubit.freezed.dart';

class ShippingCubit extends Cubit<ShippingState> {
  ShippingCubit() : super(const ShippingState.loading());
  void getShippingFee() async {}
  Future<void> changeAddressInfo(
      {required String address,
      required String recepientName,
      required String phoneNumber,
      required LatLng latLng,
      String? addressNotes,
      required SignedIn authUser}) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    ShippingAddress shippingAddress = ShippingAddress(
        address: address,
        recipientName: recepientName,
        recipientContact: phoneNumber,
        latLng: latLng,
        addressNotes: addressNotes);
    pref.setString("shippingAddress", jsonEncode(shippingAddress.toJson()));

    emit(ShippingState.loaded(
        shippingAddress: shippingAddress,
        shippingFee:
            await _getShippingFee(shippingAddress.latLng!, authUser.token)));
  }

  void getCurrentLocation(
      {required BuildContext context, required SignedIn authUser}) async {
    emit(const _Loading());
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? result = pref.getString("shippingAddress");
    if (result != null) {
      var savedAddress = ShippingAddress.fromJson(jsonDecode(result));

      emit(_Loaded(
          shippingAddress: savedAddress,
          shippingFee:
              await _getShippingFee(savedAddress.latLng!, authUser.token)));
    } else {
      _getCurrentLocation(authUser).then((value) async {
        placemarkFromCoordinates(value.latitude, value.longitude)
            .then((address) async {
          emit(_Loaded(
              shippingAddress: ShippingAddress(
                  address: CustomPlacemark(address.first).toString(),
                  recipientName: authUser.user.name,
                  latLng: LatLng(value.latitude, value.longitude)),
              shippingFee: await _getShippingFee(
                  LatLng(value.latitude, value.longitude), authUser.token)));
        });
      });
    }
  }

  Future<ApiResult<ShippingFee>> _getShippingFee(
      LatLng latlng, String token) async {
    return OrderServices().getShippingFee(
        lat: latlng.latitude, lon: latlng.longitude, token: token);
  }

  Future<Position> _getCurrentLocation(SignedIn authUser) async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      emit(_Loaded(
          shippingAddress: ShippingAddress(recipientName: authUser.user.name),
          shippingFee: ApiResult.failed("address_not_set_yet_text".tr())));
      return Future.error('Location service disabled');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        emit(_Loaded(
            shippingAddress: ShippingAddress(recipientName: authUser.user.name),
            shippingFee: ApiResult.failed("address_not_set_yet_text".tr())));
        return Future.error('Location permision denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      emit(_Loaded(
          shippingAddress: ShippingAddress(recipientName: authUser.user.name),
          shippingFee: ApiResult.failed("address_not_set_yet_text".tr())));
      return Future.error('Location permissions are permanently denied');
    }
    return await Geolocator.getCurrentPosition();
  }
}
