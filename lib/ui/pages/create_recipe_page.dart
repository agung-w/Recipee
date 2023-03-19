import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';

import 'package:ta_recipe_app/ui/widgets/half_length_number_input.dart';
import 'package:ta_recipe_app/ui/widgets/large_text_input.dart';
import 'package:ta_recipe_app/services/picture_services.dart';
import 'package:ta_recipe_app/ui/widgets/long_text_input.dart';

class CreateRecipePage extends StatefulWidget {
  const CreateRecipePage({super.key});
  @override
  State<CreateRecipePage> createState() => _CreateRecipePageState();
}

class _CreateRecipePageState extends State<CreateRecipePage> {
  String? str;
  UploadTask? uploadTask;
  final formKey = GlobalKey<FormState>();

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController servingController = TextEditingController();
  TextEditingController prepTimeController = TextEditingController();
  TextEditingController ingredientInputController = TextEditingController();
  TextEditingController cookingStepInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("valid")));
                } else {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("teu valid")));
                }
              },
              child: const Text("create_button").tr(),
            ),
          )
        ],
      ),
      body: BlocBuilder<CreateRecipeBloc, CreateRecipeState>(
        builder: (context, state) {
          return state.mapOrNull(
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
                          child: str != null ? Image.network(str!) : null,
                        ),
                        onTap: () async {
                          str = await PictureServices()
                              .uploadPosterPicture(await getImage());
                          setState(() {});
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
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: HalfLengthNumberInput(
                                    hint: "serving_label_create_recipe".tr(),
                                    controller: servingController,
                                  ),
                                ),
                                Expanded(
                                  child: HalfLengthNumberInput(
                                    hint: "prep_time_label_create_recipe".tr(),
                                    controller: prepTimeController,
                                  ),
                                ),
                              ],
                            ),
                            LongTextInput(
                              hint:
                                  "description_placeholder_create_recipe".tr(),
                              controller: descriptionController,
                              nullable: false,
                              maxLength: 1000,
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
                              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                              child: TextFormField(
                                controller: ingredientInputController,
                                style: Theme.of(context).textTheme.bodyMedium,
                                maxLength: 250,
                                buildCounter: null,
                                onFieldSubmitted: (value) {
                                  context.read<CreateRecipeBloc>().add(
                                      CreateRecipeEvent.addIngredient(
                                          ingredient: value));
                                  setState(() {
                                    ingredientInputController.text = "";
                                  });
                                },
                                decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.only(left: 5, right: 5),
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
                                    const EdgeInsets.fromLTRB(16, 0, 16, 8),
                                child: ElevatedButton(
                                  onPressed: () {
                                    context.read<CreateRecipeBloc>().add(
                                        const CreateRecipeEvent
                                            .addCookingStep());
                                  },
                                  child: const Text("add_cooking_step_button")
                                      .tr(),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ) ??
              Center();
        },
      ),
    );
  }

  void onAddIngredient() {}
  void onDelete() {
    log("message");
  }
}

Future<XFile?> getImage() async {
  return ImagePicker().pickImage(source: ImageSource.gallery);
}
