import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ta_recipe_app/bloc/home_page_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/cubit/save_recipe_cubit.dart';
import 'package:ta_recipe_app/entities/ingredient.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';
import 'package:ta_recipe_app/ui/widgets/recipe_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
      builder: (context, authState) {
        return Scaffold(
            body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                title: Text(
                  "home_page_title_text",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineSmall,
                ).tr(),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: SliverToBoxAdapter(
                  child: BlocBuilder<HomePageBloc, HomePageState>(
                    builder: (context, state) {
                      return state.maybeMap(
                          initial: (value) =>
                              const Center(child: LoadingIndicator(size: 16)),
                          orElse: () => Wrap(
                              spacing: 8,
                              children: state.mapOrNull(
                                      loaded: (value) => value.ingredients
                                          .map((e) => _IngredientBox(
                                                ingredient: Ingredient(name: e),
                                              ))
                                          .toList(),
                                      failed: (value) => value.ingredients
                                          .map((e) => _IngredientBox(
                                                ingredient: Ingredient(name: e),
                                              ))
                                          .toList()) ??
                                  [const SizedBox()]));
                    },
                  ),
                ),
              )
            ];
          },
          body: BlocBuilder<HomePageBloc, HomePageState>(
            builder: (context, state) {
              return RefreshIndicator(
                onRefresh: () async {},
                child: state.map(
                  initial: (value) => const Center(
                      child: Padding(
                    padding: EdgeInsets.all(16),
                    child: LoadingIndicator(size: 16),
                  )),
                  failed: (value) => SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Center(
                      child: Text(value.message ??
                          "cant_load_explore_result_now_text".tr()),
                    ),
                  ),
                  loaded: (value) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: GridView(
                        gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 10,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          repeatPattern: QuiltedGridRepeatPattern.same,
                          pattern: const [
                            QuiltedGridTile(4, 5),
                            QuiltedGridTile(4, 5),
                            QuiltedGridTile(4, 10),
                          ],
                        ),
                        children: value.resultList
                            .map((e) =>
                                BlocBuilder<SaveRecipeCubit, SaveRecipeState>(
                                  builder: (context, state) {
                                    return state.when(
                                      loaded: (id, isSaved) {
                                        if (e.id == id) {
                                          return RecipeCard(
                                            recipe:
                                                e.copyWith(isSaved: isSaved),
                                          );
                                        } else {
                                          return RecipeCard(
                                            recipe: e,
                                          );
                                        }
                                      },
                                      loading: () => RecipeCard(
                                        recipe: e,
                                      ),
                                    );
                                  },
                                ))
                            .toList()),
                  ),
                ),
              );
            },
          ),
        ));
      },
    );
  }
}

class _IngredientBox extends StatelessWidget {
  final Ingredient ingredient;
  const _IngredientBox({required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(100),
      ),
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.65),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  ingredient.name.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
            InkWell(
              child: Icon(
                Icons.close,
                size: 18,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
