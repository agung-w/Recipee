import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ta_recipe_app/bloc/home_page_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/cubit/save_recipe_cubit.dart';
import 'package:ta_recipe_app/entities/ingredient.dart';
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
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                sliver: SliverToBoxAdapter(
                  child: BlocBuilder<HomePageBloc, HomePageState>(
                    builder: (context, state) {
                      return state.maybeMap(
                          initial: (value) =>
                              const Center(child: LoadingIndicator(size: 16)),
                          orElse: () => Wrap(spacing: 8, children: [
                                for (var item in state.mapOrNull(
                                        loaded: (value) => value.ingredients,
                                        failed: (value) => value.ingredients) ??
                                    []) ...{
                                  _IngredientFilterItem(
                                    ingredient: item,
                                    authState: authState,
                                  )
                                },
                                _AddIngredientButton(authState: authState)
                              ]));
                    },
                  ),
                ),
              )
            ];
          },
          body: BlocBuilder<HomePageBloc, HomePageState>(
            builder: (context, state) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<HomePageBloc>().add(HomePageEvent.refreshList(
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
                  failed: (value) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Center(
                        child: Text(
                            value.message ?? "cant_load_result_now_text".tr()),
                      ),
                    ),
                  ),
                  loaded: (value) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: BlocListener<SaveRecipeCubit, SaveRecipeState>(
                      listener: (context, state) {
                        state.mapOrNull(
                          finished: (value) => value.id != null
                              ? context.read<HomePageBloc>().add(
                                  HomePageEvent.changeSaveStatus(
                                      recipeId: value.id!,
                                      isSaved: value.isSaved))
                              : null,
                        );
                      },
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
                              .map((e) => RecipeCard(
                                    recipe: e,
                                    root: 'home',
                                  ))
                              .toList()),
                    ),
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

class _IngredientFilterItem extends StatelessWidget {
  final Ingredient ingredient;
  final UserAuthenticationState authState;
  const _IngredientFilterItem(
      {required this.ingredient, required this.authState});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: Theme.of(context).colorScheme.primary)),
      height: 30,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.65),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      margin: const EdgeInsets.only(left: 2, right: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Theme.of(context).colorScheme.onPrimary),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          ingredient.picUrl ?? "",
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => Icon(
                            Icons.image,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      ingredient.name.toString(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              child: Icon(
                Icons.close,
                size: 24,
                color: Theme.of(context).colorScheme.primary,
              ),
              onTap: () {
                context.read<HomePageBloc>().add(HomePageEvent.deleteIngredient(
                    ingredient: ingredient,
                    token: authState.mapOrNull(
                      signedIn: (value) => value.token,
                    )));
              },
            )
          ],
        ),
      ),
    );
  }
}

class _AddIngredientButton extends StatefulWidget {
  final UserAuthenticationState authState;
  const _AddIngredientButton({required this.authState});

  @override
  State<_AddIngredientButton> createState() => _AddIngredientButtonState();
}

class _AddIngredientButtonState extends State<_AddIngredientButton> {
  bool isFocus = false;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 6),
      margin: const EdgeInsets.only(top: 8),
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: Theme.of(context).colorScheme.primary)),
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.65),
        child: InkWell(
          onTap: () {
            setState(() {
              isFocus = true;
            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Offstage(
                offstage: isFocus,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      margin: const EdgeInsets.only(left: 2, right: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.add,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Text(
                      "add_text".tr(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
              Offstage(
                offstage: !isFocus,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width *
                                              0.2),
                                  child: TextField(
                                    controller: controller,
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                                    onSubmitted: (value) {
                                      context
                                          .read<HomePageBloc>()
                                          .add(HomePageEvent.addIngredient(
                                              ingredient: value,
                                              afterFinished: closeInput,
                                              token: widget.authState.mapOrNull(
                                                signedIn: (value) =>
                                                    value.token,
                                              )));
                                    },
                                    decoration: const InputDecoration(
                                        constraints: BoxConstraints(),
                                        focusColor: null,
                                        isDense: true,
                                        border: InputBorder.none),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      child: Icon(
                        Icons.close,
                        size: 24,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      onTap: () {
                        closeInput();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void closeInput() {
    return setState(() {
      isFocus = false;
      controller.clear();
    });
  }
}
