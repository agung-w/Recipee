import 'package:bloc/bloc.dart';
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
      ApiResult<UserDetail> user = await UserServices()
          .getUserDetailByUsername(username: event.username);
      ApiResult<List<Recipe?>> savedRecipeList =
          await UserServices().getSavedRecipeList(username: event.username);
      ApiResult<List<Recipe?>> createdRecipeList =
          await UserServices().getCreatedRecipeList(username: event.username);
      user.map(
        success: (value) {
          emit(_Loaded(
              user: value.value,
              savedListResult: savedRecipeList,
              createdListResult: createdRecipeList));
        },
        failed: (value) {
          emit(_Failed(message: value.message));
        },
      );
    });
  }
}
