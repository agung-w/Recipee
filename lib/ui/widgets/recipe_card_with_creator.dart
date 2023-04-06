import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/recipe_detail_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/cubit/save_recipe_cubit.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/ui/widgets/save_recipe_button.dart';
import 'package:ta_recipe_app/ui/widgets/small_user_profile_pic.dart';

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
                              style: Theme.of(context).textTheme.displayMedium,
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
                                child: SaveRecipeButton(recipe: recipe)),
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
                SmallUserProfilePic(photoUrl: recipe.user.photoUrl),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        recipe.user.name,
                        style: Theme.of(context).textTheme.bodyMedium,
                      )),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
