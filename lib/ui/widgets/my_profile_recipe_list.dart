import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/my_profile_page_bloc.dart';
import 'package:ta_recipe_app/cubit/save_recipe_cubit.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/ui/widgets/recipe_card_with_creator.dart';

class MyProfileRecipeList extends StatelessWidget {
  final List<Recipe> list;
  const MyProfileRecipeList({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SaveRecipeCubit, SaveRecipeState>(
      listener: (context, state) {
        state.mapOrNull(
          finished: (value) => value.id != null
              ? context.read<MyProfilePageBloc>().add(
                  MyProfilePageEvent.changeSaveStatus(
                      recipeId: value.id!, isSaved: value.isSaved))
              : null,
        );
      },
      child: GridView(
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 0.63,
            crossAxisCount: 2),
        children: list.map((e) {
          return RecipeCardWithCreator(
            recipe: e,
          );
        }).toList(),
      ),
    );
  }
}
