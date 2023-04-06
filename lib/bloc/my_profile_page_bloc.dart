import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/user_services.dart';

part 'my_profile_page_event.dart';
part 'my_profile_page_state.dart';
part 'my_profile_page_bloc.freezed.dart';

class MyProfilePageBloc extends Bloc<MyProfilePageEvent, MyProfilePageState> {
  MyProfilePageBloc() : super(const _Loading()) {
    on<_Started>((event, emit) async {
      if (event.authState is SignedIn) {
        SignedIn signedInUser = (event.authState as SignedIn);
        ApiResult<List<Recipe?>> savedRecipeList = await UserServices()
            .getSavedRecipeList(username: signedInUser.user.username);
        ApiResult<List<Recipe?>> createdRecipeList = await UserServices()
            .getCreatedRecipeList(username: signedInUser.user.username);
        ApiResult<List<Recipe?>> draftRecipeList =
            await UserServices().getDraftRecipeList(token: signedInUser.token);
        ApiResult<List<Recipe?>> rejectedRecipeList = await UserServices()
            .getRejectedRecipeList(token: signedInUser.token);
        ApiResult<List<Recipe?>> pendingRecipeList = await UserServices()
            .getPendingRecipeList(token: signedInUser.token);

        emit(_Loaded(
            authState: signedInUser,
            savedListResult: savedRecipeList,
            createdListResult: createdRecipeList,
            draftListResult: draftRecipeList,
            rejectedListResult: rejectedRecipeList,
            pendingListResult: pendingRecipeList));
      } else if (event.authState is Loading) {
        emit(const _Loading());
      } else {
        emit(_Failed(message: event.authState.toString()));
      }
    });
  }
}
