import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/recipe_detail_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/cubit/save_recipe_cubit.dart';
import 'package:ta_recipe_app/entities/recipe.dart';

class RecipeCardWithCreator extends StatelessWidget {
  final Recipe recipe;
  const RecipeCardWithCreator({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
            builder: (_, authState) {
              return InkWell(
                onTap: () {
                  context.read<RecipeDetailBloc>().add(
                        RecipeDetailEvent.started(
                            authState: authState,
                            recipeId: recipe.id!,
                            context: context),
                      );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          recipe.posterPicUrl ?? "",
                          height: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => Align(
                            alignment: FractionalOffset.centerLeft,
                            child: Text(
                              recipe.title,
                              style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: recipe.isSaved == true
                                  ? IconButton(
                                      padding: EdgeInsets.zero,
                                      constraints: const BoxConstraints(),
                                      icon: const Icon(Icons.bookmark),
                                      onPressed: () {
                                        context
                                            .read<SaveRecipeCubit>()
                                            .removeSavedRecipe(
                                              id: recipe.id!,
                                              context: context,
                                              state: authState,
                                            );
                                      },
                                    )
                                  : IconButton(
                                      padding: EdgeInsets.zero,
                                      constraints: const BoxConstraints(),
                                      icon: const Icon(Icons.bookmark_border),
                                      onPressed: () {
                                        context
                                            .read<SaveRecipeCubit>()
                                            .saveRecipe(
                                              id: recipe.id!,
                                              context: context,
                                              state: authState,
                                            );
                                      },
                                    ),
                            ),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(recipe.title))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.fromLTRB(2, 4, 8, 0),
            child: Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Theme.of(context).colorScheme.primary),
                    child: Image.network(
                      recipe.user.photoUrl ?? "",
                      errorBuilder: (context, error, stackTrace) => Icon(
                        Icons.person,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    )),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      recipe.user.name,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }
}
