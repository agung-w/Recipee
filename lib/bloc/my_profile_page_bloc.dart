import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/entities/user_detail.dart';
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
            user: signedInUser.user,
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

    on<_RefreshSavedRecipeList>((event, emit) async {
      if (event.authState is SignedIn) {
        ApiResult<List<Recipe?>> savedRecipeList = await UserServices()
            .getSavedRecipeList(
                username: (event.authState as SignedIn).user.username);
        if (state is _Loaded) {
          emit((state as _Loaded).copyWith(savedListResult: savedRecipeList));
        } else {
          emit(
            _Loaded(
              user: (event.authState as SignedIn).user,
              savedListResult: savedRecipeList,
              createdListResult: const ApiResult.success([]),
              draftListResult: const ApiResult.success([]),
              rejectedListResult: const ApiResult.success([]),
              pendingListResult: const ApiResult.success([]),
            ),
          );
        }
      } else if (event.authState is Loading) {
        emit(const _Loading());
      } else {
        emit(_Failed(message: event.authState.toString()));
      }
    });

    on<_RefreshCreatedRecipeList>((event, emit) async {
      if (event.authState is SignedIn) {
        ApiResult<List<Recipe?>> createdRecipeList = await UserServices()
            .getCreatedRecipeList(
                username: (event.authState as SignedIn).user.username);
        if (state is _Loaded) {
          emit((state as _Loaded)
              .copyWith(createdListResult: createdRecipeList));
        } else {
          emit(
            _Loaded(
              user: (event.authState as SignedIn).user,
              savedListResult: const ApiResult.success([]),
              createdListResult: createdRecipeList,
              draftListResult: const ApiResult.success([]),
              rejectedListResult: const ApiResult.success([]),
              pendingListResult: const ApiResult.success([]),
            ),
          );
        }
      } else if (event.authState is Loading) {
        emit(const _Loading());
      } else {
        emit(_Failed(message: event.authState.toString()));
      }
    });

    on<_RefreshDraftRecipeList>((event, emit) async {
      if (event.authState is SignedIn) {
        ApiResult<List<Recipe?>> draftRecipeList = await UserServices()
            .getDraftRecipeList(token: (event.authState as SignedIn).token);
        if (state is _Loaded) {
          emit((state as _Loaded).copyWith(draftListResult: draftRecipeList));
        } else {
          emit(
            _Loaded(
              user: (event.authState as SignedIn).user,
              savedListResult: const ApiResult.success([]),
              createdListResult: const ApiResult.success([]),
              draftListResult: draftRecipeList,
              rejectedListResult: const ApiResult.success([]),
              pendingListResult: const ApiResult.success([]),
            ),
          );
        }
      } else if (event.authState is Loading) {
        emit(const _Loading());
      } else {
        emit(_Failed(message: event.authState.toString()));
      }
    });

    on<_RefreshRejectedRecipeList>((event, emit) async {
      if (event.authState is SignedIn) {
        ApiResult<List<Recipe?>> rejectedRecipeList = await UserServices()
            .getRejectedRecipeList(token: (event.authState as SignedIn).token);
        if (state is _Loaded) {
          emit((state as _Loaded)
              .copyWith(rejectedListResult: rejectedRecipeList));
        } else {
          emit(
            _Loaded(
              user: (event.authState as SignedIn).user,
              savedListResult: const ApiResult.success([]),
              createdListResult: const ApiResult.success([]),
              draftListResult: const ApiResult.success([]),
              rejectedListResult: rejectedRecipeList,
              pendingListResult: const ApiResult.success([]),
            ),
          );
        }
      } else if (event.authState is Loading) {
        emit(const _Loading());
      } else {
        emit(_Failed(message: event.authState.toString()));
      }
    });

    on<_RefreshPendingRecipeList>((event, emit) async {
      if (event.authState is SignedIn) {
        ApiResult<List<Recipe?>> pendingRecipeList = await UserServices()
            .getPendingRecipeList(token: (event.authState as SignedIn).token);
        if (state is _Loaded) {
          emit((state as _Loaded)
              .copyWith(pendingListResult: pendingRecipeList));
        } else {
          emit(
            _Loaded(
              user: (event.authState as SignedIn).user,
              savedListResult: const ApiResult.success([]),
              createdListResult: const ApiResult.success([]),
              draftListResult: const ApiResult.success([]),
              rejectedListResult: const ApiResult.success([]),
              pendingListResult: pendingRecipeList,
            ),
          );
        }
      } else if (event.authState is Loading) {
        emit(const _Loading());
      } else {
        emit(_Failed(message: event.authState.toString()));
      }
    });
  }
}
