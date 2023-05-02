import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/recipe_services.dart';
import 'package:ta_recipe_app/ui/pages/login_page.dart';

part 'save_recipe_state.dart';
part 'save_recipe_cubit.freezed.dart';

class SaveRecipeCubit extends Cubit<SaveRecipeState> {
  SaveRecipeCubit() : super(const SaveRecipeState.loading());
  Future<void> saveRecipe(
      {required int? id,
      required BuildContext context,
      required UserAuthenticationState state}) async {
    if (state is SignedIn) {
      if (id != null) {
        emit(const _Loading());
        ApiResult<String> result =
            await RecipeServices().saveRecipe(recipeId: id, token: state.token);
        result.map(
          failed: (value) => emit(_Loaded(id: id, isSaved: null)),
          success: (value) => emit(_Loaded(id: id, isSaved: true)),
        );
      } else {
        emit(_Loaded(id: id, isSaved: null));
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text("cant_save_this_recipe_now_text").tr()));
      }
    } else if (state is Loading) {
      emit(const _Loading());
    } else {
      Navigator.of(context, rootNavigator: true)
          .push(MaterialPageRoute(builder: (_) => const LoginPage()));
    }
  }

  Future<void> removeSavedRecipe(
      {required int id,
      required BuildContext context,
      required UserAuthenticationState state}) async {
    if (state is SignedIn) {
      emit(const _Loading());
      ApiResult<String> result = await RecipeServices()
          .removeSavedRecipe(recipeId: id, token: state.token);
      result.map(
        failed: (value) => emit(_Loaded(id: id, isSaved: true)),
        success: (value) => emit(_Loaded(id: id, isSaved: null)),
      );
    }
  }
}
