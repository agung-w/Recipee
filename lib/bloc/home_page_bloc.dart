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
    on<_GetRecipeByIngredients>((event, emit) async {
      ApiResult<List<Recipe>> result = await RecipeServices()
          .searchByIngredients(query: event.ingredients, token: event.token);
      result.map(
          success: (value) {
            if (value.value.isEmpty) {
              emit(_Failed(message: "no_result_searh_by_ingredient_text".tr()));
            } else {
              emit(_Loaded(resultList: value.value));
            }
          },
          failed: (value) => emit(_Failed(message: value.message)));
    });
  }
}
