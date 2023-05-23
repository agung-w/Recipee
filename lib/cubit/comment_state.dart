part of 'comment_cubit.dart';

@freezed
class CommentState with _$CommentState {
  const factory CommentState.initial() = _Initial;
  const factory CommentState.failed({String? message}) = _Failed;
  const factory CommentState.loaded(
      {required List<RecipeComment?> comments,
      required int recipeId,
      required String root}) = _Loaded;
}
