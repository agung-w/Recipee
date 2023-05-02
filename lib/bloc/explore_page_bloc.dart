import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/recipe_services.dart';

part 'explore_page_event.dart';
part 'explore_page_state.dart';
part 'explore_page_bloc.freezed.dart';

class ExplorePageBloc extends Bloc<ExplorePageEvent, ExplorePageState> {
  ExplorePageBloc() : super(const _Initial()) {
    on<_Started>((event, emit) async {
      ApiResult<List<Recipe>> result =
          await RecipeServices().getRandomRecipes();
      result.map(
          success: (value) {
            if (value.value.isEmpty) {
              emit(_Failed(message: "cant_load_explore_result_now_text".tr()));
            } else {
              emit(_Loaded(recipeList: value.value));
            }
          },
          failed: (value) => emit(_Failed(message: value.message)));
    });
    on<_Search>((event, emit) async {
      if (event.query.isNotEmpty) {
        ApiResult<List<Recipe>> result =
            await RecipeServices().searchByTitle(query: event.query);
        result.map(
            success: (value) {
              if (value.value.isEmpty) {
                emit(_Failed(message: "no_result_search_by_title_text".tr()));
              } else {
                emit(_Loaded(recipeList: value.value));
              }
            },
            failed: (value) => emit(_Failed(message: value.message)));
      }
    });
    on<_RefreshResult>((event, emit) async {
      if (event.query.isEmpty) {
        add(const _Started());
      } else {
        add(_Search(query: event.query));
      }
    });
  }
}
