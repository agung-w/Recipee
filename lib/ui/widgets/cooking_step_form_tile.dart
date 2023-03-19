import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/entities/cooking_step.dart';

class CookingStepFormTile extends StatefulWidget {
  final CookingStep cookingStep;
  const CookingStepFormTile({super.key, required this.cookingStep});

  @override
  State<CookingStepFormTile> createState() => _CookingStepFormTileState();
}

class _CookingStepFormTileState extends State<CookingStepFormTile> {
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: Slidable(
          endActionPane: ActionPane(motion: const ScrollMotion(), children: [
            SlidableAction(
              onPressed: (_) {},
              backgroundColor: Theme.of(context).colorScheme.error,
              icon: Icons.delete_outline,
            ),
          ]),
          child: ListTile(
            leading: InkWell(
              onTap: () {},
              child: SizedBox(
                width: 50,
                height: 50,
                child: FadeInImage(
                    image: NetworkImage(widget.cookingStep.picUrl ?? ""),
                    imageErrorBuilder: (context, error, stackTrace) =>
                        const Image(
                          image: AssetImage(
                            "assets/images/placeholder/add_image.png",
                          ),
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                    placeholder: const AssetImage(
                        "assets/images/placeholder/add_image.png")),
              ),
            ),
            title: FocusScope(
              onFocusChange: (value) {
                if (!value) {
                  // TODO: Kasih konfirmasi kalo ga di submit
                }
              },
              child: TextField(
                controller: _descriptionController,
                onEditingComplete: () {},
                onSubmitted: (value) {},
                maxLines: 3,
                minLines: 2,
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
