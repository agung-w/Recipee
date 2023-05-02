part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.getRecipeByIngredients(
      {required List<String> ingredients}) = _GetRecipeByIngredients;
}
