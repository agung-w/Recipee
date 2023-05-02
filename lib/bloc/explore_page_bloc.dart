import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/entities/user.dart';

part 'explore_page_event.dart';
part 'explore_page_state.dart';
part 'explore_page_bloc.freezed.dart';

class ExplorePageBloc extends Bloc<ExplorePageEvent, ExplorePageState> {
  ExplorePageBloc() : super(_Initial()) {
    on<_Started>((event, emit) {
      Future.delayed(const Duration(seconds: 3));
      List<Recipe> list = [];
      for (var i = 0; i < 50; i++) {
        list.add(Recipe(
            title: "title $i",
            description: "description",
            user: const User(name: "name", username: "username")));
      }
      emit(_Loaded(recipeList: list));
    });
  }
}
