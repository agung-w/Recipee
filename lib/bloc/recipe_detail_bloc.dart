import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/entities/recipe_comment.dart';
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
    on<_RefreshComment>((event, emit) async {
      if ((state as _Loaded).comment is Success) {
        if (((state as _Loaded).comment as Success).value == null) {
          ApiResult<RecipeComment?> comment = await RecipeServices()
              .getFirstRecipeComment(
                  id: event.recipeId, token: (event.token as SignedIn).token);
          emit((state as _Loaded).copyWith(comment: comment));
        }
      } else {
        ApiResult<RecipeComment?> comment = await RecipeServices()
            .getFirstRecipeComment(
                id: event.recipeId, token: (event.token as SignedIn).token);
        emit((state as _Loaded).copyWith(comment: comment));
      }
    });
  }

  Future<void> _getData(Emitter<RecipeDetailState> emit, _Started event) async {
    emit(const _Loading());
    Navigator.of(event.context)
        .push(MaterialPageRoute(builder: (_) => const RecipeDetailPage()));
    String token = (event.authState as SignedIn).token;
    ApiResult<RecipeDetail> recipe = await RecipeServices()
        .getRecipeDetail(id: event.recipeId, token: token);
    ApiResult<RecipeComment?> comment = await RecipeServices()
        .getFirstRecipeComment(id: event.recipeId, token: token);
    recipe.map(success: (value) {
      emit(_Loaded(
          recipeDetail: value.value,
          comment: comment,
          authState: (event.authState as SignedIn)));
    }, failed: (value) {
      emit(_Failed(message: value.message));
    });
  }
}
