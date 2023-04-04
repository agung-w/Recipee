import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/entities/cooking_step.dart';

class CookingStepFormTile extends StatelessWidget {
  final CookingStep cookingStep;
  const CookingStepFormTile({super.key, required this.cookingStep});

  @override
  Widget build(BuildContext context) {
    TextEditingController descriptionController =
        TextEditingController(text: cookingStep.description);

    return Slidable(
        endActionPane: ActionPane(motion: const ScrollMotion(), children: [
          SlidableAction(
            onPressed: (_) {
              context.read<CreateRecipeBloc>().add(
                  CreateRecipeEvent.deleteCookingStep(
                      cookingStep: cookingStep));
            },
            backgroundColor: Theme.of(context).colorScheme.error,
            icon: Icons.delete_outline,
          ),
        ]),
        child: ListTile(
          leading: Stack(
            children: [
              InkWell(
                onTap: () async {
                  context.read<CreateRecipeBloc>().add(
                      CreateRecipeEvent.editCookingStepPic(
                          cookingStep: cookingStep));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: cookingStep.picUrl != null
                          ? Image.network(
                              cookingStep.picUrl!,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.error_outline),
                            )
                          : const Icon(Icons.add_a_photo_outlined)),
                ),
              ),
              if (cookingStep.picUrl != null) ...{
                Positioned(
                  top: 1,
                  right: 0,
                  child: GestureDetector(
                    child: Icon(
                      Icons.delete_outline,
                      size: 15,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                    onTap: () {
                      context.read<CreateRecipeBloc>().add(
                          CreateRecipeEvent.deleteCookingStepPic(
                              picUrl: cookingStep.picUrl!,
                              context: context,
                              cookingStep: cookingStep));
                    },
                  ),
                ),
              }
            ],
          ),
          title: FocusScope(
            onFocusChange: (value) {
              if (!value) {
                context.read<CreateRecipeBloc>().add(
                    CreateRecipeEvent.editCookingStepDescription(
                        cookingStep: cookingStep,
                        description: descriptionController.text.trim()));
              }
            },
            child: TextFormField(
              controller: descriptionController,
              maxLines: 3,
              minLines: 2,
              autovalidateMode: AutovalidateMode.always,
              validator: (value) => value!.trim().isEmpty
                  ? "this_section_cant_be_blank".tr()
                  : null,
              decoration: InputDecoration(
                hintMaxLines: 2,
                contentPadding: EdgeInsets.zero,
                hintText: "cooking_step_input_hint_create_recipe".tr(),
                counterStyle: const TextStyle(
                  height: double.minPositive,
                ),
                counterText: "",
              ),
            ),
          ),
        ));
  }
}
