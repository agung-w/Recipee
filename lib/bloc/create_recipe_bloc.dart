import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/entities/cooking_step.dart';
import 'package:ta_recipe_app/entities/ingredient.dart';
import 'package:ta_recipe_app/entities/metric.dart';
import 'package:ta_recipe_app/entities/recipe_detail.dart';
import 'package:ta_recipe_app/entities/recipe_ingredient.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/ingredient_services.dart';
import 'package:ta_recipe_app/ui/pages/create_recipe_page.dart';
import 'package:ta_recipe_app/ui/pages/login_page.dart';
import 'package:ta_recipe_app/ui/widgets/cooking_step_form_tile.dart';
import 'package:ta_recipe_app/ui/widgets/ingredient_form_tile.dart';

part 'create_recipe_event.dart';
part 'create_recipe_state.dart';
part 'create_recipe_bloc.freezed.dart';

class CreateRecipeBloc extends Bloc<CreateRecipeEvent, CreateRecipeState> {
  CreateRecipeBloc() : super(const _Initial()) {
    on<_Create>((event, emit) async {
      event.state.maybeMap(signedIn: (value) {
        emit(_Creating(
            recipe: RecipeDetail(title: "", description: "", user: value.user),
            ingredientForms: [],
            cookingStepForms: [
              const CookingStepFormTile(
                cookingStep: CookingStep(step: 1, description: ""),
              ),
              const CookingStepFormTile(
                cookingStep: CookingStep(step: 2, description: ""),
              ),
            ]));
        Navigator.of(event.context, rootNavigator: true)
            .push(MaterialPageRoute(builder: (_) => const CreateRecipePage()));
      }, orElse: () {
        emit(const _Initial());
        Navigator.of(event.context, rootNavigator: true)
            .push(MaterialPageRoute(builder: (_) => const LoginPage()));
      });
    });

    on<_AddIngredient>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));

        ApiResult<Ingredient> ingredient =
            await IngredientServices().findIngredient(name: event.ingredient);
        ingredient.map(
            success: (value) {
              List<IngredientFormTile> forms =
                  List.from(creating!.ingredientForms);
              forms.add(IngredientFormTile(
                  ingredient: RecipeIngredient(ingredient: value.value)));
              emit(_Creating(
                  recipe: creating.recipe,
                  ingredientForms: forms,
                  cookingStepForms: creating.cookingStepForms));
            },
            failed: (value) => emit(_Creating(
                recipe: creating!.recipe,
                error: value.message,
                ingredientForms: creating.ingredientForms,
                cookingStepForms: creating.cookingStepForms)));
      }
    });
    on<_DeleteIngredient>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<IngredientFormTile> forms = List.from(creating!.ingredientForms);
        forms.removeWhere((element) => element.ingredient == event.ingredient);
        print(forms.map((e) =>
            "${e.ingredient.ingredient.name} ${e.ingredient.quantity} ${e.ingredient.metric}"));
        emit(_Creating(
            recipe: creating.recipe,
            ingredientForms: forms,
            cookingStepForms: creating.cookingStepForms));
      }
    });
    on<_EditIngredientName>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<IngredientFormTile> forms = List.from(creating!.ingredientForms);
        ApiResult<Ingredient> ingredient =
            await IngredientServices().findIngredient(name: event.name);
        ingredient.map(
            success: (value) {
              forms
                  .firstWhere(
                      (element) => element.ingredient == event.ingredient)
                  .ingredient
                  .ingredient = value.value;
              emit(_Creating(
                  recipe: creating.recipe,
                  ingredientForms: forms,
                  cookingStepForms: creating.cookingStepForms));
            },
            failed: (value) => emit(_Creating(
                recipe: creating.recipe,
                error: value.message,
                ingredientForms: forms,
                cookingStepForms: creating.cookingStepForms)));
      }
    });
    on<_EditIngredientQuantity>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<IngredientFormTile> forms = List.from(creating!.ingredientForms);
        forms
            .firstWhere((element) => element.ingredient == event.ingredient)
            .ingredient
            .quantity = event.quantity;
        emit(_Creating(
            recipe: creating.recipe,
            ingredientForms: forms,
            cookingStepForms: creating.cookingStepForms));
      }
    });
    on<_EditIngredientMetric>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<IngredientFormTile> forms = List.from(creating!.ingredientForms);
        forms
            .firstWhere((element) => element.ingredient == event.ingredient)
            .ingredient
            .metric = event.metric;
        emit(_Creating(
            recipe: creating.recipe,
            ingredientForms: forms,
            cookingStepForms: creating.cookingStepForms));
      }
    });

    on<_AddCookingStep>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<CookingStepFormTile> forms = List.from(creating!.cookingStepForms);
        forms.add(CookingStepFormTile(
            cookingStep: CookingStep(step: forms.length + 1, description: "")));
        emit(_Creating(
            recipe: creating.recipe,
            ingredientForms: creating.ingredientForms,
            cookingStepForms: forms));
      }
    });
    on<_DeleteCookingStep>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<CookingStepFormTile> forms = List.from(creating!.cookingStepForms);
        forms.removeWhere(
          (element) => element.cookingStep == event.cookingStep,
        );
        emit(_Creating(
            recipe: creating.recipe,
            ingredientForms: creating.ingredientForms,
            cookingStepForms: forms));
      }
    });
  }
}
