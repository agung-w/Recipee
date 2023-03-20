// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_ingredient.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RecipeIngredientCWProxy {
  RecipeIngredient quantity(int? quantity);

  RecipeIngredient ingredient(Ingredient ingredient);

  RecipeIngredient metric(Metric? metric);

  RecipeIngredient ingredientId(int? ingredientId);

  RecipeIngredient metricId(int? metricId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RecipeIngredient(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RecipeIngredient(...).copyWith(id: 12, name: "My name")
  /// ````
  RecipeIngredient call({
    int? quantity,
    Ingredient? ingredient,
    Metric? metric,
    int? ingredientId,
    int? metricId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRecipeIngredient.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRecipeIngredient.copyWith.fieldName(...)`
class _$RecipeIngredientCWProxyImpl implements _$RecipeIngredientCWProxy {
  const _$RecipeIngredientCWProxyImpl(this._value);

  final RecipeIngredient _value;

  @override
  RecipeIngredient quantity(int? quantity) => this(quantity: quantity);

  @override
  RecipeIngredient ingredient(Ingredient ingredient) =>
      this(ingredient: ingredient);

  @override
  RecipeIngredient metric(Metric? metric) => this(metric: metric);

  @override
  RecipeIngredient ingredientId(int? ingredientId) =>
      this(ingredientId: ingredientId);

  @override
  RecipeIngredient metricId(int? metricId) => this(metricId: metricId);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RecipeIngredient(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RecipeIngredient(...).copyWith(id: 12, name: "My name")
  /// ````
  RecipeIngredient call({
    Object? quantity = const $CopyWithPlaceholder(),
    Object? ingredient = const $CopyWithPlaceholder(),
    Object? metric = const $CopyWithPlaceholder(),
    Object? ingredientId = const $CopyWithPlaceholder(),
    Object? metricId = const $CopyWithPlaceholder(),
  }) {
    return RecipeIngredient(
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
      ingredient:
          ingredient == const $CopyWithPlaceholder() || ingredient == null
              ? _value.ingredient
              // ignore: cast_nullable_to_non_nullable
              : ingredient as Ingredient,
      metric: metric == const $CopyWithPlaceholder()
          ? _value.metric
          // ignore: cast_nullable_to_non_nullable
          : metric as Metric?,
      ingredientId: ingredientId == const $CopyWithPlaceholder()
          ? _value.ingredientId
          // ignore: cast_nullable_to_non_nullable
          : ingredientId as int?,
      metricId: metricId == const $CopyWithPlaceholder()
          ? _value.metricId
          // ignore: cast_nullable_to_non_nullable
          : metricId as int?,
    );
  }
}

extension $RecipeIngredientCopyWith on RecipeIngredient {
  /// Returns a callable class that can be used as follows: `instanceOfRecipeIngredient.copyWith(...)` or like so:`instanceOfRecipeIngredient.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RecipeIngredientCWProxy get copyWith => _$RecipeIngredientCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipeIngredient _$RecipeIngredientFromJson(Map<String, dynamic> json) =>
    RecipeIngredient(
      quantity: json['quantity'] as int?,
      ingredient:
          Ingredient.fromJson(json['ingredient'] as Map<String, dynamic>),
      metric: json['metric'] == null
          ? null
          : Metric.fromJson(json['metric'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecipeIngredientToJson(RecipeIngredient instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'ingredient_id': instance.ingredientId,
      'metric_id': instance.metricId,
    };
