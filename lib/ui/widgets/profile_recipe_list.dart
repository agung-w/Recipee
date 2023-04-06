import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/cubit/save_recipe_cubit.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/ui/widgets/recipe_card_with_creator.dart';

class ProfileRecipeList extends StatelessWidget {
  final List<Recipe?> list;
  const ProfileRecipeList({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(16),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.63,
          crossAxisCount: 2),
      children: list.map((e) {
        return BlocBuilder<SaveRecipeCubit, SaveRecipeState>(
          builder: (context, state) {
            return state.when(
                initial: (id, isSaved, _) {
                  if (e!.id == id) {
                    return RecipeCardWithCreator(
                      recipe: e.copyWith(isSaved: isSaved),
                    );
                  } else {
                    return RecipeCardWithCreator(
                      recipe: e,
                    );
                  }
                },
                loading: () => RecipeCardWithCreator(
                      recipe: e!,
                    ));
          },
        );
      }).toList(),
    );
  }
}
