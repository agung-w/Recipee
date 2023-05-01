// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderItemCWProxy {
  OrderItem quantity(int quantity);

  OrderItem recipeBundle(RecipeBundle recipeBundle);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderItem(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderItem call({
    int? quantity,
    RecipeBundle? recipeBundle,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrderItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrderItem.copyWith.fieldName(...)`
class _$OrderItemCWProxyImpl implements _$OrderItemCWProxy {
  const _$OrderItemCWProxyImpl(this._value);

  final OrderItem _value;

  @override
  OrderItem quantity(int quantity) => this(quantity: quantity);

  @override
  OrderItem recipeBundle(RecipeBundle recipeBundle) =>
      this(recipeBundle: recipeBundle);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderItem(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderItem call({
    Object? quantity = const $CopyWithPlaceholder(),
    Object? recipeBundle = const $CopyWithPlaceholder(),
  }) {
    return OrderItem(
      quantity: quantity == const $CopyWithPlaceholder() || quantity == null
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int,
      recipeBundle:
          recipeBundle == const $CopyWithPlaceholder() || recipeBundle == null
              ? _value.recipeBundle
              // ignore: cast_nullable_to_non_nullable
              : recipeBundle as RecipeBundle,
    );
  }
}

extension $OrderItemCopyWith on OrderItem {
  /// Returns a callable class that can be used as follows: `instanceOfOrderItem.copyWith(...)` or like so:`instanceOfOrderItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderItemCWProxy get copyWith => _$OrderItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
      quantity: json['quantity'] as int,
      recipeBundle:
          RecipeBundle.fromJson(json['recipe_bundle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
      'quantity': instance.quantity,
      'recipe_bundle': instance.recipeBundle,
    };
