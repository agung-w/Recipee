part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.started({String? token}) = _Started;
  const factory HomePageEvent.addIngredient(
      {required String ingredient,
      String? token,
      required Function() afterFinished}) = _AddIngredient;
  const factory HomePageEvent.deleteIngredient(
      {required Ingredient ingredient, String? token}) = _DeleteIngredient;
  const factory HomePageEvent.changeSaveStatus(
      {required int recipeId, required bool? isSaved}) = _ChangeSaveStatus;
  const factory HomePageEvent.refreshList({String? token}) = _RefreshList;
}
