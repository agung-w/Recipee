import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/entities/cooking_step.dart';
import 'package:ta_recipe_app/entities/recipe_detail.dart';
import 'package:ta_recipe_app/ui/widgets/confirmation_dialog.dart';
import 'package:ta_recipe_app/ui/widgets/cooking_step_form_tile.dart';
import 'package:ta_recipe_app/ui/widgets/half_length_number_input.dart';
import 'package:ta_recipe_app/ui/widgets/ingredient_form_tile.dart';
import 'package:ta_recipe_app/ui/widgets/large_text_input.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';
import 'package:ta_recipe_app/ui/widgets/long_text_input.dart';

class CreateRecipePage extends StatelessWidget {
  const CreateRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    TextEditingController servingController = TextEditingController();
    TextEditingController prepTimeController = TextEditingController();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (builder) => ConfirmationDialog(
                        actions: [
                          Expanded(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "cancel_text".tr(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary),
                                )),
                          ),
                          Expanded(
                            child: TextButton(
                                onPressed: () {
                                  context.read<CreateRecipeBloc>().add(
                                        CreateRecipeEvent.cancel(
                                            context: context),
                                      );
                                },
                                child: Text(
                                  "delete_text".tr(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      color:
                                          Theme.of(context).colorScheme.error),
                                ).tr()),
                          )
                        ],
                        title: 'cancel_create_recipe_dialog_title'.tr(),
                        content: 'cancel_create_recipe_dialog_content'.tr(),
                      ));
            },
          ),
          actions: [
            BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
              builder: (context, authState) {
                return BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 70,
                        child: ElevatedButton(
                          onPressed: state.map(
                              creating: (value) => () {
                                    if (formKey.currentState!.validate()) {
                                      context.read<CreateRecipeBloc>().add(
                                            CreateRecipeEvent.submit(
                                                recipe: value.recipe.copyWith(
                                                    description: descriptionController
                                                        .text,
                                                    title: titleController.text
                                                        .trim(),
                                                    prepTime: int.tryParse(
                                                        prepTimeController.text
                                                            .trim()),
                                                    serving: int.tryParse(
                                                        servingController.text
                                                            .trim()),
                                                    cookingStepsAttributes: value
                                                        .recipe
                                                        .cookingStepsAttributes
                                                        .asMap()
                                                        .map((i, e) =>
                                                            MapEntry(i, e.copyWith(step: i + 1)))
                                                        .values
                                                        .toList()),
                                                context: context,
                                                authState: authState),
                                          );
                                    }
                                  },
                              initial: (_) => () {}),
                          child: state.map(
                            creating: (value) =>
                                const Text("create_button").tr(),
                            initial: (value) => LoadingIndicator(
                              size: 16,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const _PosterInput(),
                _RecipeInformationContainer(
                    titleController: titleController,
                    servingController: servingController,
                    prepTimeController: prepTimeController,
                    descriptionController: descriptionController),
                const _IngredientContainer(),
                const _CookingStepContainer(),
                const _TagContainer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RecipeInformationContainer extends StatelessWidget {
  const _RecipeInformationContainer({
    required this.titleController,
    required this.servingController,
    required this.prepTimeController,
    required this.descriptionController,
  });

  final TextEditingController titleController;
  final TextEditingController servingController;
  final TextEditingController prepTimeController;
  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: LargeTextInput(
              hint: "title_placeholder_create_recipe".tr(),
              controller: titleController,
              nullable: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    child: HalfLengthNumberInput(
                      hint: "serving_label_create_recipe".tr(),
                      controller: servingController,
                      endText: "serving_end_text_create_recipe".tr(),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Expanded(
                  child: HalfLengthNumberInput(
                    hint: "prep_time_label_create_recipe".tr(),
                    controller: prepTimeController,
                    endText: "prep_time_end_text_create_recipe".tr(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: LongTextInput(
              hint: "description_placeholder_create_recipe".tr(),
              controller: descriptionController,
              nullable: false,
              maxLength: 1000,
            ),
          ),
        ],
      ),
    );
  }
}

class _PosterInput extends StatelessWidget {
  const _PosterInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
      builder: (context, state) {
        return Stack(
          children: [
            InkWell(
              child: Container(
                height: 165,
                width: MediaQuery.of(context).size.width,
                color: Theme.of(context).colorScheme.secondary,
                child: state.recipe?.posterPicUrl != null
                    ? Image.network(
                        state.recipe!.posterPicUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.error_outline),
                      )
                    : const Icon(
                        Icons.add_a_photo_outlined,
                        size: 36,
                      ),
              ),
              onTap: () async {
                context
                    .read<CreateRecipeBloc>()
                    .add(const CreateRecipeEvent.addRecipePoster());
              },
            ),
            if (state.recipe?.posterPicUrl != null) ...{
              Positioned(
                bottom: 2,
                right: 0,
                child: GestureDetector(
                  child: Icon(
                    Icons.delete_outline,
                    size: 22,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  onTap: () {
                    context.read<CreateRecipeBloc>().add(
                          CreateRecipeEvent.deletePoster(
                              picUrl: state.recipe!.posterPicUrl!,
                              context: context),
                        );
                  },
                ),
              ),
            }
          ],
        );
      },
    );
  }
}

class _IngredientContainer extends StatelessWidget {
  const _IngredientContainer();

  @override
  Widget build(BuildContext context) {
    TextEditingController ingredientInputController = TextEditingController();
    return BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "ingredients_title_create_recipe",
                  style: Theme.of(context).textTheme.headlineMedium,
                ).tr(),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  key: UniqueKey(),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.recipe?.recipeIngredientsAttributes.length,
                  itemBuilder: (_, index) => state.recipe != null
                      ? IngredientFormTile(
                          ingredient: state.recipe!.recipeIngredientsAttributes
                              .elementAt(index))
                      : const SizedBox()),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: TextFormField(
                  controller: ingredientInputController,
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLength: 250,
                  autofocus: false,
                  buildCounter: null,
                  onFieldSubmitted: (value) {
                    context.read<CreateRecipeBloc>().add(
                        CreateRecipeEvent.addIngredient(
                            context: context,
                            ingredient: value,
                            controller: ingredientInputController));
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 5, right: 5),
                    counterStyle: const TextStyle(
                      height: double.minPositive,
                    ),
                    counterText: "",
                    hintText: "ingredient_input_hint_create_recipe".tr(),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class _CookingStepContainer extends StatelessWidget {
  const _CookingStepContainer();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "cooking_steps_title_create_recipe",
                  style: Theme.of(context).textTheme.headlineMedium,
                ).tr(),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  key: UniqueKey(),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.recipe?.cookingStepsAttributes.length,
                  itemBuilder: (_, index) => state.recipe != null
                      ? CookingStepFormTile(
                          cookingStep: state.recipe!.cookingStepsAttributes
                              .elementAt(index))
                      : const SizedBox()),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: ElevatedButton(
                  onPressed: () {
                    context
                        .read<CreateRecipeBloc>()
                        .add(const CreateRecipeEvent.addCookingStep());
                  },
                  child: Center(
                    child: const Text("add_cooking_step_button").tr(),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class _TagContainer extends StatelessWidget {
  const _TagContainer();

  @override
  Widget build(BuildContext context) {
    TextEditingController tagInputController = TextEditingController();
    return BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "tag_title",
                style: Theme.of(context).textTheme.headlineMedium,
              ).tr(),
              if (state.recipe?.recipeTagsAttributes != null &&
                  state.recipe!.recipeTagsAttributes!.isNotEmpty) ...{
                Padding(
                  //outer spacing
                  padding: const EdgeInsets.only(right: 8),
                  child: Wrap(
                    spacing: 8, // space between items
                    children: state.recipe!.recipeTagsAttributes!
                        .map(
                          (e) => Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            margin: const EdgeInsets.only(top: 8),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.65),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Text(
                                        e.name.toString(),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.close,
                                      size: 18,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                    onTap: () {
                                      context.read<CreateRecipeBloc>().add(
                                            CreateRecipeEvent.deleteTag(tag: e),
                                          );
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              } else ...{
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 6),
                  child: const Text("add_tag_description").tr(),
                )
              },
              TextFormField(
                controller: tagInputController,
                style: Theme.of(context).textTheme.bodyMedium,
                maxLength: 250,
                autofocus: false,
                buildCounter: null,
                onFieldSubmitted: (value) {
                  context.read<CreateRecipeBloc>().add(CreateRecipeEvent.addTag(
                      tag: tagInputController.text,
                      controller: tagInputController,
                      context: context));
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 5, right: 5),
                  counterStyle: const TextStyle(
                    height: double.minPositive,
                  ),
                  counterText: "",
                  hintText: "add_tag_input_hint".tr(),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
