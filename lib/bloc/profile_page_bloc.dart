import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/entities/user_detail.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/user_services.dart';

part 'profile_page_event.dart';
part 'profile_page_state.dart';
part 'profile_page_bloc.freezed.dart';

class ProfilePageBloc extends Bloc<ProfilePageEvent, ProfilePageState> {
  ProfilePageBloc() : super(const _Loading()) {
    on<_Started>((event, emit) async {
      UserDetail user = (event.authState as SignedIn).user;
      ApiResult<List<Recipe?>> savedRecipeList =
          await UserServices().getSavedRecipeList(username: user.username);
      ApiResult<List<Recipe?>> createdRecipeList =
          await UserServices().getCreatedRecipeList(username: user.username);
      if (savedRecipeList is Success && createdRecipeList is Success) {
        emit(_Loaded(
            user: user,
            savedRecipeList: (savedRecipeList as Success<List<Recipe?>>).value,
            createdRecipeList:
                (createdRecipeList as Success<List<Recipe?>>).value));
      } else
        (emit(_Loaded(user: user, savedRecipeList: [], createdRecipeList: [])));
    });
  }
}
