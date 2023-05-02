part of 'explore_page_bloc.dart';

@freezed
class ExplorePageState with _$ExplorePageState {
  const factory ExplorePageState.initial() = _Initial;
  const factory ExplorePageState.loaded({required List<Recipe> recipeList}) =
      _Loaded;
  const factory ExplorePageState.failed({String? message}) = _Failed;
}
