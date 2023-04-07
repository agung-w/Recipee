part of 'my_profile_page_bloc.dart';

@freezed
class MyProfilePageState with _$MyProfilePageState {
  const factory MyProfilePageState.loading() = _Loading;
  const factory MyProfilePageState.loaded({
    required UserDetail user,
    required ApiResult<List<Recipe?>> savedListResult,
    required ApiResult<List<Recipe?>> createdListResult,
    required ApiResult<List<Recipe?>> draftListResult,
    required ApiResult<List<Recipe?>> rejectedListResult,
    required ApiResult<List<Recipe?>> pendingListResult,
  }) = _Loaded;
  const factory MyProfilePageState.failed({required String message}) = _Failed;
}
