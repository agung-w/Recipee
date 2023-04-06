part of 'my_profile_page_bloc.dart';

@freezed
class MyProfilePageState with _$MyProfilePageState {
  const factory MyProfilePageState.loading() = _Loading;
  const factory MyProfilePageState.loaded(
      {required SignedIn authState,
      required ApiResult<List<Recipe?>> savedListResult,
      required ApiResult<List<Recipe?>> cretedListResult}) = _Loaded;
  const factory MyProfilePageState.failed({required String message}) = _Failed;
}
