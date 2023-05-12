import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ta_recipe_app/entities/recipe_comment.dart';
import 'package:ta_recipe_app/helpers/api_result.dart';
import 'package:ta_recipe_app/services/recipe_services.dart';

part 'comment_state.dart';
part 'comment_cubit.freezed.dart';

class CommentCubit extends Cubit<CommentState> {
  CommentCubit() : super(const CommentState.initial());
  void getComments({required int id, required String token}) async {
    if (state is _Loaded) {
      if ((state as _Loaded).recipeId != id) {
        ApiResult<List<RecipeComment?>> result =
            await RecipeServices().getRecipeComment(id: id, token: token);
        result.map(
            success: (value) =>
                emit(_Loaded(comments: value.value, recipeId: id)),
            failed: (value) => emit(_Failed(message: value.message)));
      }
    } else {
      ApiResult<List<RecipeComment?>> result =
          await RecipeServices().getRecipeComment(id: id, token: token);
      result.map(
          success: (value) =>
              emit(_Loaded(comments: value.value, recipeId: id)),
          failed: (value) => emit(_Failed(message: value.message)));
    }
  }

  Future<void> sendComment({
    required int id,
    required String content,
    required String token,
  }) async {
    if (state is _Loaded) {
      var currentState = (state as _Loaded);
      ApiResult<RecipeComment?> result = await RecipeServices()
          .addRecipeComment(
              comment: RecipeComment(content: content, recipeId: id),
              token: token);
      result.mapOrNull(
        success: (value) {
          List<RecipeComment?> comments = List.from(currentState.comments);
          comments.insert(0, value.value);
          emit((state as _Loaded).copyWith(comments: comments));
        },
      );
    }
  }
}
