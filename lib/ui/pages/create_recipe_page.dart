import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/entities/recipe_detail.dart';

import 'package:ta_recipe_app/ui/widgets/half_length_number_input.dart';
import 'package:ta_recipe_app/ui/widgets/large_text_input.dart';
import 'package:ta_recipe_app/ui/widgets/long_text_input.dart';

class CreateRecipePage extends StatefulWidget {
  const CreateRecipePage({super.key});
  @override
  State<CreateRecipePage> createState() => _CreateRecipePageState();
}

class _CreateRecipePageState extends State<CreateRecipePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController servingController = TextEditingController();
  TextEditingController prepTimeController = TextEditingController();
  TextEditingController ingredientInputController = TextEditingController();
  TextEditingController cookingStepInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              actions: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: state.map(
                          creating: (creating) => () {
                                if (formKey.currentState!.validate()) {
                                  context
                                      .read<CreateRecipeBloc>()
                                      .add(CreateRecipeEvent.submit(
                                          recipe: creating.recipe.copyWith(
                                            description:
                                                descriptionController.text,
                                            title: titleController.text,
                                            prepTime: int.tryParse(
                                                prepTimeController.text),
                                            serving: int.tryParse(
                                                servingController.text),
                                          ),
                                          context: context));
                                }
                              },
                          initial: (_) => null),
                      child: const Text("create_button").tr(),
                    ))
              ],
            ),
            body: state.mapOrNull(
                  creating: (creating) => Form(
                    key: formKey,
                    child: ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      children: [
                        InkWell(
                          child: Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.amber,
                            child: creating.recipe.posterPicUrl != null
                                ? Image.network(creating.recipe.posterPicUrl!)
                                : Image.asset(
                                    "assets/images/placeholder/add_image.png"),
                          ),
                          onTap: () async {
                            context
                                .read<CreateRecipeBloc>()
                                .add(const CreateRecipeEvent.addRecipePoster());
                          },
                        ),
                        Container(
                          color: Colors.white,
                          margin: const EdgeInsets.only(bottom: 8),
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Column(
                            children: [
                              LargeTextInput(
                                hint: "title_placeholder_create_recipe".tr(),
                                controller: titleController,
                                nullable: false,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        child: HalfLengthNumberInput(
                                          hint: "serving_label_create_recipe"
                                              .tr(),
                                          controller: servingController,
                                          endText:
                                              "serving_end_text_create_recipe"
                                                  .tr(),
                                        ),
                                      ),
                                    ),
                                    const Expanded(child: SizedBox()),
                                    Expanded(
                                      child: HalfLengthNumberInput(
                                        hint: "prep_time_label_create_recipe"
                                            .tr(),
                                        controller: prepTimeController,
                                        endText:
                                            "prep_time_end_text_create_recipe"
                                                .tr(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: LongTextInput(
                                  hint: "description_placeholder_create_recipe"
                                      .tr(),
                                  controller: descriptionController,
                                  nullable: false,
                                  maxLength: 1000,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          margin: const EdgeInsets.only(bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                child: Text(
                                  "ingredients_title_create_recipe",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ).tr(),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                key: UniqueKey(),
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: creating.ingredientForms.length,
                                itemBuilder: (_, index) {
                                  return creating.ingredientForms
                                      .elementAt(index);
                                },
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 0, 16, 8),
                                child: TextFormField(
                                  controller: ingredientInputController,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  maxLength: 250,
                                  buildCounter: null,
                                  onFieldSubmitted: (value) {
                                    context.read<CreateRecipeBloc>().add(
                                        CreateRecipeEvent.addIngredient(
                                            context: context,
                                            ingredient: value));
                                    setState(() {
                                      ingredientInputController.text = "";
                                    });
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    counterStyle: const TextStyle(
                                      height: double.minPositive,
                                    ),
                                    counterText: "",
                                    hintText:
                                        "ingredient_input_hint_create_recipe"
                                            .tr(),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          margin: const EdgeInsets.only(bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                child: Text(
                                  "cooking_steps_title_create_recipe",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ).tr(),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                key: UniqueKey(),
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: creating.cookingStepForms.length,
                                itemBuilder: (_, index) {
                                  return creating.cookingStepForms
                                      .elementAt(index);
                                },
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 8, 16, 8),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      context.read<CreateRecipeBloc>().add(
                                          const CreateRecipeEvent
                                              .addCookingStep());
                                    },
                                    child: Center(
                                      child:
                                          const Text("add_cooking_step_button")
                                              .tr(),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ) ??
                Center());
      },
    );
  }
}
