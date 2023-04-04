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
import 'package:ta_recipe_app/entities/tag.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/helpers/string_formatter.dart';
import 'package:ta_recipe_app/services/ingredient_services.dart';
import 'package:ta_recipe_app/services/picture_services.dart';
import 'package:ta_recipe_app/services/recipe_services.dart';
import 'package:ta_recipe_app/services/tag_services.dart';
import 'package:ta_recipe_app/ui/pages/create_recipe_page.dart';
import 'package:ta_recipe_app/ui/pages/login_page.dart';

part 'create_recipe_event.dart';
part 'create_recipe_state.dart';
part 'create_recipe_bloc.freezed.dart';

class CreateRecipeBloc extends Bloc<CreateRecipeEvent, CreateRecipeState> {
  CreateRecipeBloc() : super(const _Initial()) {
    on<_Create>((event, emit) async {
      event.state.map(signedIn: (value) {
        emit(_Creating(
          recipe: RecipeDetail(title: "", description: "", user: value.user),
        ));
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
          List<RecipeIngredient> ingredients =
              List.from(creating!.recipe.recipeIngredientsAttributes);
          ingredients.add(RecipeIngredient(
              ingredient: value.value, ingredientId: value.value.id));
          event.controller.clear();
          emit(creating.copyWith(
              recipe: creating.recipe
                  .copyWith(recipeIngredientsAttributes: ingredients)));
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
        List<RecipeIngredient> ingredients =
            List.from(creating!.recipe.recipeIngredientsAttributes);
        ingredients.removeWhere((element) => element == event.ingredient);
        emit(creating.copyWith(
            recipe: creating.recipe
                .copyWith(recipeIngredientsAttributes: ingredients)));
      }
    });

    on<_EditIngredientName>((event, emit) async {
      if (state is _Creating &&
          event.name != event.ingredient.ingredient.name) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<RecipeIngredient> ingredients =
            List.from(creating!.recipe.recipeIngredientsAttributes);
        ApiResult<Ingredient> ingredient =
            await IngredientServices().findIngredient(name: event.name);
        ingredient.map(success: (value) {
          int i =
              ingredients.indexWhere((element) => element == event.ingredient);
          ingredients[i] = ingredients[i]
              .copyWith(ingredient: value.value, ingredientId: value.value.id);
          emit(creating.copyWith(
              recipe: creating.recipe
                  .copyWith(recipeIngredientsAttributes: ingredients)));
        }, failed: (value) {
          ingredients.removeWhere((element) => element == event.ingredient);
          emit(creating.copyWith(
              recipe: creating.recipe
                  .copyWith(recipeIngredientsAttributes: ingredients)));
        });
      }
    });

    on<_EditIngredientQuantity>((event, emit) async {
      if (state is _Creating && event.quantity != event.ingredient.quantity) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<RecipeIngredient> ingredients =
            creating!.recipe.recipeIngredientsAttributes;
        int i =
            ingredients.indexWhere((element) => element == event.ingredient);
        ingredients[i] = ingredients[i].copyWith(quantity: event.quantity);
        emit(creating.copyWith(
            recipe: creating.recipe
                .copyWith(recipeIngredientsAttributes: ingredients)));
      }
    });

    on<_EditIngredientMetric>((event, emit) async {
      if (state is _Creating && event.metric != event.ingredient.metric) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<RecipeIngredient> ingredients =
            List.from(creating!.recipe.recipeIngredientsAttributes);
        int i =
            ingredients.indexWhere((element) => element == event.ingredient);
        ingredients[i] = ingredients[i]
            .copyWith(metric: event.metric, metricId: event.metric?.id);
        emit(creating.copyWith(
            recipe: creating.recipe
                .copyWith(recipeIngredientsAttributes: ingredients)));
      }
    });

    on<_EditCookingStepPic>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        String? picUrl = await PictureServices().uploadPicture(
            picture: await ImagePicker().pickImage(source: ImageSource.gallery),
            type: 'step-pic');
        if (picUrl != null) {
          List<CookingStep> cookingSteps =
              List.from(creating!.recipe.cookingStepsAttributes);
          int i = cookingSteps
              .indexWhere((element) => element == event.cookingStep);
          cookingSteps[i] = cookingSteps[i].copyWith(picUrl: picUrl);
          emit(creating.copyWith(
              recipe: creating.recipe
                  .copyWith(cookingStepsAttributes: cookingSteps)));
        }
      }
    });

    on<_AddCookingStep>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<CookingStep> cookingSteps =
            List.from(creating!.recipe.cookingStepsAttributes);
        cookingSteps.add(CookingStep(
          description: "",
        ));
        emit(creating.copyWith(
            recipe: creating.recipe
                .copyWith(cookingStepsAttributes: cookingSteps)));
      }
    });

    on<_EditCookingStepDescription>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<CookingStep> cookingSteps =
            List.from(creating!.recipe.cookingStepsAttributes);
        int i =
            cookingSteps.indexWhere((element) => element == event.cookingStep);
        cookingSteps[i] = cookingSteps[i]
            .copyWith(description: squish(event.description).trim());
        emit(creating.copyWith(
            recipe: creating.recipe
                .copyWith(cookingStepsAttributes: cookingSteps)));
      }
    });

    on<_DeleteCookingStep>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<CookingStep> cookingSteps =
            List.from(creating!.recipe.cookingStepsAttributes);
        cookingSteps.removeWhere(
          (element) => element == event.cookingStep,
        );
        emit(creating.copyWith(
            recipe: creating.recipe
                .copyWith(cookingStepsAttributes: cookingSteps)));
      }
    });

    on<_AddTag>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        ApiResult<Tag> tag = await TagServices().findTag(name: event.tag);
        tag.map(success: (value) {
          List<Tag> tags =
              List.from(creating!.recipe.recipeTagsAttributes ?? []);
          int i =
              tags.indexWhere((element) => element.name == value.value.name);
          if (i == -1) {
            tags.add(value.value.copyWith(tagId: value.value.id));
            emit(creating.copyWith(
                recipe: creating.recipe.copyWith(recipeTagsAttributes: tags)));
          }
          event.controller.clear();
        }, failed: (value) {
          ScaffoldMessenger.of(event.context)
              .showSnackBar(SnackBar(content: Text("Tag ${value.message}")));
          emit(creating!);
        });
      }
    });

    on<_DeleteTag>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        List<Tag> tags = List.from(creating!.recipe.recipeTagsAttributes ?? []);
        tags.removeWhere(
          (element) => element == event.tag,
        );
        emit(creating.copyWith(
            recipe: creating.recipe.copyWith(recipeTagsAttributes: tags)));
      }
    });

    on<_AddRecipePoster>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        String? picUrl = await PictureServices().uploadPicture(
            picture: await ImagePicker().pickImage(source: ImageSource.gallery),
            type: 'poster');
        if (picUrl != null) {
          emit(creating!.copyWith(
              recipe: creating.recipe.copyWith(posterPicUrl: picUrl)));
        } else {
          emit(creating!);
        }
      }
    });

    on<_DeletePoster>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        ApiResult result = await PictureServices().deletePicture(
          picUrl: event.picUrl,
        );
        result.map(success: (value) {
          emit(creating!
              .copyWith(recipe: creating.recipe.copyWith(posterPicUrl: null)));
        }, failed: (value) {
          ScaffoldMessenger.of(event.context)
              .showSnackBar(SnackBar(content: Text(value.message)));
        });
      }
    });
    on<_DeleteCookingStepPic>((event, emit) async {
      if (state is _Creating) {
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        ApiResult result = await PictureServices().deletePicture(
          picUrl: event.picUrl,
        );
        result.map(success: (value) {
          List<CookingStep> cookingSteps =
              List.from(creating!.recipe.cookingStepsAttributes);
          int i = cookingSteps
              .indexWhere((element) => element == event.cookingStep);
          cookingSteps[i] = cookingSteps[i].copyWith(picUrl: null);
          emit(creating.copyWith(
              recipe: creating.recipe
                  .copyWith(cookingStepsAttributes: cookingSteps)));
        }, failed: (value) {
          ScaffoldMessenger.of(event.context)
              .showSnackBar(SnackBar(content: Text(value.message)));
        });
      }
    });

    on<_Submit>((event, emit) async {
      if (state is _Creating) {
        SharedPreferences pref = await SharedPreferences.getInstance();
        String? token = pref.getString('token');
        _Creating? creating = state.mapOrNull(creating: ((value) => value));
        if (token != null) {
          ApiResult<RecipeDetail> result =
              await RecipeServices().create(token: token, recipe: event.recipe);
          result.map(success: (_) {
            Navigator.pop(event.context);
            ScaffoldMessenger.of(event.context).showSnackBar(
                SnackBar(content: Text("create_recipe_success_message".tr())));
            emit(const _Initial());
          }, failed: (message) {
            ScaffoldMessenger.of(event.context)
                .showSnackBar(SnackBar(content: Text(message.message)));
            emit(creating!);
          });
        }
      }
    });
  }
}
