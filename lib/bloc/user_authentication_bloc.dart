import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ta_recipe_app/entities/user.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/auth_services.dart';
import 'package:ta_recipe_app/services/user_services.dart';

part 'user_authentication_event.dart';
part 'user_authentication_state.dart';
part 'user_authentication_bloc.freezed.dart';

class UserAuthenticationBloc
    extends Bloc<UserAuthenticationEvent, UserAuthenticationState> {
  UserAuthenticationBloc() : super(const _SignedOut()) {
    on<_LoginByEmail>((event, emit) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      if (state is _SignedOut) {
        emit(const _Loading());
        ApiResult<String> token = await AuthServices()
            .loginByEmail(email: event.email, password: event.password);
        token.map(
          success: (result) {
            pref.setString('token', result.value);
          },
          failed: (result) {
            ScaffoldMessenger.of(event.context)
                .showSnackBar(SnackBar(content: Text(result.message)));
            emit(const _SignedOut());
          },
        );
        ApiResult<User> user = await UserServices().getSignedInInfo(
            token: token.map(
                success: (result) => result.value, failed: (_) => ''));
        user.map(success: (value) {
          Navigator.of(event.context).pop();
          emit(_SignedIn(value.value));
        }, failed: (value) {
          ScaffoldMessenger.of(event.context)
              .showSnackBar(SnackBar(content: Text(value.message)));
          emit(const _SignedOut());
        });
      }
    });
    on<_Logout>((event, emit) async {
      if (state is _SignedIn) {
        emit(const _Loading());
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.remove('token');
        if (pref.getString('token') == null) {
          emit(const _SignedOut());
        }
      }
    });
    on<_CheckSignInStatus>((event, emit) async {
      emit(const _Loading());
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? token = pref.getString('token');
      if (token != null) {
        ApiResult<User> user =
            await UserServices().getSignedInInfo(token: token);
        user.map(
            success: (result) => emit(_SignedIn(result.value)),
            failed: (result) {
              ScaffoldMessenger.of(event.context)
                  .showSnackBar(SnackBar(content: Text(result.message)));
              emit(const _SignedOut());
            });
      } else {
        emit(const _SignedOut());
      }
    });
  }
}
