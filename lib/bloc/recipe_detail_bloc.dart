import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/cubit/comment_cubit.dart';
import 'package:ta_recipe_app/entities/recipe_detail.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/recipe_services.dart';
import 'package:ta_recipe_app/ui/pages/login_page.dart';
import 'package:ta_recipe_app/ui/pages/recipe_detail_page.dart';

part 'recipe_detail_event.dart';
part 'recipe_detail_state.dart';
part 'recipe_detail_bloc.freezed.dart';

class RecipeDetailBloc extends Bloc<RecipeDetailEvent, RecipeDetailState> {
  RecipeDetailBloc() : super(const _Loading()) {
    on<_Started>((event, emit) async {
      if (event.authState is SignedIn) {
        if (state is _Loaded) {
          if ((state as _Loaded).recipeDetail.id == event.recipeId) {
            Navigator.of(event.context).push(
                MaterialPageRoute(builder: (_) => const RecipeDetailPage()));
            emit(state);
          } else {
            await _getData(emit, event);
          }
        } else {
          await _getData(emit, event);
        }
      } else if (event.authState is Loading) {
        emit(const _Loading());
      } else {
        Navigator.of(event.context, rootNavigator: true)
            .push(MaterialPageRoute(builder: (_) => const LoginPage()));
        emit(_Failed(message: event.authState.toString()));
      }
    });

    on<_RefreshDetail>((event, emit) async {
      if (state is _Loaded) {
        emit((state as _Loaded).copyWith(recipeDetail: event.recipe));
      }
    });

    on<_DeleteRecipe>((event, emit) async {
      if (state is _Loaded) {
        ApiResult<String> result = await RecipeServices().delete(
            id: (state as _Loaded).recipeDetail.id!,
            token: (state as _Loaded).authState.token);
        result.map(
            success: (_) {
              ScaffoldMessenger.of(event.context).showSnackBar(
                  SnackBar(content: const Text("delete_recipe_success").tr()));
              Navigator.of(event.context).popUntil((route) => route.isFirst);
            },
            failed: (value) => ScaffoldMessenger.of(event.context)
                .showSnackBar(SnackBar(content: Text(value.message))));
      }
    });
  }

  Future<void> _getData(Emitter<RecipeDetailState> emit, _Started event) async {
    if (event.recipeId != null) {
      emit(const _Loading());
      Navigator.of(event.context)
          .push(MaterialPageRoute(builder: (_) => const RecipeDetailPage()));
      String token = (event.authState as SignedIn).token;
      ApiResult<RecipeDetail> recipe = await RecipeServices()
          .getRecipeDetail(id: event.recipeId!, token: token);
      recipe.map(success: (value) {
        event.context
            .read<CommentCubit>()
            .getComments(id: value.value.id ?? -1, token: token);
        emit(_Loaded(
            recipeDetail: value.value,
            authState: (event.authState as SignedIn)));
      }, failed: (value) {
        emit(_Failed(message: value.message));
      });
    } else {
      emit(_Failed(message: "cant_get_this_recipe_detail_now_text".tr()));
    }
  }
}
