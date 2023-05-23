import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/bloc/order_page_bloc.dart';
import 'package:ta_recipe_app/bloc/profile_page_bloc.dart';
import 'package:ta_recipe_app/bloc/recipe_detail_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'dart:ui' as ui;
import 'package:ta_recipe_app/cubit/comment_cubit.dart';
import 'package:ta_recipe_app/cubit/save_recipe_cubit.dart';
import 'package:ta_recipe_app/cubit/shipping_cubit.dart';
import 'package:ta_recipe_app/entities/cooking_step.dart';
import 'package:ta_recipe_app/entities/recipe_comment.dart';
import 'package:ta_recipe_app/entities/recipe_detail.dart';
import 'package:ta_recipe_app/entities/recipe_ingredient.dart';
import 'package:ta_recipe_app/entities/user.dart';
import 'package:ta_recipe_app/entities/user_detail.dart';
import 'package:ta_recipe_app/ui/pages/order_page.dart';
import 'package:ta_recipe_app/ui/pages/profile_page.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';
import 'package:ta_recipe_app/ui/widgets/save_recipe_button.dart';
import 'package:ta_recipe_app/ui/widgets/small_user_profile_pic.dart';

class RecipeDetailPage extends StatelessWidget {
  final String root;
  const RecipeDetailPage({super.key, required this.root});

  @override
  Widget build(BuildContext context) {
    double posterSize = MediaQuery.of(context).size.width;
    ScrollController controller = ScrollController();

    return BlocBuilder<RecipeDetailBloc, RecipeDetailState>(
      buildWhen: (previous, current) =>
          current.mapOrNull(loaded: (value) => value.root) == root,
      builder: (context, state) {
        return state.map(
          loaded: (value) {
            RecipeDetail recipe = value.recipeDetail;
            return Scaffold(
                body: GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                    },
                    child: NestedScrollView(
                        headerSliverBuilder:
                            (BuildContext context, bool innerBoxIsScrolled) {
                          return [];
                        },
                        body: CustomScrollView(
                            controller: controller,
                            physics: const AlwaysScrollableScrollPhysics(),
                            slivers: [
                              Builder(builder: (context) {
                                return SliverOverlapAbsorber(
                                  handle: NestedScrollView
                                      .sliverOverlapAbsorberHandleFor(context),
                                  sliver: SliverLayoutBuilder(
                                    builder: (BuildContext headerContext,
                                        constraints) {
                                      final scrolled =
                                          constraints.scrollOffset + 50 <
                                              posterSize;
                                      return RecipeDetailAppBar(
                                          scrolled: scrolled,
                                          recipe: recipe,
                                          authState: value.authState);
                                    },
                                  ),
                                );
                              }),
                              SliverToBoxAdapter(
                                child: Container(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  width: posterSize,
                                  height: posterSize,
                                  child: Image.network(
                                    recipe.posterPicUrl ?? "",
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) => Align(
                                      alignment: FractionalOffset.bottomRight,
                                      child: Text(
                                        recipe.title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SliverToBoxAdapter(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 8, 16, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        recipe.title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium,
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.clip,
                                        maxLines: 3,
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                )
                                              ],
                                            ))
                                          },
                                          if (recipe.prepTime != null) ...{
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Icon(
                                                  Icons.timer_outlined,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
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
                                            )
                                          },
                                        ],
                                      ),
                                      ExpandedDescriptionBox(
                                          text: recipe.description),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8, bottom: 16),
                                        child: Wrap(
                                          spacing: 8, // space between items
                                          children: recipe.tags!
                                              .map(
                                                (e) => Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 8,
                                                      vertical: 4),
                                                  margin: const EdgeInsets.only(
                                                      top: 8),
                                                  decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .primary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                  ),
                                                  constraints: BoxConstraints(
                                                      maxWidth:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.65),
                                                  child: Text(e.name.toString(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelSmall!
                                                          .merge(TextStyle(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .onPrimary))),
                                                ),
                                              )
                                              .toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SliverToBoxAdapter(
                                child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                    child: CreatorContainer(
                                      user: value.recipeDetail.user,
                                      authState: value.authState,
                                      root: root,
                                    )),
                              ),
                              SliverToBoxAdapter(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 8, 16, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "ingredients_title_text",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium,
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ).tr(),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: recipe.recipeIngredients
                                              .map((e) =>
                                                  IngredientTile(ingredient: e))
                                              .toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (recipe.cookingSteps.isNotEmpty) ...{
                                SliverToBoxAdapter(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            16, 0, 16, 16),
                                        child: Text(
                                          "cooking_step_title_text",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium,
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                        ).tr(),
                                      ),
                                      ConstrainedBox(
                                        constraints: BoxConstraints(
                                            minHeight: 0,
                                            maxHeight: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.23),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              for (int i = 0;
                                                  i <
                                                      recipe
                                                          .cookingSteps.length;
                                                  i++) ...{
                                                if (i == 0) ...{
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 16,
                                                            right: 16),
                                                    child: CookingStepTile(
                                                      cookingStep: recipe
                                                          .cookingSteps[i],
                                                    ),
                                                  )
                                                } else ...{
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 16),
                                                    child: CookingStepTile(
                                                      cookingStep: recipe
                                                          .cookingSteps[i],
                                                    ),
                                                  )
                                                }
                                              }
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              },
                              SliverToBoxAdapter(
                                child: _CommentSection(
                                  recipe: recipe,
                                  root: root,
                                  authState: value.authState,
                                ),
                              ),
                            ]))));
          },
          failed: (value) {
            return Scaffold(
                appBar: AppBar(),
                body: Center(child: Text(value.message ?? "")));
          },
          loading: (value) {
            return Scaffold(
              body: Center(
                child: LoadingIndicator(
                  size: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class ExpandedDescriptionBox extends StatefulWidget {
  const ExpandedDescriptionBox({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<ExpandedDescriptionBox> createState() => _ExpandedDescriptionBoxState();
}

class _ExpandedDescriptionBoxState extends State<ExpandedDescriptionBox> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: LayoutBuilder(builder: (context, constraints) {
        final span = TextSpan(
            text: widget.text, style: Theme.of(context).textTheme.bodySmall);
        final tp = TextPainter(text: span, textDirection: ui.TextDirection.ltr);
        tp.layout(maxWidth: constraints.maxWidth);
        final numLines = tp.computeLineMetrics().length;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.text,
              overflow: isExpanded == true ? null : TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: isExpanded == true ? null : 3,
            ),
            if (isExpanded == false && numLines > 3) ...{
              InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = true;
                    });
                  },
                  child: Text(
                    "show_more_text",
                    style: Theme.of(context).textTheme.labelSmall,
                  ).tr())
            },
            if (isExpanded == true && numLines > 3) ...{
              InkWell(
                  onTap: () {
                    setState(() {
                      isExpanded = false;
                    });
                  },
                  child: Text(
                    "show_less_text",
                    style: Theme.of(context).textTheme.labelSmall,
                  ).tr())
            }
          ],
        );
      }),
    );
  }
}

class RecipeDetailAppBar extends StatelessWidget {
  const RecipeDetailAppBar(
      {super.key,
      required this.scrolled,
      required this.recipe,
      required this.authState});

  final bool scrolled;
  final RecipeDetail recipe;
  final SignedIn authState;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: scrolled ? Colors.transparent : null,
      pinned: true,
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart_outlined),
              onPressed: () {
                context.read<OrderPageBloc>().add(OrderPageEvent.started(
                    id: recipe.id!, authState: authState));
                context
                    .read<ShippingCubit>()
                    .getCurrentLocation(authUser: authState, context: context);
                Navigator.of(context, rootNavigator: true)
                    .push(MaterialPageRoute(
                        builder: (_) => OrderPage(
                              authState: authState,
                              recipeId: recipe.id!,
                            )));
              },
            )),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: BlocBuilder<SaveRecipeCubit, SaveRecipeState>(
            builder: (context, state) {
              return state.when(
                  finished: (id, isSaved) {
                    if (recipe.id == id) {
                      return SaveRecipeButton(
                          recipe: recipe.copyWith(isSaved: isSaved));
                    } else {
                      return SaveRecipeButton(recipe: recipe);
                    }
                  },
                  loading: () => SaveRecipeButton(recipe: recipe));
            },
          ),
        ),
        if (recipe.isOwner == true) ...{
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              context.read<CreateRecipeBloc>().add(
                  CreateRecipeEvent.edit(context: context, recipe: recipe));
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                context
                    .read<RecipeDetailBloc>()
                    .add(RecipeDetailEvent.deleteRecipe(context: context));
              },
            ),
          ),
        },
      ],
    );
  }
}

class _CommentSection extends StatelessWidget {
  const _CommentSection(
      {super.key,
      required this.recipe,
      required this.root,
      required this.authState});

  final RecipeDetail recipe;
  final String root;
  final SignedIn authState;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentCubit, CommentState>(
      buildWhen: (previous, current) =>
          current.mapOrNull(loaded: (value) => value.root) == root,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "comment_title_text",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ).tr(),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      isDismissible: true,
                      useRootNavigator: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      builder: (_) => _CommentSheet(
                            recipe: recipe,
                            commentState: state,
                            user: authState,
                            root: root,
                          ));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    state.map(
                        initial: (_) => const Center(
                              child: LoadingIndicator(size: 16),
                            ),
                        loaded: (value) {
                          if (value.comments.isNotEmpty) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(top: 8, bottom: 16),
                              child: CommentTile(
                                comment: value.comments.first!,
                              ),
                            );
                          } else {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: const Text("no_comment_text").tr(),
                            );
                          }
                        },
                        failed: (_) => const Text("failed_load_comment_text")),
                    IgnorePointer(
                        child: CommentInputBox(
                      recipe: recipe,
                      readOnly: true,
                      signedInUser: authState.user,
                    )),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class _CommentSheet extends StatelessWidget {
  final RecipeDetail recipe;
  final SignedIn user;
  final String root;

  final CommentState commentState;

  const _CommentSheet(
      {required this.recipe,
      required this.user,
      required this.root,
      required this.commentState});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.65,
      maxChildSize: 1,
      expand: false,
      snap: true,
      snapSizes: const [0.65, 1],
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: Scaffold(
              appBar: AppBar(
                title: const Text("comment_title_text").tr(),
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
              body: commentState.map(
                loaded: (value) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView(
                            controller: scrollController,
                            children: value.comments
                                .map((e) => Padding(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: CommentTile(comment: e!),
                                    ))
                                .toList(),
                          ),
                        ),
                        CommentInputForm(
                          recipe: recipe,
                          user: user,
                          root: root,
                        ),
                      ],
                    ),
                  );
                },
                initial: (_) => LoadingIndicator(
                  size: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
                failed: (value) =>
                    Center(child: Text(value.message.toString())),
              )),
        );
      },
    );
  }
}

class CreatorContainer extends StatelessWidget {
  final String root;

  const CreatorContainer(
      {super.key,
      required this.user,
      required this.authState,
      required this.root});
  final User user;
  final SignedIn authState;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => ProfilePage(
                  root: root,
                )));
        context.read<ProfilePageBloc>().add(ProfilePageEvent.getProfileData(
            username: user.username,
            token: authState.mapOrNull(signedIn: (value) => value.token),
            root: root));
      },
      child: Row(
        children: [
          SmallUserProfilePic(
            photoUrl: user.photoUrl,
            size: 33,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text("@${user.username}"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CommentInputForm extends StatefulWidget {
  const CommentInputForm(
      {super.key,
      required this.recipe,
      required this.user,
      required this.root});

  final RecipeDetail recipe;
  final SignedIn user;
  final String root;

  @override
  State<CommentInputForm> createState() => _CommentInputFormState();
}

class _CommentInputFormState extends State<CommentInputForm> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: CommentInputBox(
              recipe: widget.recipe,
              signedInUser: widget.user.user,
              controller: controller,
              onChange: (String value) {
                setState(() {
                  controller.value = TextEditingValue(
                      text: value,
                      selection: TextSelection.collapsed(offset: value.length));
                });
              },
            ),
          ),
          InkWell(
            onTap: controller.text.trim().isNotEmpty
                ? () {
                    context.read<CommentCubit>().sendComment(
                        id: widget.recipe.id!,
                        content: controller.text,
                        token: widget.user.token,
                        root: widget.root);

                    setState(() {
                      controller.clear();
                    });
                  }
                : null,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(
                Icons.send,
                color: controller.text.trim().isNotEmpty
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CommentTile extends StatefulWidget {
  final RecipeComment comment;
  const CommentTile({super.key, required this.comment});

  @override
  State<CommentTile> createState() => _CommentTileState();
}

class _CommentTileState extends State<CommentTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2, right: 8.0),
          child: SmallUserProfilePic(
            photoUrl: widget.comment.user?.photoUrl,
          ),
        ),
        Expanded(
          child: LayoutBuilder(builder: (context, constraints) {
            final span = TextSpan(
                text: widget.comment.content,
                style: Theme.of(context).textTheme.bodySmall);
            final tp =
                TextPainter(text: span, textDirection: ui.TextDirection.ltr);
            tp.layout(maxWidth: constraints.maxWidth);
            final numLines = tp.computeLineMetrics().length;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.comment.user!.name,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  widget.comment.content,
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: isExpanded == true ? null : 3,
                ),
                if (isExpanded == false && numLines > 3) ...{
                  InkWell(
                      onTap: () {
                        setState(() {
                          isExpanded = true;
                        });
                      },
                      child: Text(
                        "show_more_text",
                        style: Theme.of(context).textTheme.labelSmall,
                      ).tr())
                },
                if (isExpanded == true && numLines > 3) ...{
                  InkWell(
                      onTap: () {
                        setState(() {
                          isExpanded = false;
                        });
                      },
                      child: Text(
                        "show_less_text",
                        style: Theme.of(context).textTheme.labelSmall,
                      ).tr())
                }
              ],
            );
          }),
        ),
      ],
    );
  }
}

class CommentInputBox extends StatelessWidget {
  const CommentInputBox(
      {super.key,
      required this.recipe,
      required this.signedInUser,
      this.onChange,
      this.controller,
      this.readOnly});
  final UserDetail signedInUser;
  final RecipeDetail recipe;
  final bool? readOnly;
  final Function? onChange;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: SmallUserProfilePic(
            photoUrl: signedInUser.photoUrl,
          ),
        ),
        Expanded(
          child: TextField(
            readOnly: readOnly ?? false,
            onChanged: (value) {
              onChange!(value);
            },
            controller: controller,
            maxLines: 3,
            minLines: 1,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(8),
                isDense: true,
                constraints: BoxConstraints(minHeight: 0, maxWidth: 0),
                border: OutlineInputBorder(borderSide: BorderSide())),
          ),
        )
      ],
    );
  }
}

class IngredientTile extends StatelessWidget {
  final RecipeIngredient ingredient;
  const IngredientTile({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.network(
          ingredient.ingredient.picUrl ?? "",
          width: 30,
          fit: BoxFit.cover,
          height: 30,
          errorBuilder: (context, error, stackTrace) => Icon(
            Icons.image,
            size: 30,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      title: Row(
        children: [
          if (ingredient.quantity != null) ...{
            Text(
              "${ingredient.quantity} ",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          },
          if (ingredient.metric != null) ...{
            Text(
              "${ingredient.metric!.abbrev} ",
              style: Theme.of(context).textTheme.labelMedium,
            )
          },
          Text(
            ingredient.ingredient.name,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class CookingStepTile extends StatelessWidget {
  final CookingStep cookingStep;
  const CookingStepTile({super.key, required this.cookingStep});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
              ),
              width: MediaQuery.of(context).size.width * 0.33,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Image.network(
                cookingStep.picUrl ?? "",
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Icon(
                  Icons.image,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.33,
              child: Text(
                cookingStep.description,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          )
        ],
      ),
    );
  }
}
