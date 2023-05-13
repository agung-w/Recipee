import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/ui/widgets/ingredient_form_tile.dart';

class IngredientContainer extends StatelessWidget {
  const IngredientContainer({super.key});

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
                    if (value.trim().isNotEmpty) {
                      context.read<CreateRecipeBloc>().add(
                          CreateRecipeEvent.addIngredient(
                              context: context,
                              ingredient: value,
                              controller: ingredientInputController));
                    }
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
