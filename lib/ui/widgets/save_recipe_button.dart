import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/cubit/save_recipe_cubit.dart';
import 'package:ta_recipe_app/entities/recipe.dart';

class SaveRecipeButton extends StatelessWidget {
  const SaveRecipeButton(
      {super.key, required this.recipe, this.size, this.color});

  final Recipe recipe;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
      builder: (context, state) {
        return recipe.isSaved == true
            ? IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: const Icon(Icons.bookmark),
                onPressed: () {
                  context.read<SaveRecipeCubit>().removeSavedRecipe(
                        id: recipe.id!,
                        context: context,
                        state: state,
                      );
                },
              )
            : IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                color: color,
                iconSize: size,
                icon: const Icon(Icons.bookmark_border),
                onPressed: () {
                  context.read<SaveRecipeCubit>().saveRecipe(
                        id: recipe.id!,
                        context: context,
                        state: state,
                      );
                },
              );
      },
    );
  }
}
