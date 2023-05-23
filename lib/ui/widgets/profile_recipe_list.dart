import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/profile_page_bloc.dart';
import 'package:ta_recipe_app/cubit/save_recipe_cubit.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/ui/widgets/recipe_card_with_creator.dart';

class ProfileRecipeList extends StatelessWidget {
  final List<Recipe> list;

  final String root;
  const ProfileRecipeList({super.key, required this.list, required this.root});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SaveRecipeCubit, SaveRecipeState>(
      listener: (context, state) {
        state.mapOrNull(
          finished: (value) => value.id != null
              ? context.read<ProfilePageBloc>().add(
                  ProfilePageEvent.changeSaveStatus(
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
            root: root,
          );
        }).toList(),
      ),
    );
  }
}
