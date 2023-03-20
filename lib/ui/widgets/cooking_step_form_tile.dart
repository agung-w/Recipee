import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/entities/cooking_step.dart';
import 'package:ta_recipe_app/services/picture_services.dart';

class CookingStepFormTile extends StatefulWidget {
  final CookingStep cookingStep;
  const CookingStepFormTile({super.key, required this.cookingStep});

  @override
  State<CookingStepFormTile> createState() => _CookingStepFormTileState();
  bool validate() {
    return validate();
  }
}

class _CookingStepFormTileState extends State<CookingStepFormTile> {
  final TextEditingController _descriptionController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _descriptionController.text = widget.cookingStep.description;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: Slidable(
          endActionPane: ActionPane(motion: const ScrollMotion(), children: [
            SlidableAction(
              onPressed: (_) {
                context.read<CreateRecipeBloc>().add(
                    CreateRecipeEvent.deleteCookingStep(
                        cookingStep: widget.cookingStep));
              },
              backgroundColor: Theme.of(context).colorScheme.error,
              icon: Icons.delete_outline,
            ),
          ]),
          child: ListTile(
            leading: InkWell(
              onTap: () async {
                widget.cookingStep.picUrl = await PictureServices()
                    .uploadPosterPicture(await ImagePicker()
                        .pickImage(source: ImageSource.gallery));
                setState(() {});
              },
              child: SizedBox(
                  width: 50,
                  height: 50,
                  child: widget.cookingStep.picUrl != null
                      ? Image.network(widget.cookingStep.picUrl!)
                      : Image.asset("assets/images/placeholder/add_image.png")),
            ),
            title: FocusScope(
              onFocusChange: (value) {
                if (!value) {}
              },
              child: TextFormField(
                controller: _descriptionController,
                maxLines: 3,
                minLines: 2,
                validator: (value) =>
                    value!.isEmpty ? "this_section_cant_be_blank".tr() : null,
                onTapOutside: (event) => context.read<CreateRecipeBloc>().add(
                    CreateRecipeEvent.editCookingStepDescription(
                        cookingStep: widget.cookingStep,
                        description: _descriptionController.text)),
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
          )),
    );
  }
}
