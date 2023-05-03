part of 'create_recipe_bloc.dart';

@freezed
class CreateRecipeEvent with _$CreateRecipeEvent {
  const factory CreateRecipeEvent.create(
      {required UserAuthenticationState state,
      required BuildContext context}) = _Create;

  const factory CreateRecipeEvent.addIngredient(
      {required String ingredient,
      required TextEditingController controller,
      required BuildContext context}) = _AddIngredient;

  const factory CreateRecipeEvent.editTitle({required String title}) =
      _EditTitle;

  const factory CreateRecipeEvent.editServing({required String serving}) =
      _EditServing;

  const factory CreateRecipeEvent.editPrepTime({required String prepTime}) =
      _EditPrepTime;

  const factory CreateRecipeEvent.editDescription(
      {required String description}) = _EditDescription;

  const factory CreateRecipeEvent.editIngredientName(
      {required RecipeIngredient ingredient,
      required String name}) = _EditIngredientName;

  const factory CreateRecipeEvent.editIngredientQuantity(
      {required RecipeIngredient ingredient,
      required int? quantity}) = _EditIngredientQuantity;

  const factory CreateRecipeEvent.editIngredientMetric(
      {required RecipeIngredient ingredient,
      required Metric? metric}) = _EditIngredientMetric;

  const factory CreateRecipeEvent.deleteIngredient(
      {required RecipeIngredient ingredient}) = _DeleteIngredient;

  const factory CreateRecipeEvent.addCookingStep() = _AddCookingStep;

  const factory CreateRecipeEvent.editCookingStepDescription(
      {required CookingStep cookingStep,
      required String description}) = _EditCookingStepDescription;

  const factory CreateRecipeEvent.deleteCookingStep(
      {required CookingStep cookingStep}) = _DeleteCookingStep;

  const factory CreateRecipeEvent.addTag(
      {required String tag,
      required BuildContext context,
      required TextEditingController controller}) = _AddTag;

  const factory CreateRecipeEvent.deleteTag({required Tag tag}) = _DeleteTag;

  const factory CreateRecipeEvent.submit(
      {required BuildContext context,
      required UserAuthenticationState authState}) = _Submit;

  const factory CreateRecipeEvent.addRecipePoster({required XFile? file}) =
      _AddRecipePoster;

  const factory CreateRecipeEvent.editCookingStepPic({
    required XFile? file,
    required CookingStep cookingStep,
  }) = _EditCookingStepPic;

  const factory CreateRecipeEvent.deletePoster(
      {required String picUrl, required BuildContext context}) = _DeletePoster;

  const factory CreateRecipeEvent.deleteCookingStepPic(
      {required String picUrl,
      required BuildContext context,
      required CookingStep cookingStep}) = _DeleteCookingStepPic;

  const factory CreateRecipeEvent.cancel({required BuildContext context}) =
      _Cancel;
}
