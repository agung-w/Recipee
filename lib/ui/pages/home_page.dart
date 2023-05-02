import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ta_recipe_app/bloc/home_page_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/cubit/save_recipe_cubit.dart';
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
            ];
          },
          body: BlocBuilder<HomePageBloc, HomePageState>(
            builder: (context, state) {
              return RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<HomePageBloc>()
                      .add(HomePageEvent.getRecipeByIngredients(
                          ingredients: ["wortel"],
                          token: authState.mapOrNull(
                            signedIn: (value) => value.token,
                          )));
                },
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
