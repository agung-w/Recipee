import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ta_recipe_app/entities/user_detail.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/auth_services.dart';
import 'package:ta_recipe_app/services/user_services.dart';

part 'user_authentication_event.dart';
part 'user_authentication_state.dart';
part 'user_authentication_bloc.freezed.dart';

class UserAuthenticationBloc
    extends Bloc<UserAuthenticationEvent, UserAuthenticationState> {
  UserAuthenticationBloc() : super(const SignedOut()) {
    on<_LoginByEmail>((event, emit) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      if (state is SignedOut) {
        emit(const Loading());
        ApiResult<String> token = await AuthServices()
            .loginByEmail(email: event.email, password: event.password);
        token.map(
          success: (result) {
            pref.setString('token', result.value);
          },
          failed: (result) {
            ScaffoldMessenger.of(event.context)
                .showSnackBar(SnackBar(content: Text(result.message)));
            emit(const SignedOut());
          },
        );
        if (pref.getString('token') != null) {
          ApiResult<UserDetail> user = await UserServices()
              .getSignedInInfo(token: pref.getString('token')!);
          user.map(
              success: (result) {
                Navigator.of(event.context).pop();
                emit(SignedIn(result.value));
              },
              failed: (result) => ScaffoldMessenger.of(event.context)
                  .showSnackBar(SnackBar(content: Text(result.message))));
        }
      }
    });
    on<_Logout>((event, emit) async {
      if (state is SignedIn) {
        emit(const Loading());
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.remove('token');
        if (pref.getString('token') == null) {
          emit(const SignedOut());
        }
      }
    });
    on<_CheckSignInStatus>((event, emit) async {
      emit(const Loading());
      SharedPreferences pref = await SharedPreferences.getInstance();
      String? token = pref.getString('token');
      if (token != null) {
        ApiResult<UserDetail> user =
            await UserServices().getSignedInInfo(token: token);
        user.map(
            success: (result) => emit(SignedIn(result.value)),
            failed: (result) {
              ScaffoldMessenger.of(event.context)
                  .showSnackBar(SnackBar(content: Text(result.message)));
              emit(const SignedOut());
            });
      } else {
        emit(const SignedOut());
      }
    });
  }
}
