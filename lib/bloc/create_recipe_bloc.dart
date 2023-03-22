import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/entities/cooking_step.dart';
import 'package:ta_recipe_app/entities/ingredient.dart';
import 'package:ta_recipe_app/entities/metric.dart';
import 'package:ta_recipe_app/entities/recipe_detail.dart';
import 'package:ta_recipe_app/entities/recipe_ingredient.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/ingredient_services.dart';
import 'package:ta_recipe_app/services/picture_services.dart';
import 'package:ta_recipe_app/services/recipe_services.dart';
import 'package:ta_recipe_app/ui/pages/create_recipe_page.dart';
import 'package:ta_recipe_app/ui/pages/home_page.dart';
import 'package:ta_recipe_app/ui/pages/login_page.dart';
import 'package:ta_recipe_app/ui/widgets/cooking_step_form_tile.dart';
import 'package:ta_recipe_app/ui/widgets/ingredient_form_tile.dart';

part 'create_recipe_event.dart';
part 'create_recipe_state.dart';
part 'create_recipe_bloc.freezed.dart';

class CreateRecipeBloc extends Bloc<CreateRecipeEvent, CreateRecipeState> {
  CreateRecipeBloc() : super(const _Initial()) {
    on<_Create>((event, emit) async {
      event.state.map(signedIn: (value) {
        emit(_Creating(
            recipe: RecipeDetail(title: "", description: "", user: value.user),
            ingredientForms: [],
            cookingStepForms: []));
        Navigator.of(event.context, rootNavigator: true)
            .push(MaterialPageRoute(builder: (_) => const CreateRecipePage()));
      }, signedOut: (_) {
        emit(const _Initial());
        Navigator.of(event.context, rootNavigator: true)
            .push(MaterialPageRoute(builder: (_) => const LoginPage()));
      }, loading: (_) {
        emit(const _Initial());
      });
    });
    on<_AddIngredient>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));

        ApiResult<Ingredient> ingredient =
            await IngredientServices().findIngredient(name: event.ingredient);
        ingredient.map(success: (value) {
          List<IngredientFormTile> forms = List.from(creating!.ingredientForms);
          forms.add(IngredientFormTile(
              ingredient: RecipeIngredient(ingredient: value.value)));
          emit(creating.copyWith(ingredientForms: forms));
        }, failed: (value) {
          ScaffoldMessenger.of(event.context)
              .showSnackBar(SnackBar(content: Text(value.message)));
          emit(creating!);
        });
      }
    });
    on<_DeleteIngredient>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<IngredientFormTile> forms = List.from(creating!.ingredientForms);
        forms.removeWhere((element) => element.ingredient == event.ingredient);
        emit(creating.copyWith(ingredientForms: forms));
      }
    });
    on<_EditIngredientName>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<IngredientFormTile> forms = List.from(creating!.ingredientForms);
        ApiResult<Ingredient> ingredient =
            await IngredientServices().findIngredient(name: event.name);
        ingredient.map(success: (value) {
          forms
              .firstWhere((element) => element.ingredient == event.ingredient)
              .ingredient
              .ingredient = value.value;
          emit(creating.copyWith(ingredientForms: forms));
        }, failed: (value) {
          forms
              .removeWhere((element) => element.ingredient == event.ingredient);
          emit(creating.copyWith(ingredientForms: forms));
        });
      }
    });
    on<_EditIngredientQuantity>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<IngredientFormTile> forms = creating!.ingredientForms;
        forms
            .firstWhere((element) => element.ingredient == event.ingredient)
            .ingredient
            .quantity = event.quantity;
        emit(creating.copyWith(ingredientForms: forms));
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
        emit(creating.copyWith(ingredientForms: forms));
      }
    });
    on<_AddCookingStep>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<CookingStepFormTile> forms = List.from(creating!.cookingStepForms);
        forms.add(CookingStepFormTile(
          cookingStep: CookingStep(description: ""),
        ));
        emit(creating.copyWith(cookingStepForms: forms));
      }
    });
    on<_EditCookingStepDescription>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<CookingStepFormTile> forms = creating!.cookingStepForms;
        forms
            .firstWhere((element) => element.cookingStep == event.cookingStep)
            .cookingStep
            .description = event.description;
        emit(creating.copyWith(cookingStepForms: forms));
      }
    });
    on<_DeleteCookingStep>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<CookingStepFormTile> forms = List.from(creating!.cookingStepForms);
        forms.removeWhere(
          (element) => element.cookingStep == event.cookingStep,
        );
        emit(creating.copyWith(cookingStepForms: forms));
      }
    });
    on<_AddRecipePoster>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        String? picUrl = await PictureServices().uploadPosterPicture(
            await ImagePicker().pickImage(source: ImageSource.gallery));
        if (picUrl != null) {
          emit(creating!.copyWith(
              recipe: creating.recipe.copyWith(posterPicUrl: picUrl)));
        } else {
          emit(creating!);
        }
      }
    });
    on<_Submit>((event, emit) async {
      if (state is _Creating) {
        SharedPreferences pref = await SharedPreferences.getInstance();
        String? token = pref.getString('token');
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        if (token != null) {
          List<RecipeIngredient> ingredients = creating!.ingredientForms
              .map((e) => e.ingredient.copyWith(
                  ingredientId: e.ingredient.ingredient.id,
                  metricId: e.ingredient.metric?.id))
              .toList();
          List<CookingStep> cookingSteps = creating.cookingStepForms
              .asMap()
              .map((i, e) => MapEntry(i, e.cookingStep.copyWith(step: i + 1)))
              .values
              .toList();
          ApiResult<RecipeDetail> result = await RecipeServices().create(
              token: token,
              recipe: event.recipe.copyWith(
                  cookingStepsAttributes: cookingSteps,
                  recipeIngredientsAttributes: ingredients));
          result.map(success: (_) {
            Navigator.pop(event.context);
            ScaffoldMessenger.of(event.context).showSnackBar(
                SnackBar(content: Text("create_recipe_success_message".tr())));
            emit(const _Initial());
          }, failed: (message) {
            ScaffoldMessenger.of(event.context)
                .showSnackBar(SnackBar(content: Text(message.message)));
            emit(creating);
          });
        }
      }
    });
  }
}
