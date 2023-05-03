import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/recipe_services.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const _Initial()) {
    on<_Started>((event, emit) async {
      List<String> ingredients = ["ayam", "jagung", "wortel"];
      String randomIngredient = (ingredients..shuffle()).first;
      ApiResult<List<Recipe>> result = await RecipeServices()
          .searchByIngredients(query: [randomIngredient], token: event.token);
      result.map(
          success: (value) {
            if (value.value.isEmpty) {
              emit(_Failed(
                  message: "no_result_searh_by_ingredient_text".tr(),
                  ingredients: [randomIngredient]));
            } else {
              emit(_Loaded(
                  resultList: value.value, ingredients: [randomIngredient]));
            }
          },
          failed: (value) => emit(_Failed(
              message: value.message, ingredients: [randomIngredient])));
    });
    // on<_AddIngredient>((event, emit) async {
    //   ApiResult<List<Recipe>> result = await RecipeServices()
    //       .searchByIngredients(query: , token: event.token);
    //   result.map(
    //       success: (value) {
    //         if (value.value.isEmpty) {
    //           emit(_Failed(message: "no_result_searh_by_ingredient_text".tr()));
    //         } else {
    //           emit(_Loaded(resultList: value.value));
    //         }
    //       },
    //       failed: (value) => emit(_Failed(message: value.message)));
    // });
  }
}
