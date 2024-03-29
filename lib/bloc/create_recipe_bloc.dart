import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ta_recipe_app/bloc/recipe_detail_bloc.dart';
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
import 'package:ta_recipe_app/ui/pages/edit_recipe_page.dart';
import 'package:ta_recipe_app/ui/pages/login_page.dart';

part 'create_recipe_event.dart';
part 'create_recipe_state.dart';
part 'create_recipe_bloc.freezed.dart';

class CreateRecipeBloc extends Bloc<CreateRecipeEvent, CreateRecipeState> {
  CreateRecipeBloc() : super(const _Initial(recipe: null)) {
    on<_Create>((event, emit) async {
      event.state.map(signedIn: (value) {
        emit(_Creating(
          recipe: RecipeDetail(title: "", description: "", user: value.user),
        ));
        Navigator.of(event.context, rootNavigator: true)
            .push(MaterialPageRoute(builder: (_) => const CreateRecipePage()));
      }, signedOut: (_) {
        emit(const _Initial(recipe: null));
        Navigator.of(event.context, rootNavigator: true)
            .push(MaterialPageRoute(builder: (_) => const LoginPage()));
      }, loading: (_) {
        emit(const _Initial(recipe: null));
      });
    });
    on<_Edit>((event, emit) async {
      List<RecipeIngredient> ingredients =
          List.from(event.recipe.recipeIngredients);
      List<Tag> tags = List.from(event.recipe.tags ?? []);
      ingredients = ingredients
          .map((e) =>
              e.copyWith(metricId: e.metric?.id, ingredientId: e.ingredient.id))
          .toList();
      tags = tags.map((e) => e.copyWith(tagId: e.id)).toList();
      emit(_Creating(
          recipe: event.recipe.copyWith(
              cookingStepsAttributes: event.recipe.cookingSteps,
              recipeIngredientsAttributes: ingredients,
              recipeTagsAttributes: tags),
          prevRecipe: event.recipe));
      Navigator.of(event.context, rootNavigator: true)
          .push(MaterialPageRoute(builder: (_) => const EditRecipePage()));
    });
    on<_AddIngredient>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        emit(_Initial(recipe: creating.recipe));
        ApiResult<Ingredient> ingredient =
            await IngredientServices().findIngredient(name: event.ingredient);
        ingredient.map(success: (value) {
          List<RecipeIngredient> ingredients =
              List.from(creating.recipe.recipeIngredientsAttributes);
          ingredients.add(RecipeIngredient(
              ingredient: value.value, ingredientId: value.value.id));
          event.controller.clear();
          emit(creating.copyWith(
              recipe: creating.recipe
                  .copyWith(recipeIngredientsAttributes: ingredients)));
        }, failed: (value) {
          ScaffoldMessenger.of(event.context)
              .showSnackBar(SnackBar(content: Text(value.message)));
          emit(creating);
        });
      }
    });

    on<_DeleteIngredient>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        emit(_Initial(recipe: creating.recipe));
        List<RecipeIngredient> ingredients =
            List.from(creating.recipe.recipeIngredientsAttributes);
        ingredients.removeWhere((element) => element == event.ingredient);
        emit(creating.copyWith(
            recipe: creating.recipe
                .copyWith(recipeIngredientsAttributes: ingredients)));
      }
    });

    on<_EditIngredientName>((event, emit) async {
      if (state is _Creating &&
          event.name != event.ingredient.ingredient.name) {
        _Creating creating = state as _Creating;
        emit(_Initial(recipe: creating.recipe));
        List<RecipeIngredient> ingredients =
            List.from(creating.recipe.recipeIngredientsAttributes);
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
        _Creating creating = state as _Creating;
        emit(_Initial(recipe: creating.recipe));
        List<RecipeIngredient> ingredients =
            List.from(creating.recipe.recipeIngredientsAttributes);
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
        _Creating creating = state as _Creating;
        emit(_Initial(recipe: creating.recipe));
        List<RecipeIngredient> ingredients =
            List.from(creating.recipe.recipeIngredientsAttributes);
        int i =
            ingredients.indexWhere((element) => element == event.ingredient);
        ingredients[i] = ingredients[i]
            .copyWith(metric: event.metric, metricId: event.metric?.id);
        emit(creating.copyWith(
            recipe: creating.recipe
                .copyWith(recipeIngredientsAttributes: ingredients)));
      }
    });

    on<_AddCookingStep>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        emit(_Initial(recipe: creating.recipe));
        List<CookingStep> cookingSteps =
            List.from(creating.recipe.cookingStepsAttributes);
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
        _Creating creating = state as _Creating;
        emit(_Initial(recipe: creating.recipe));
        List<CookingStep> cookingSteps =
            List.from(creating.recipe.cookingStepsAttributes);
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
        _Creating creating = state as _Creating;
        emit(_Initial(recipe: creating.recipe));
        List<CookingStep> cookingSteps =
            List.from(creating.recipe.cookingStepsAttributes);
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
        _Creating creating = state as _Creating;
        emit(_Initial(recipe: creating.recipe));
        ApiResult<Tag> tag = await TagServices().findTag(name: event.tag);
        tag.map(success: (value) {
          List<Tag> tags =
              List.from(creating.recipe.recipeTagsAttributes ?? []);
          int i =
              tags.indexWhere((element) => element.name == value.value.name);
          if (i == -1) {
            tags.add(value.value.copyWith(tagId: value.value.id));
            emit(creating.copyWith(
                recipe: creating.recipe.copyWith(recipeTagsAttributes: tags)));
          } else {
            emit(creating);
          }
          event.controller.clear();
        }, failed: (value) {
          ScaffoldMessenger.of(event.context)
              .showSnackBar(SnackBar(content: Text("Tag ${value.message}")));
          emit(creating);
        });
      }
    });

    on<_DeleteTag>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        emit(_Initial(recipe: creating.recipe));
        List<Tag> tags = List.from(creating.recipe.recipeTagsAttributes ?? []);
        tags.removeWhere(
          (element) => element == event.tag,
        );
        emit(creating.copyWith(
            recipe: creating.recipe.copyWith(recipeTagsAttributes: tags)));
      }
    });

    on<_AddRecipePoster>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        _deleteRecipePoster(creating: creating);
        String? picUrl = await PictureServices()
            .uploadPicture(picture: event.file, type: 'poster');
        if (picUrl != null) {
          emit(creating.copyWith(
              recipe: creating.recipe.copyWith(posterPicUrl: picUrl)));
        } else {
          emit(creating);
        }
      }
    });

    on<_DeletePoster>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        _deleteRecipePoster(creating: creating);
        emit(creating.copyWith(
            recipe: creating.recipe.copyWith(posterPicUrl: null)));
      }
    });
    on<_DeleteCookingStepPic>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        _deleteCookingStepPic(
            creating: creating, cookingStep: event.cookingStep);
        List<CookingStep> cookingSteps =
            List.from(creating.recipe.cookingStepsAttributes);
        int i =
            cookingSteps.indexWhere((element) => element == event.cookingStep);
        cookingSteps[i] = cookingSteps[i].copyWith(picUrl: null);
        emit(creating.copyWith(
            recipe: creating.recipe
                .copyWith(cookingStepsAttributes: cookingSteps)));
      }
    });

    on<_EditCookingStepPic>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        emit(_Initial(recipe: creating.recipe));
        _deleteCookingStepPic(
            creating: creating, cookingStep: event.cookingStep);
        String? picUrl = await PictureServices()
            .uploadPicture(picture: event.file, type: 'step-pic');
        if (picUrl != null) {
          List<CookingStep> cookingSteps =
              List.from(creating.recipe.cookingStepsAttributes);
          int i = cookingSteps
              .indexWhere((element) => element == event.cookingStep);
          cookingSteps[i] = cookingSteps[i].copyWith(picUrl: picUrl);
          emit(creating.copyWith(
              recipe: creating.recipe
                  .copyWith(cookingStepsAttributes: cookingSteps)));
        }
      }
    });

    on<_Submit>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        emit(_Initial(recipe: creating.recipe));
        if (event.authState is SignedIn) {
          ApiResult<RecipeDetail> result = await RecipeServices().create(
              token: (event.authState as SignedIn).token,
              recipe: creating.recipe.copyWith(
                  cookingStepsAttributes: creating.recipe.cookingStepsAttributes
                      .asMap()
                      .map((i, e) => MapEntry(i, e.copyWith(step: i + 1)))
                      .values
                      .toList()));
          result.map(success: (_) {
            Navigator.pop(event.context);
            ScaffoldMessenger.of(event.context).showSnackBar(
                SnackBar(content: Text("create_recipe_success_message".tr())));
            emit(const _Initial(recipe: null));
          }, failed: (message) {
            ScaffoldMessenger.of(event.context)
                .showSnackBar(SnackBar(content: Text(message.message)));
            emit(creating);
          });
        }
      }
    });

    on<_Cancel>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        _deleteRecipePoster(creating: creating);
        _deleteCookingStepPic(creating: creating);
        emit(const _Initial(recipe: null));
        Navigator.of(event.context).popUntil((route) => route.isFirst);
      }
    });

    on<_EditTitle>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        emit(creating.copyWith(
            recipe: creating.recipe.copyWith(title: event.title)));
      }
    });

    on<_EditDescription>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        emit(creating.copyWith(
            recipe: creating.recipe.copyWith(description: event.description)));
      }
    });

    on<_EditServing>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        emit(creating.copyWith(
            recipe: creating.recipe
                .copyWith(serving: int.tryParse(event.serving))));
      }
    });

    on<_EditPrepTime>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        emit(creating.copyWith(
            recipe: creating.recipe
                .copyWith(prepTime: int.tryParse(event.prepTime))));
      }
    });

    on<_SaveEdit>((event, emit) async {
      if (state is _Creating) {
        _Creating creating = state as _Creating;
        emit(_Initial(recipe: creating.recipe));
        if (event.authState is SignedIn) {
          ApiResult<RecipeDetail> result = await RecipeServices().update(
              token: (event.authState as SignedIn).token,
              recipe: creating.recipe.copyWith(
                  cookingStepsAttributes: creating.recipe.cookingStepsAttributes
                      .asMap()
                      .map((i, e) => MapEntry(i, e.copyWith(step: i + 1)))
                      .values
                      .toList()));
          result.map(success: (value) {
            Navigator.pop(event.context);
            _deletePrevRecipePoster(creating: creating);
            _deletePrevCookingStepPic(creating: creating);
            ScaffoldMessenger.of(event.context).showSnackBar(
                SnackBar(content: Text("edit_recipe_success_message".tr())));
            emit(const _Initial(recipe: null));
            event.context
                .read<RecipeDetailBloc>()
                .add(RecipeDetailEvent.refreshDetail(recipe: value.value));
          }, failed: (message) {
            ScaffoldMessenger.of(event.context)
                .showSnackBar(SnackBar(content: Text(message.message)));
            emit(creating);
          });
        }
      }
    });
  }

  void _deleteRecipePoster({required _Creating creating}) {
    if (creating.prevRecipe != null) {
      if (creating.recipe.posterPicUrl != null &&
          creating.prevRecipe!.posterPicUrl != creating.recipe.posterPicUrl) {
        PictureServices().deletePicture(
          picUrl: creating.recipe.posterPicUrl!,
        );
      }
    } else {
      if (creating.recipe.posterPicUrl != null) {
        PictureServices().deletePicture(
          picUrl: creating.recipe.posterPicUrl!,
        );
      }
    }
  }

  void _deleteCookingStepPic(
      {required _Creating creating, CookingStep? cookingStep}) {
    if (creating.prevRecipe != null) {
      for (var e in creating.recipe.cookingStepsAttributes) {
        if (cookingStep != null) {
          if (e == cookingStep) {
            if (e.picUrl != null) {
              if (creating.prevRecipe!.cookingSteps
                      .indexWhere((element) => element.picUrl == e.picUrl) ==
                  -1) {
                PictureServices().deletePicture(
                  picUrl: e.picUrl!,
                );
              }
            }
          }
        } else {
          if (e.picUrl != null) {
            if (creating.prevRecipe!.cookingSteps
                    .indexWhere((element) => element.picUrl == e.picUrl) ==
                -1) {
              PictureServices().deletePicture(
                picUrl: e.picUrl!,
              );
            }
          }
        }
      }
    } else {
      for (var e in creating.recipe.cookingStepsAttributes) {
        if (e.picUrl != null) {
          PictureServices().deletePicture(
            picUrl: e.picUrl!,
          );
        }
      }
    }
  }

  void _deletePrevRecipePoster({required _Creating creating}) {
    if (creating.prevRecipe != null) {
      if (creating.prevRecipe!.posterPicUrl != null &&
          creating.prevRecipe!.posterPicUrl != creating.recipe.posterPicUrl) {
        PictureServices().deletePicture(
          picUrl: creating.prevRecipe!.posterPicUrl!,
        );
      }
    }
  }

  void _deletePrevCookingStepPic({required _Creating creating}) {
    if (creating.prevRecipe != null) {
      for (var e in creating.prevRecipe!.cookingSteps) {
        if (e.picUrl != null) {
          if (creating.recipe.cookingStepsAttributes
                  .indexWhere((element) => element.picUrl == e.picUrl) ==
              -1) {
            PictureServices().deletePicture(
              picUrl: e.picUrl!,
            );
          }
        }
      }
    }
  }
}
