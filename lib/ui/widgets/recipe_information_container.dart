import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';

class RecipeInformationContainer extends StatelessWidget {
  const RecipeInformationContainer({super.key});

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
