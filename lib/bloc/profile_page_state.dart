part of 'profile_page_bloc.dart';

@freezed
class ProfilePageState with _$ProfilePageState {
  const factory ProfilePageState.loading() = _Loading;
  const factory ProfilePageState.loaded(
      {required UserDetail user,
      required ApiResult<List<Recipe?>> savedListResult,
      required ApiResult<List<Recipe?>> createdListResult}) = _Loaded;
  const factory ProfilePageState.failed({required String message}) = _Failed;
}
