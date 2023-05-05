import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/entities/ingredient.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/ingredient_services.dart';
import 'package:ta_recipe_app/services/recipe_services.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const _Initial()) {
    on<_Started>((event, emit) async {
      emit(const _Initial());
      ApiResult<Ingredient> randomResult =
          await IngredientServices().getRandomIngredient();
      var ingredient = randomResult.mapOrNull(success: (value) => value.value);
      if (ingredient != null) {
        ApiResult<List<Recipe>> result = await RecipeServices()
            .searchByIngredients(query: [ingredient.name], token: event.token);
        result.map(
            success: (value) {
              if (value.value.isEmpty) {
                emit(_Failed(
                    message: "no_result_searh_by_ingredient_text".tr(),
                    ingredients: [ingredient]));
              } else {
                emit(_Loaded(
                    resultList: value.value, ingredients: [ingredient]));
              }
            },
            failed: (value) => emit(
                _Failed(message: value.message, ingredients: [ingredient])));
      } else {
        _Failed(
            message: randomResult.mapOrNull(
              failed: (value) => value.message,
            ),
            ingredients: []);
      }
    });
    on<_AddIngredient>((event, emit) async {
      List<Ingredient>? ingredients = state.mapOrNull(
          loaded: (value) => value.ingredients,
          failed: (value) => value.ingredients);
      if (ingredients != null) {
        List<Ingredient> ingredientsCopy = List.from(ingredients);
        if (ingredientsCopy
                .indexWhere((element) => element.name == event.ingredient) ==
            -1) {
          ApiResult<Ingredient> findResult =
              await IngredientServices().findIngredient(name: event.ingredient);
          var ingredient =
              findResult.mapOrNull(success: (value) => value.value);
          if (ingredient != null) {
            ingredientsCopy.add(ingredient);
            ApiResult<List<Recipe>> result = await RecipeServices()
                .searchByIngredients(
                    query: ingredientsCopy.map((e) => e.name).toList(),
                    token: event.token);
            result.map(
                success: (value) {
                  if (value.value.isEmpty) {
                    emit(_Failed(
                        message: "no_result_searh_by_ingredient_text".tr(),
                        ingredients: ingredientsCopy));
                  } else {
                    emit(_Loaded(
                        resultList: value.value, ingredients: ingredientsCopy));
                  }
                },
                failed: (value) => emit(_Failed(
                    message: value.message, ingredients: ingredientsCopy)));
          } else {
            List<Ingredient> ingredientsCopy = List.from(ingredients);
            _Failed(
                ingredients: ingredientsCopy
                  ..add(Ingredient(name: event.ingredient)));
          }
        }
        event.afterFinished();
      }
    });
    on<_DeleteIngredient>((event, emit) async {
      List<Ingredient>? ingredients = state.mapOrNull(
          loaded: (value) => value.ingredients,
          failed: (value) => value.ingredients);
      if (ingredients != null) {
        List<Ingredient> ingredientsCopy = List.from(ingredients);
        ingredientsCopy.removeWhere((e) => e == event.ingredient);
        if (ingredientsCopy.isNotEmpty) {
          ApiResult<List<Recipe>> result = await RecipeServices()
              .searchByIngredients(
                  query: ingredientsCopy.map((e) => e.name).toList(),
                  token: event.token);
          result.map(
              success: (value) {
                if (value.value.isEmpty) {
                  emit(_Failed(
                      message: "no_result_searh_by_ingredient_text".tr(),
                      ingredients: ingredientsCopy));
                } else {
                  emit(_Loaded(
                      resultList: value.value, ingredients: ingredientsCopy));
                }
              },
              failed: (value) => emit(_Failed(
                  message: value.message, ingredients: ingredientsCopy)));
        } else {
          emit(_Failed(
              message: "add_ingredient_to_get_recipe_list_text".tr(),
              ingredients: ingredientsCopy));
        }
      }
    });
    on<_ChangeSaveStatus>((event, emit) async {
      if (state is _Loaded) {
        List<Recipe> recipeList = List.from((state as _Loaded).resultList);
        int i =
            recipeList.indexWhere((element) => element.id == event.recipeId);
        if (i != -1) {
          recipeList[i] = recipeList[i].copyWith(isSaved: event.isSaved);
          emit(_Loaded(
              resultList: recipeList,
              ingredients: (state as _Loaded).ingredients));
        }
      }
    });
  }
}
