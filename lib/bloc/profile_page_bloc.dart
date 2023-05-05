import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/entities/user_detail.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/user_services.dart';

part 'profile_page_event.dart';
part 'profile_page_state.dart';
part 'profile_page_bloc.freezed.dart';

class ProfilePageBloc extends Bloc<ProfilePageEvent, ProfilePageState> {
  ProfilePageBloc() : super(const _Loading()) {
    on<_GetProfileData>((event, emit) async {
      ApiResult<UserDetail> userResult = await UserServices()
          .getUserDetailByUsername(username: event.username);
      userResult.map(
          success: (value) {
            emit(_Loaded(
                user: value.value,
                isSavedListLoading: true,
                isCreatedListLoading: true,
                createdList: [],
                savedList: []));
          },
          failed: (_) =>
              emit(_Failed(message: "cant_load_this_user_profile".tr())));
      if (state is _Loaded) {
        ApiResult<List<Recipe>> savedRecipeList = await UserServices()
            .getSavedRecipeList(username: event.username, token: event.token);
        savedRecipeList.map(
            success: (value) {
              emit((state as _Loaded)
                  .copyWith(savedList: value.value, isSavedListLoading: false));
            },
            failed: (_) => emit((state as _Loaded).copyWith(
                savedListError: "cant_load_saved_recipe_list_text".tr(),
                isSavedListLoading: false)));
        ApiResult<List<Recipe>> createdRecipeList = await UserServices()
            .getCreatedRecipeList(username: event.username, token: event.token);
        createdRecipeList.map(
            success: (value) {
              emit((state as _Loaded).copyWith(
                  createdList: value.value, isCreatedListLoading: false));
            },
            failed: (_) => emit((state as _Loaded).copyWith(
                createdListError: "cant_load_created_recipe_list_text".tr(),
                isCreatedListLoading: false)));
      }
    });
    on<_ChangeSaveStatus>((event, emit) async {
      if (state is _Loaded) {
        List<Recipe> createdList = List.from((state as _Loaded).createdList);
        List<Recipe> savedList = List.from((state as _Loaded).savedList);
        int i =
            createdList.indexWhere((element) => element.id == event.recipeId);

        int j = savedList.indexWhere((element) => element.id == event.recipeId);
        if (i != -1) {
          createdList[i] = createdList[i].copyWith(isSaved: event.isSaved);
          emit((state as _Loaded).copyWith(createdList: createdList));
        }
        if (j != -1) {
          savedList[j] = savedList[j].copyWith(isSaved: event.isSaved);
          emit((state as _Loaded).copyWith(savedList: savedList));
        }
      }
    });
  }
}
