part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.started({String? token}) = _Started;
  const factory HomePageEvent.addIngredient(
      {required String ingredient, String? token}) = _AddIngredient;
}
