import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
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
  MyProfilePageBloc() : super(const _Initial()) {
    on<_Started>((event, emit) async {
      if (event.authState is SignedIn) {
        SignedIn signedInUser = (event.authState as SignedIn);
        emit(_Loaded(
          user: signedInUser.user,
          isSavedListLoading: true,
          isCreatedListLoading: true,
          isDraftListLoading: true,
          isRejectedListLoading: true,
          isPendingListLoading: true,
          createdList: [],
          draftList: [],
          pendingList: [],
          rejectedList: [],
          savedList: [],
        ));
        if (state is _Loaded) {
          ApiResult<List<Recipe>> savedResult = await UserServices()
              .getSavedRecipeList(
                  username: signedInUser.user.username,
                  token: signedInUser.token);
          savedResult.map(
              success: (value) => emit((state as _Loaded)
                  .copyWith(savedList: value.value, isSavedListLoading: false)),
              failed: (_) => emit((state as _Loaded).copyWith(
                  savedListError: "cant_load_saved_recipe_list_text".tr(),
                  isSavedListLoading: false)));
          ApiResult<List<Recipe>> createdResult = await UserServices()
              .getCreatedRecipeList(
                  username: signedInUser.user.username,
                  token: signedInUser.token);
          createdResult.map(
              success: (value) {
                emit((state as _Loaded).copyWith(
                    createdList: value.value, isCreatedListLoading: false));
              },
              failed: (_) => emit((state as _Loaded).copyWith(
                  createdListError: "cant_load_created_recipe_list_text".tr(),
                  isCreatedListLoading: false)));
          ApiResult<List<Recipe>> draftResult = await UserServices()
              .getDraftRecipeList(token: signedInUser.token);
          draftResult.map(
              success: (value) => emit((state as _Loaded)
                  .copyWith(draftList: value.value, isDraftListLoading: false)),
              failed: (_) => emit((state as _Loaded).copyWith(
                  draftListError: "cant_load_draft_recipe_list_text".tr(),
                  isDraftListLoading: false)));
          ApiResult<List<Recipe>> rejectedResult = await UserServices()
              .getRejectedRecipeList(token: signedInUser.token);
          rejectedResult.map(
              success: (value) => emit((state as _Loaded).copyWith(
                  rejectedList: value.value, isRejectedListLoading: false)),
              failed: (_) => emit((state as _Loaded).copyWith(
                  rejectedListError: "cant_load_rejected_recipe_list_text".tr(),
                  isRejectedListLoading: false)));
          ApiResult<List<Recipe>> pendingResult = await UserServices()
              .getPendingRecipeList(token: signedInUser.token);
          pendingResult.map(
              success: (value) => emit((state as _Loaded).copyWith(
                  pendingList: value.value, isPendingListLoading: false)),
              failed: (_) => emit((state as _Loaded).copyWith(
                  pendingListError: "cant_load_pending_recipe_list_text".tr(),
                  isPendingListLoading: false)));
        }
      } else {
        emit(const _Initial());
      }
    });

    on<_RefreshSavedRecipeList>((event, emit) async {
      if (event.authState is SignedIn) {
        if (state is _Loaded) {
          emit((state as _Loaded)
              .copyWith(isSavedListLoading: true, savedList: []));
          ApiResult<List<Recipe>> result = await UserServices()
              .getSavedRecipeList(
                  username: (event.authState as SignedIn).user.username,
                  token: (event.authState as SignedIn).token);
          result.map(
              success: (value) => emit((state as _Loaded)
                  .copyWith(savedList: value.value, isSavedListLoading: false)),
              failed: (_) => emit((state as _Loaded).copyWith(
                  savedListError: "cant_load_saved_recipe_list_text".tr(),
                  isSavedListLoading: false)));
        }
      } else {
        emit(const _Initial());
      }
    });

    on<_RefreshCreatedRecipeList>((event, emit) async {
      if (event.authState is SignedIn) {
        if (state is _Loaded) {
          emit((state as _Loaded).copyWith(isCreatedListLoading: true));
          ApiResult<List<Recipe>> result = await UserServices()
              .getCreatedRecipeList(
                  username: (event.authState as SignedIn).user.username,
                  token: (event.authState as SignedIn).token);
          result.map(
              success: (value) => emit((state as _Loaded).copyWith(
                  createdList: value.value, isCreatedListLoading: false)),
              failed: (_) => emit((state as _Loaded).copyWith(
                  createdListError: "cant_load_created_recipe_list_text".tr(),
                  isCreatedListLoading: false)));
        }
      } else {
        emit(const _Initial());
      }
    });

    on<_RefreshDraftRecipeList>((event, emit) async {
      if (event.authState is SignedIn) {
        if (state is _Loaded) {
          emit((state as _Loaded).copyWith(isDraftListLoading: true));
          ApiResult<List<Recipe>> result = await UserServices()
              .getDraftRecipeList(token: (event.authState as SignedIn).token);
          result.map(
              success: (value) => emit((state as _Loaded)
                  .copyWith(draftList: value.value, isDraftListLoading: false)),
              failed: (_) => emit((state as _Loaded).copyWith(
                  draftListError: "cant_load_draft_recipe_list_text".tr(),
                  isDraftListLoading: false)));
        }
      } else {
        emit(const _Initial());
      }
    });

    on<_RefreshRejectedRecipeList>((event, emit) async {
      if (event.authState is SignedIn) {
        if (state is _Loaded) {
          emit((state as _Loaded).copyWith(isRejectedListLoading: true));
          ApiResult<List<Recipe>> result = await UserServices()
              .getRejectedRecipeList(
                  token: (event.authState as SignedIn).token);
          result.map(
              success: (value) => emit((state as _Loaded).copyWith(
                  rejectedList: value.value, isRejectedListLoading: false)),
              failed: (_) => emit((state as _Loaded).copyWith(
                  rejectedListError: "cant_load_rejected_recipe_list_text".tr(),
                  isRejectedListLoading: false)));
        }
      } else {
        emit(const _Initial());
      }
    });

    on<_RefreshPendingRecipeList>((event, emit) async {
      if (event.authState is SignedIn) {
        if (state is _Loaded) {
          emit((state as _Loaded).copyWith(isPendingListLoading: true));
          ApiResult<List<Recipe>> result = await UserServices()
              .getPendingRecipeList(token: (event.authState as SignedIn).token);
          result.map(
              success: (value) => emit((state as _Loaded).copyWith(
                  pendingList: value.value, isPendingListLoading: false)),
              failed: (_) => emit((state as _Loaded).copyWith(
                  pendingListError: "cant_load_rejected_recipe_list_text".tr(),
                  isPendingListLoading: false)));
        }
      } else {
        emit(const _Initial());
      }
    });
    on<_ChangeSaveStatus>((event, emit) async {
      if (state is _Loaded) {
        var currentState = (state as _Loaded);
        List<Recipe> createdList = List.from(currentState.createdList);
        List<Recipe> draftList = List.from(currentState.draftList);
        List<Recipe> rejectedList = List.from(currentState.rejectedList);
        List<Recipe> pendingList = List.from(currentState.pendingList);
        int i =
            createdList.indexWhere((element) => element.id == event.recipeId);
        int j = draftList.indexWhere((element) => element.id == event.recipeId);
        int k =
            rejectedList.indexWhere((element) => element.id == event.recipeId);
        int l =
            pendingList.indexWhere((element) => element.id == event.recipeId);
        if (i != -1) {
          createdList[i] = createdList[i].copyWith(isSaved: event.isSaved);
          emit((state as _Loaded).copyWith(createdList: createdList));
        }
        if (k != -1) {
          rejectedList[k] = rejectedList[k].copyWith(isSaved: event.isSaved);
          emit((state as _Loaded).copyWith(rejectedList: rejectedList));
          if (j != -1) {
            draftList[j] = draftList[j].copyWith(isSaved: event.isSaved);
            emit((state as _Loaded).copyWith(draftList: draftList));
          }
        }
        if (l != -1) {
          pendingList[l] = pendingList[l].copyWith(isSaved: event.isSaved);
          emit((state as _Loaded).copyWith(pendingList: pendingList));
          if (j != -1) {
            draftList[j] = draftList[j].copyWith(isSaved: event.isSaved);
            emit((state as _Loaded).copyWith(draftList: draftList));
          }
        }
      }
    });
  }
}
