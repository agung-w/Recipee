// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_recipe_bundle.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderRecipeBundleCWProxy {
  OrderRecipeBundle totalPrice(double totalPrice);

  OrderRecipeBundle quantity(int quantity);

  OrderRecipeBundle id(int? id);

  OrderRecipeBundle title(String title);

  OrderRecipeBundle description(String description);

  OrderRecipeBundle price(double? price);

  OrderRecipeBundle stock(int? stock);

  OrderRecipeBundle picUrl(String? picUrl);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderRecipeBundle(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderRecipeBundle(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderRecipeBundle call({
    double? totalPrice,
    int? quantity,
    int? id,
    String? title,
    String? description,
    double? price,
    int? stock,
    String? picUrl,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrderRecipeBundle.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrderRecipeBundle.copyWith.fieldName(...)`
class _$OrderRecipeBundleCWProxyImpl implements _$OrderRecipeBundleCWProxy {
  const _$OrderRecipeBundleCWProxyImpl(this._value);

  final OrderRecipeBundle _value;

  @override
  OrderRecipeBundle totalPrice(double totalPrice) =>
      this(totalPrice: totalPrice);

  @override
  OrderRecipeBundle quantity(int quantity) => this(quantity: quantity);

  @override
  OrderRecipeBundle id(int? id) => this(id: id);

  @override
  OrderRecipeBundle title(String title) => this(title: title);

  @override
  OrderRecipeBundle description(String description) =>
      this(description: description);

  @override
  OrderRecipeBundle price(double? price) => this(price: price);

  @override
  OrderRecipeBundle stock(int? stock) => this(stock: stock);

  @override
  OrderRecipeBundle picUrl(String? picUrl) => this(picUrl: picUrl);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderRecipeBundle(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderRecipeBundle(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderRecipeBundle call({
    Object? totalPrice = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? stock = const $CopyWithPlaceholder(),
    Object? picUrl = const $CopyWithPlaceholder(),
  }) {
    return OrderRecipeBundle(
      totalPrice:
          totalPrice == const $CopyWithPlaceholder() || totalPrice == null
              ? _value.totalPrice
              // ignore: cast_nullable_to_non_nullable
              : totalPrice as double,
      quantity: quantity == const $CopyWithPlaceholder() || quantity == null
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as String,
      price: price == const $CopyWithPlaceholder()
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as double?,
      stock: stock == const $CopyWithPlaceholder()
          ? _value.stock
          // ignore: cast_nullable_to_non_nullable
          : stock as int?,
      picUrl: picUrl == const $CopyWithPlaceholder()
          ? _value.picUrl
          // ignore: cast_nullable_to_non_nullable
          : picUrl as String?,
    );
  }
}

extension $OrderRecipeBundleCopyWith on OrderRecipeBundle {
  /// Returns a callable class that can be used as follows: `instanceOfOrderRecipeBundle.copyWith(...)` or like so:`instanceOfOrderRecipeBundle.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderRecipeBundleCWProxy get copyWith =>
      _$OrderRecipeBundleCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderRecipeBundle _$OrderRecipeBundleFromJson(Map<String, dynamic> json) =>
    OrderRecipeBundle(
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0,
      quantity: json['quantity'] as int? ?? 0,
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num?)?.toDouble(),
      stock: json['stock'] as int?,
      picUrl: json['pic_url'] as String?,
    );

Map<String, dynamic> _$OrderRecipeBundleToJson(OrderRecipeBundle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'stock': instance.stock,
      'pic_url': instance.picUrl,
      'quantity': instance.quantity,
      'totalPrice': instance.totalPrice,
    };
