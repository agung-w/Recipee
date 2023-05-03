part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = _Initial;
  const factory HomePageState.loaded(
      {required List<Recipe> resultList,
      required List<String> ingredients}) = _Loaded;
  const factory HomePageState.failed(
      {String? message, required List<String> ingredients}) = _Failed;
}
