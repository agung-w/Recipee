import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/ui/widgets/cooking_step_form_tile.dart';

class CookingStepContainer extends StatelessWidget {
  const CookingStepContainer({super.key});

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
