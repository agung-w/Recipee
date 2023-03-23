import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/recipe_services.dart';

part 'save_recipe_state.dart';
part 'save_recipe_cubit.freezed.dart';

class SaveRecipeCubit extends Cubit<SaveRecipeState> {
  SaveRecipeCubit() : super(const SaveRecipeState.initial());
  void saveRecipe(
      {required int id,
      required BuildContext context,
      required UserAuthenticationState state}) async {
    if (state is SignedIn) {
      emit(const _Loading());
      ApiResult<String> result =
          await RecipeServices().saveRecipe(recipeId: id, token: state.token);
      result.map(
        failed: (value) =>
            emit(_Initial(id: id, isSaved: null, result: result)),
        success: (value) =>
            emit(_Initial(id: id, isSaved: true, result: result)),
      );
    }
  }

  void removeSavedRecipe(
      {required int id,
      required BuildContext context,
      required UserAuthenticationState state}) async {
    if (state is SignedIn) {
      emit(const _Loading());
      ApiResult<String> result = await RecipeServices()
          .removeSavedRecipe(recipeId: id, token: state.token);
      result.map(
        failed: (value) =>
            emit(_Initial(id: id, isSaved: true, result: result)),
        success: (value) =>
            emit(_Initial(id: id, isSaved: null, result: result)),
      );
    }
  }
}
