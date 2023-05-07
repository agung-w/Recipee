import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/ui/widgets/confirmation_dialog.dart';
import 'package:ta_recipe_app/ui/widgets/cooking_step_form_tile.dart';
import 'package:ta_recipe_app/ui/widgets/image_picker_dialog.dart';
import 'package:ta_recipe_app/ui/widgets/ingredient_form_tile.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';

class CreateRecipePage extends StatelessWidget {
  const CreateRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return WillPopScope(
      onWillPop: () async {
        showExitPageDialog(context);
        return false;
      },
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                showExitPageDialog(context);
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
              child: const Column(
                children: [
                  _PosterInput(),
                  _RecipeInformationContainer(),
                  _IngredientContainer(),
                  _CookingStepContainer(),
                  _TagContainer()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> showExitPageDialog(BuildContext context) {
    return showDialog(
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
                            color: Theme.of(context).colorScheme.onSecondary),
                      )),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        context.read<CreateRecipeBloc>().add(
                              CreateRecipeEvent.cancel(context: context),
                            );
                      },
                      child: Text(
                        "delete_text".tr(),
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).colorScheme.error),
                      ).tr()),
                )
              ],
              title: 'cancel_create_recipe_dialog_title'.tr(),
              content: 'cancel_create_recipe_dialog_content'.tr(),
            ));
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
                showDialog(
                    context: context,
                    builder: (_) =>
                        const ImagePickerDialog()).then((value) => value != null
                    ? ImagePicker().pickImage(source: value).then((value) =>
                        value != null
                            ? context.read<CreateRecipeBloc>().add(
                                CreateRecipeEvent.addRecipePoster(file: value))
                            : null)
                    : null);
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

class _RecipeInformationContainer extends StatelessWidget {
  const _RecipeInformationContainer();

  @override
  Widget build(BuildContext context) {
    // TextEditingController titleController = TextEditingController();

    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 8),
              child: BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
                buildWhen: (previous, current) =>
                    previous.recipe?.title != current.recipe?.title,
                builder: (context, state) {
                  return TextFormField(
                    style: Theme.of(context).textTheme.headlineMedium,
                    validator: (value) => value!.trim().isEmpty
                        ? "this_section_cant_be_blank".tr()
                        : null,
                    initialValue: state.recipe?.title,
                    onChanged: (value) => context
                        .read<CreateRecipeBloc>()
                        .add(CreateRecipeEvent.editTitle(title: value)),
                    buildCounter: null,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 8, right: 8),
                      counterStyle: const TextStyle(
                        height: double.minPositive,
                      ),
                      counterText: "",
                      hintText: "title_placeholder_create_recipe".tr(),
                    ),
                  );
                },
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    child: BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
                      buildWhen: (previous, current) =>
                          previous.recipe?.serving != current.recipe?.serving,
                      builder: (context, state) {
                        return TextFormField(
                          style: Theme.of(context).textTheme.bodyMedium,
                          initialValue: state.recipe?.serving?.toString(),
                          onChanged: (value) => context
                              .read<CreateRecipeBloc>()
                              .add(CreateRecipeEvent.editServing(
                                  serving: value)),
                          decoration: InputDecoration(
                            labelText: "serving_label_create_recipe".tr(),
                            suffix: Text(
                              "serving_end_text_create_recipe".tr(),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        );
                      },
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Expanded(
                  child: BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
                    buildWhen: (previous, current) =>
                        previous.recipe?.prepTime != current.recipe?.prepTime,
                    builder: (context, state) {
                      return TextFormField(
                        style: Theme.of(context).textTheme.bodyMedium,
                        initialValue: state.recipe?.prepTime?.toString(),
                        onChanged: (value) => context
                            .read<CreateRecipeBloc>()
                            .add(CreateRecipeEvent.editPrepTime(
                                prepTime: value)),
                        decoration: InputDecoration(
                          labelText: "prep_time_label_create_recipe".tr(),
                          suffix: Text(
                            "prep_time_end_text_create_recipe".tr(),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
              buildWhen: (previous, current) =>
                  previous.recipe?.description != current.recipe?.description,
              builder: (context, state) {
                return TextFormField(
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .merge(const TextStyle(height: 1.3)),
                  maxLength: 1000,
                  validator: (value) => value!.trim().isEmpty
                      ? "this_section_cant_be_blank".tr()
                      : null,
                  onChanged: (value) => context.read<CreateRecipeBloc>().add(
                      CreateRecipeEvent.editDescription(description: value)),
                  maxLines: null,
                  minLines: 3,
                  initialValue: state.recipe?.description,
                  decoration: InputDecoration(
                    hintMaxLines: 3,
                    contentPadding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 6),
                    counterStyle: const TextStyle(
                      height: double.minPositive,
                    ),
                    hintText: "description_placeholder_create_recipe".tr(),
                  ),
                  keyboardType: TextInputType.multiline,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _IngredientContainer extends StatelessWidget {
  const _IngredientContainer();

  @override
  Widget build(BuildContext context) {
    TextEditingController ingredientInputController = TextEditingController();
    return BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
      buildWhen: (previous, current) =>
          previous.recipe?.recipeIngredientsAttributes !=
          current.recipe?.recipeIngredientsAttributes,
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
              ListView(
                shrinkWrap: true,
                key: UniqueKey(),
                physics: const NeverScrollableScrollPhysics(),
                children: state.recipe?.recipeIngredientsAttributes
                        .map((e) => IngredientFormTile(ingredient: e))
                        .toList() ??
                    const [],
              ),
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
      buildWhen: (previous, current) =>
          previous.recipe?.cookingStepsAttributes !=
          current.recipe?.cookingStepsAttributes,
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
              ListView(
                shrinkWrap: true,
                key: UniqueKey(),
                physics: const NeverScrollableScrollPhysics(),
                children: state.recipe?.cookingStepsAttributes
                        .map((e) => CookingStepFormTile(cookingStep: e))
                        .toList() ??
                    const [],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: ElevatedButton(
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
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
