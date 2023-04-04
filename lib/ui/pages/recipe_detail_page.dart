import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/recipe_detail_bloc.dart';
import 'package:ta_recipe_app/entities/recipe_detail.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';

class RecipeDetailPage extends StatelessWidget {
  const RecipeDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeDetailBloc, RecipeDetailState>(
      builder: (context, state) {
        return state.map(
          loaded: (value) {
            RecipeDetail recipe = value.recipeDetail;
            return Scaffold(
              body: CustomScrollView(slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    color: Theme.of(context).colorScheme.secondary,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    child: Image.network(
                      recipe.posterPicUrl ?? "",
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Align(
                        alignment: FractionalOffset.bottomRight,
                        child: Text(
                          recipe.title,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recipe.title,
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (recipe.serving != null) ...{
                              Expanded(
                                  child: Row(
                                children: [
                                  Text("serving_label_recipe_detail",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium)
                                      .tr(),
                                  Text(" ${recipe.serving} ",
                                      textAlign: TextAlign.start,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium),
                                  Icon(
                                    Icons.person,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  )
                                ],
                              ))
                            },
                            if (recipe.prepTime != null) ...{
                              Expanded(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.timer_outlined,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  Text(" ${recipe.prepTime} ",
                                      textAlign: TextAlign.start,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium),
                                  Text("minute_label_recipe_detail",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium)
                                      .tr(namedArgs: {'s': ''}),
                                ],
                              ))
                            },
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            recipe.description,
                            maxLines: 3,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ingredients_title_text",
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ).tr(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: recipe.recipeIngredients
                              .map((e) => Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: ListTile(
                                      leading: Container(
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Image.network(
                                            e.ingredient.picUrl ?? "",
                                            errorBuilder:
                                                (context, error, stackTrace) =>
                                                    Icon(
                                                      Icons.image_outlined,
                                                      size: 30,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onPrimary,
                                                    )),
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            );
          },
          failed: (value) {
            return Text(value.message ?? "");
          },
          loading: (value) {
            return Scaffold(
              body: LoadingIndicator(
                size: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
            );
          },
        );
      },
    );
  }
}
