// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, SignedIn authState) started,
    required TResult Function(OrderRecipeBundle bundle, int quantity)
        setBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) addBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) substractBundleQuantity,
    required TResult Function(double fee, ShippingAddress? address)
        changeShippingFee,
    required TResult Function() calculateTotal,
    required TResult Function(
            SignedIn authState, BuildContext context, int recipeId)
        createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, SignedIn authState)? started,
    TResult? Function(OrderRecipeBundle bundle, int quantity)?
        setBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult? Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult? Function()? calculateTotal,
    TResult? Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, SignedIn authState)? started,
    TResult Function(OrderRecipeBundle bundle, int quantity)? setBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult Function()? calculateTotal,
    TResult Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetBundleQuantity value) setBundleQuantity,
    required TResult Function(_AddBundleQuantity value) addBundleQuantity,
    required TResult Function(_SubstractBundleQuantity value)
        substractBundleQuantity,
    required TResult Function(_ChangeShippingFee value) changeShippingFee,
    required TResult Function(_CalculateTotal value) calculateTotal,
    required TResult Function(_CreateOrder value) createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult? Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult? Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult? Function(_ChangeShippingFee value)? changeShippingFee,
    TResult? Function(_CalculateTotal value)? calculateTotal,
    TResult? Function(_CreateOrder value)? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult Function(_ChangeShippingFee value)? changeShippingFee,
    TResult Function(_CalculateTotal value)? calculateTotal,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPageEventCopyWith<$Res> {
  factory $OrderPageEventCopyWith(
          OrderPageEvent value, $Res Function(OrderPageEvent) then) =
      _$OrderPageEventCopyWithImpl<$Res, OrderPageEvent>;
}

/// @nodoc
class _$OrderPageEventCopyWithImpl<$Res, $Val extends OrderPageEvent>
    implements $OrderPageEventCopyWith<$Res> {
  _$OrderPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, SignedIn authState});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$OrderPageEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authState = freezed,
  }) {
    return _then(_$_Started(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      authState: freezed == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as SignedIn,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.id, required this.authState});

  @override
  final int id;
  @override
  final SignedIn authState;

  @override
  String toString() {
    return 'OrderPageEvent.started(id: $id, authState: $authState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.authState, authState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(authState));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, SignedIn authState) started,
    required TResult Function(OrderRecipeBundle bundle, int quantity)
        setBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) addBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) substractBundleQuantity,
    required TResult Function(double fee, ShippingAddress? address)
        changeShippingFee,
    required TResult Function() calculateTotal,
    required TResult Function(
            SignedIn authState, BuildContext context, int recipeId)
        createOrder,
  }) {
    return started(id, authState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, SignedIn authState)? started,
    TResult? Function(OrderRecipeBundle bundle, int quantity)?
        setBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult? Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult? Function()? calculateTotal,
    TResult? Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
  }) {
    return started?.call(id, authState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, SignedIn authState)? started,
    TResult Function(OrderRecipeBundle bundle, int quantity)? setBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult Function()? calculateTotal,
    TResult Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id, authState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetBundleQuantity value) setBundleQuantity,
    required TResult Function(_AddBundleQuantity value) addBundleQuantity,
    required TResult Function(_SubstractBundleQuantity value)
        substractBundleQuantity,
    required TResult Function(_ChangeShippingFee value) changeShippingFee,
    required TResult Function(_CalculateTotal value) calculateTotal,
    required TResult Function(_CreateOrder value) createOrder,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult? Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult? Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult? Function(_ChangeShippingFee value)? changeShippingFee,
    TResult? Function(_CalculateTotal value)? calculateTotal,
    TResult? Function(_CreateOrder value)? createOrder,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult Function(_ChangeShippingFee value)? changeShippingFee,
    TResult Function(_CalculateTotal value)? calculateTotal,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrderPageEvent {
  const factory _Started(
      {required final int id, required final SignedIn authState}) = _$_Started;

  int get id;
  SignedIn get authState;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetBundleQuantityCopyWith<$Res> {
  factory _$$_SetBundleQuantityCopyWith(_$_SetBundleQuantity value,
          $Res Function(_$_SetBundleQuantity) then) =
      __$$_SetBundleQuantityCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderRecipeBundle bundle, int quantity});
}

/// @nodoc
class __$$_SetBundleQuantityCopyWithImpl<$Res>
    extends _$OrderPageEventCopyWithImpl<$Res, _$_SetBundleQuantity>
    implements _$$_SetBundleQuantityCopyWith<$Res> {
  __$$_SetBundleQuantityCopyWithImpl(
      _$_SetBundleQuantity _value, $Res Function(_$_SetBundleQuantity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bundle = null,
    Object? quantity = null,
  }) {
    return _then(_$_SetBundleQuantity(
      bundle: null == bundle
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as OrderRecipeBundle,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetBundleQuantity implements _SetBundleQuantity {
  const _$_SetBundleQuantity({required this.bundle, required this.quantity});

  @override
  final OrderRecipeBundle bundle;
  @override
  final int quantity;

  @override
  String toString() {
    return 'OrderPageEvent.setBundleQuantity(bundle: $bundle, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetBundleQuantity &&
            (identical(other.bundle, bundle) || other.bundle == bundle) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bundle, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetBundleQuantityCopyWith<_$_SetBundleQuantity> get copyWith =>
      __$$_SetBundleQuantityCopyWithImpl<_$_SetBundleQuantity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, SignedIn authState) started,
    required TResult Function(OrderRecipeBundle bundle, int quantity)
        setBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) addBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) substractBundleQuantity,
    required TResult Function(double fee, ShippingAddress? address)
        changeShippingFee,
    required TResult Function() calculateTotal,
    required TResult Function(
            SignedIn authState, BuildContext context, int recipeId)
        createOrder,
  }) {
    return setBundleQuantity(bundle, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, SignedIn authState)? started,
    TResult? Function(OrderRecipeBundle bundle, int quantity)?
        setBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult? Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult? Function()? calculateTotal,
    TResult? Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
  }) {
    return setBundleQuantity?.call(bundle, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, SignedIn authState)? started,
    TResult Function(OrderRecipeBundle bundle, int quantity)? setBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult Function()? calculateTotal,
    TResult Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
    required TResult orElse(),
  }) {
    if (setBundleQuantity != null) {
      return setBundleQuantity(bundle, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetBundleQuantity value) setBundleQuantity,
    required TResult Function(_AddBundleQuantity value) addBundleQuantity,
    required TResult Function(_SubstractBundleQuantity value)
        substractBundleQuantity,
    required TResult Function(_ChangeShippingFee value) changeShippingFee,
    required TResult Function(_CalculateTotal value) calculateTotal,
    required TResult Function(_CreateOrder value) createOrder,
  }) {
    return setBundleQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult? Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult? Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult? Function(_ChangeShippingFee value)? changeShippingFee,
    TResult? Function(_CalculateTotal value)? calculateTotal,
    TResult? Function(_CreateOrder value)? createOrder,
  }) {
    return setBundleQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult Function(_ChangeShippingFee value)? changeShippingFee,
    TResult Function(_CalculateTotal value)? calculateTotal,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (setBundleQuantity != null) {
      return setBundleQuantity(this);
    }
    return orElse();
  }
}

abstract class _SetBundleQuantity implements OrderPageEvent {
  const factory _SetBundleQuantity(
      {required final OrderRecipeBundle bundle,
      required final int quantity}) = _$_SetBundleQuantity;

  OrderRecipeBundle get bundle;
  int get quantity;
  @JsonKey(ignore: true)
  _$$_SetBundleQuantityCopyWith<_$_SetBundleQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddBundleQuantityCopyWith<$Res> {
  factory _$$_AddBundleQuantityCopyWith(_$_AddBundleQuantity value,
          $Res Function(_$_AddBundleQuantity) then) =
      __$$_AddBundleQuantityCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderRecipeBundle bundle});
}

/// @nodoc
class __$$_AddBundleQuantityCopyWithImpl<$Res>
    extends _$OrderPageEventCopyWithImpl<$Res, _$_AddBundleQuantity>
    implements _$$_AddBundleQuantityCopyWith<$Res> {
  __$$_AddBundleQuantityCopyWithImpl(
      _$_AddBundleQuantity _value, $Res Function(_$_AddBundleQuantity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bundle = null,
  }) {
    return _then(_$_AddBundleQuantity(
      bundle: null == bundle
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as OrderRecipeBundle,
    ));
  }
}

/// @nodoc

class _$_AddBundleQuantity implements _AddBundleQuantity {
  const _$_AddBundleQuantity({required this.bundle});

  @override
  final OrderRecipeBundle bundle;

  @override
  String toString() {
    return 'OrderPageEvent.addBundleQuantity(bundle: $bundle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddBundleQuantity &&
            (identical(other.bundle, bundle) || other.bundle == bundle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bundle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddBundleQuantityCopyWith<_$_AddBundleQuantity> get copyWith =>
      __$$_AddBundleQuantityCopyWithImpl<_$_AddBundleQuantity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, SignedIn authState) started,
    required TResult Function(OrderRecipeBundle bundle, int quantity)
        setBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) addBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) substractBundleQuantity,
    required TResult Function(double fee, ShippingAddress? address)
        changeShippingFee,
    required TResult Function() calculateTotal,
    required TResult Function(
            SignedIn authState, BuildContext context, int recipeId)
        createOrder,
  }) {
    return addBundleQuantity(bundle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, SignedIn authState)? started,
    TResult? Function(OrderRecipeBundle bundle, int quantity)?
        setBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult? Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult? Function()? calculateTotal,
    TResult? Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
  }) {
    return addBundleQuantity?.call(bundle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, SignedIn authState)? started,
    TResult Function(OrderRecipeBundle bundle, int quantity)? setBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult Function()? calculateTotal,
    TResult Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
    required TResult orElse(),
  }) {
    if (addBundleQuantity != null) {
      return addBundleQuantity(bundle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetBundleQuantity value) setBundleQuantity,
    required TResult Function(_AddBundleQuantity value) addBundleQuantity,
    required TResult Function(_SubstractBundleQuantity value)
        substractBundleQuantity,
    required TResult Function(_ChangeShippingFee value) changeShippingFee,
    required TResult Function(_CalculateTotal value) calculateTotal,
    required TResult Function(_CreateOrder value) createOrder,
  }) {
    return addBundleQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult? Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult? Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult? Function(_ChangeShippingFee value)? changeShippingFee,
    TResult? Function(_CalculateTotal value)? calculateTotal,
    TResult? Function(_CreateOrder value)? createOrder,
  }) {
    return addBundleQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult Function(_ChangeShippingFee value)? changeShippingFee,
    TResult Function(_CalculateTotal value)? calculateTotal,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (addBundleQuantity != null) {
      return addBundleQuantity(this);
    }
    return orElse();
  }
}

abstract class _AddBundleQuantity implements OrderPageEvent {
  const factory _AddBundleQuantity({required final OrderRecipeBundle bundle}) =
      _$_AddBundleQuantity;

  OrderRecipeBundle get bundle;
  @JsonKey(ignore: true)
  _$$_AddBundleQuantityCopyWith<_$_AddBundleQuantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubstractBundleQuantityCopyWith<$Res> {
  factory _$$_SubstractBundleQuantityCopyWith(_$_SubstractBundleQuantity value,
          $Res Function(_$_SubstractBundleQuantity) then) =
      __$$_SubstractBundleQuantityCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderRecipeBundle bundle});
}

/// @nodoc
class __$$_SubstractBundleQuantityCopyWithImpl<$Res>
    extends _$OrderPageEventCopyWithImpl<$Res, _$_SubstractBundleQuantity>
    implements _$$_SubstractBundleQuantityCopyWith<$Res> {
  __$$_SubstractBundleQuantityCopyWithImpl(_$_SubstractBundleQuantity _value,
      $Res Function(_$_SubstractBundleQuantity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bundle = null,
  }) {
    return _then(_$_SubstractBundleQuantity(
      bundle: null == bundle
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as OrderRecipeBundle,
    ));
  }
}

/// @nodoc

class _$_SubstractBundleQuantity implements _SubstractBundleQuantity {
  const _$_SubstractBundleQuantity({required this.bundle});

  @override
  final OrderRecipeBundle bundle;

  @override
  String toString() {
    return 'OrderPageEvent.substractBundleQuantity(bundle: $bundle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubstractBundleQuantity &&
            (identical(other.bundle, bundle) || other.bundle == bundle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bundle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubstractBundleQuantityCopyWith<_$_SubstractBundleQuantity>
      get copyWith =>
          __$$_SubstractBundleQuantityCopyWithImpl<_$_SubstractBundleQuantity>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, SignedIn authState) started,
    required TResult Function(OrderRecipeBundle bundle, int quantity)
        setBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) addBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) substractBundleQuantity,
    required TResult Function(double fee, ShippingAddress? address)
        changeShippingFee,
    required TResult Function() calculateTotal,
    required TResult Function(
            SignedIn authState, BuildContext context, int recipeId)
        createOrder,
  }) {
    return substractBundleQuantity(bundle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, SignedIn authState)? started,
    TResult? Function(OrderRecipeBundle bundle, int quantity)?
        setBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult? Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult? Function()? calculateTotal,
    TResult? Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
  }) {
    return substractBundleQuantity?.call(bundle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, SignedIn authState)? started,
    TResult Function(OrderRecipeBundle bundle, int quantity)? setBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult Function()? calculateTotal,
    TResult Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
    required TResult orElse(),
  }) {
    if (substractBundleQuantity != null) {
      return substractBundleQuantity(bundle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetBundleQuantity value) setBundleQuantity,
    required TResult Function(_AddBundleQuantity value) addBundleQuantity,
    required TResult Function(_SubstractBundleQuantity value)
        substractBundleQuantity,
    required TResult Function(_ChangeShippingFee value) changeShippingFee,
    required TResult Function(_CalculateTotal value) calculateTotal,
    required TResult Function(_CreateOrder value) createOrder,
  }) {
    return substractBundleQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult? Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult? Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult? Function(_ChangeShippingFee value)? changeShippingFee,
    TResult? Function(_CalculateTotal value)? calculateTotal,
    TResult? Function(_CreateOrder value)? createOrder,
  }) {
    return substractBundleQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult Function(_ChangeShippingFee value)? changeShippingFee,
    TResult Function(_CalculateTotal value)? calculateTotal,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (substractBundleQuantity != null) {
      return substractBundleQuantity(this);
    }
    return orElse();
  }
}

abstract class _SubstractBundleQuantity implements OrderPageEvent {
  const factory _SubstractBundleQuantity(
      {required final OrderRecipeBundle bundle}) = _$_SubstractBundleQuantity;

  OrderRecipeBundle get bundle;
  @JsonKey(ignore: true)
  _$$_SubstractBundleQuantityCopyWith<_$_SubstractBundleQuantity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeShippingFeeCopyWith<$Res> {
  factory _$$_ChangeShippingFeeCopyWith(_$_ChangeShippingFee value,
          $Res Function(_$_ChangeShippingFee) then) =
      __$$_ChangeShippingFeeCopyWithImpl<$Res>;
  @useResult
  $Res call({double fee, ShippingAddress? address});
}

/// @nodoc
class __$$_ChangeShippingFeeCopyWithImpl<$Res>
    extends _$OrderPageEventCopyWithImpl<$Res, _$_ChangeShippingFee>
    implements _$$_ChangeShippingFeeCopyWith<$Res> {
  __$$_ChangeShippingFeeCopyWithImpl(
      _$_ChangeShippingFee _value, $Res Function(_$_ChangeShippingFee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fee = null,
    Object? address = freezed,
  }) {
    return _then(_$_ChangeShippingFee(
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as ShippingAddress?,
    ));
  }
}

/// @nodoc

class _$_ChangeShippingFee implements _ChangeShippingFee {
  const _$_ChangeShippingFee({required this.fee, required this.address});

  @override
  final double fee;
  @override
  final ShippingAddress? address;

  @override
  String toString() {
    return 'OrderPageEvent.changeShippingFee(fee: $fee, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeShippingFee &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fee, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeShippingFeeCopyWith<_$_ChangeShippingFee> get copyWith =>
      __$$_ChangeShippingFeeCopyWithImpl<_$_ChangeShippingFee>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, SignedIn authState) started,
    required TResult Function(OrderRecipeBundle bundle, int quantity)
        setBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) addBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) substractBundleQuantity,
    required TResult Function(double fee, ShippingAddress? address)
        changeShippingFee,
    required TResult Function() calculateTotal,
    required TResult Function(
            SignedIn authState, BuildContext context, int recipeId)
        createOrder,
  }) {
    return changeShippingFee(fee, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, SignedIn authState)? started,
    TResult? Function(OrderRecipeBundle bundle, int quantity)?
        setBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult? Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult? Function()? calculateTotal,
    TResult? Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
  }) {
    return changeShippingFee?.call(fee, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, SignedIn authState)? started,
    TResult Function(OrderRecipeBundle bundle, int quantity)? setBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult Function()? calculateTotal,
    TResult Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
    required TResult orElse(),
  }) {
    if (changeShippingFee != null) {
      return changeShippingFee(fee, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetBundleQuantity value) setBundleQuantity,
    required TResult Function(_AddBundleQuantity value) addBundleQuantity,
    required TResult Function(_SubstractBundleQuantity value)
        substractBundleQuantity,
    required TResult Function(_ChangeShippingFee value) changeShippingFee,
    required TResult Function(_CalculateTotal value) calculateTotal,
    required TResult Function(_CreateOrder value) createOrder,
  }) {
    return changeShippingFee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult? Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult? Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult? Function(_ChangeShippingFee value)? changeShippingFee,
    TResult? Function(_CalculateTotal value)? calculateTotal,
    TResult? Function(_CreateOrder value)? createOrder,
  }) {
    return changeShippingFee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult Function(_ChangeShippingFee value)? changeShippingFee,
    TResult Function(_CalculateTotal value)? calculateTotal,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (changeShippingFee != null) {
      return changeShippingFee(this);
    }
    return orElse();
  }
}

abstract class _ChangeShippingFee implements OrderPageEvent {
  const factory _ChangeShippingFee(
      {required final double fee,
      required final ShippingAddress? address}) = _$_ChangeShippingFee;

  double get fee;
  ShippingAddress? get address;
  @JsonKey(ignore: true)
  _$$_ChangeShippingFeeCopyWith<_$_ChangeShippingFee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CalculateTotalCopyWith<$Res> {
  factory _$$_CalculateTotalCopyWith(
          _$_CalculateTotal value, $Res Function(_$_CalculateTotal) then) =
      __$$_CalculateTotalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CalculateTotalCopyWithImpl<$Res>
    extends _$OrderPageEventCopyWithImpl<$Res, _$_CalculateTotal>
    implements _$$_CalculateTotalCopyWith<$Res> {
  __$$_CalculateTotalCopyWithImpl(
      _$_CalculateTotal _value, $Res Function(_$_CalculateTotal) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CalculateTotal implements _CalculateTotal {
  const _$_CalculateTotal();

  @override
  String toString() {
    return 'OrderPageEvent.calculateTotal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CalculateTotal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, SignedIn authState) started,
    required TResult Function(OrderRecipeBundle bundle, int quantity)
        setBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) addBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) substractBundleQuantity,
    required TResult Function(double fee, ShippingAddress? address)
        changeShippingFee,
    required TResult Function() calculateTotal,
    required TResult Function(
            SignedIn authState, BuildContext context, int recipeId)
        createOrder,
  }) {
    return calculateTotal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, SignedIn authState)? started,
    TResult? Function(OrderRecipeBundle bundle, int quantity)?
        setBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult? Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult? Function()? calculateTotal,
    TResult? Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
  }) {
    return calculateTotal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, SignedIn authState)? started,
    TResult Function(OrderRecipeBundle bundle, int quantity)? setBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult Function()? calculateTotal,
    TResult Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
    required TResult orElse(),
  }) {
    if (calculateTotal != null) {
      return calculateTotal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetBundleQuantity value) setBundleQuantity,
    required TResult Function(_AddBundleQuantity value) addBundleQuantity,
    required TResult Function(_SubstractBundleQuantity value)
        substractBundleQuantity,
    required TResult Function(_ChangeShippingFee value) changeShippingFee,
    required TResult Function(_CalculateTotal value) calculateTotal,
    required TResult Function(_CreateOrder value) createOrder,
  }) {
    return calculateTotal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult? Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult? Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult? Function(_ChangeShippingFee value)? changeShippingFee,
    TResult? Function(_CalculateTotal value)? calculateTotal,
    TResult? Function(_CreateOrder value)? createOrder,
  }) {
    return calculateTotal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult Function(_ChangeShippingFee value)? changeShippingFee,
    TResult Function(_CalculateTotal value)? calculateTotal,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (calculateTotal != null) {
      return calculateTotal(this);
    }
    return orElse();
  }
}

abstract class _CalculateTotal implements OrderPageEvent {
  const factory _CalculateTotal() = _$_CalculateTotal;
}

/// @nodoc
abstract class _$$_CreateOrderCopyWith<$Res> {
  factory _$$_CreateOrderCopyWith(
          _$_CreateOrder value, $Res Function(_$_CreateOrder) then) =
      __$$_CreateOrderCopyWithImpl<$Res>;
  @useResult
  $Res call({SignedIn authState, BuildContext context, int recipeId});
}

/// @nodoc
class __$$_CreateOrderCopyWithImpl<$Res>
    extends _$OrderPageEventCopyWithImpl<$Res, _$_CreateOrder>
    implements _$$_CreateOrderCopyWith<$Res> {
  __$$_CreateOrderCopyWithImpl(
      _$_CreateOrder _value, $Res Function(_$_CreateOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authState = freezed,
    Object? context = null,
    Object? recipeId = null,
  }) {
    return _then(_$_CreateOrder(
      authState: freezed == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as SignedIn,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CreateOrder implements _CreateOrder {
  const _$_CreateOrder(
      {required this.authState, required this.context, required this.recipeId});

  @override
  final SignedIn authState;
  @override
  final BuildContext context;
  @override
  final int recipeId;

  @override
  String toString() {
    return 'OrderPageEvent.createOrder(authState: $authState, context: $context, recipeId: $recipeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateOrder &&
            const DeepCollectionEquality().equals(other.authState, authState) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(authState), context, recipeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateOrderCopyWith<_$_CreateOrder> get copyWith =>
      __$$_CreateOrderCopyWithImpl<_$_CreateOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, SignedIn authState) started,
    required TResult Function(OrderRecipeBundle bundle, int quantity)
        setBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) addBundleQuantity,
    required TResult Function(OrderRecipeBundle bundle) substractBundleQuantity,
    required TResult Function(double fee, ShippingAddress? address)
        changeShippingFee,
    required TResult Function() calculateTotal,
    required TResult Function(
            SignedIn authState, BuildContext context, int recipeId)
        createOrder,
  }) {
    return createOrder(authState, context, recipeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, SignedIn authState)? started,
    TResult? Function(OrderRecipeBundle bundle, int quantity)?
        setBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult? Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult? Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult? Function()? calculateTotal,
    TResult? Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
  }) {
    return createOrder?.call(authState, context, recipeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, SignedIn authState)? started,
    TResult Function(OrderRecipeBundle bundle, int quantity)? setBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? addBundleQuantity,
    TResult Function(OrderRecipeBundle bundle)? substractBundleQuantity,
    TResult Function(double fee, ShippingAddress? address)? changeShippingFee,
    TResult Function()? calculateTotal,
    TResult Function(SignedIn authState, BuildContext context, int recipeId)?
        createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(authState, context, recipeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetBundleQuantity value) setBundleQuantity,
    required TResult Function(_AddBundleQuantity value) addBundleQuantity,
    required TResult Function(_SubstractBundleQuantity value)
        substractBundleQuantity,
    required TResult Function(_ChangeShippingFee value) changeShippingFee,
    required TResult Function(_CalculateTotal value) calculateTotal,
    required TResult Function(_CreateOrder value) createOrder,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult? Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult? Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult? Function(_ChangeShippingFee value)? changeShippingFee,
    TResult? Function(_CalculateTotal value)? calculateTotal,
    TResult? Function(_CreateOrder value)? createOrder,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetBundleQuantity value)? setBundleQuantity,
    TResult Function(_AddBundleQuantity value)? addBundleQuantity,
    TResult Function(_SubstractBundleQuantity value)? substractBundleQuantity,
    TResult Function(_ChangeShippingFee value)? changeShippingFee,
    TResult Function(_CalculateTotal value)? calculateTotal,
    TResult Function(_CreateOrder value)? createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class _CreateOrder implements OrderPageEvent {
  const factory _CreateOrder(
      {required final SignedIn authState,
      required final BuildContext context,
      required final int recipeId}) = _$_CreateOrder;

  SignedIn get authState;
  BuildContext get context;
  int get recipeId;
  @JsonKey(ignore: true)
  _$$_CreateOrderCopyWith<_$_CreateOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<OrderRecipeBundle> bundles,
            double? orderTotal,
            double? shippingFee,
            String? addressError,
            ShippingAddress? shippingAddress)
        loaded,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<OrderRecipeBundle> bundles,
            double? orderTotal,
            double? shippingFee,
            String? addressError,
            ShippingAddress? shippingAddress)?
        loaded,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<OrderRecipeBundle> bundles,
            double? orderTotal,
            double? shippingFee,
            String? addressError,
            ShippingAddress? shippingAddress)?
        loaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPageStateCopyWith<$Res> {
  factory $OrderPageStateCopyWith(
          OrderPageState value, $Res Function(OrderPageState) then) =
      _$OrderPageStateCopyWithImpl<$Res, OrderPageState>;
}

/// @nodoc
class _$OrderPageStateCopyWithImpl<$Res, $Val extends OrderPageState>
    implements $OrderPageStateCopyWith<$Res> {
  _$OrderPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OrderPageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OrderPageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<OrderRecipeBundle> bundles,
            double? orderTotal,
            double? shippingFee,
            String? addressError,
            ShippingAddress? shippingAddress)
        loaded,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<OrderRecipeBundle> bundles,
            double? orderTotal,
            double? shippingFee,
            String? addressError,
            ShippingAddress? shippingAddress)?
        loaded,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<OrderRecipeBundle> bundles,
            double? orderTotal,
            double? shippingFee,
            String? addressError,
            ShippingAddress? shippingAddress)?
        loaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderPageState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<OrderRecipeBundle> bundles,
      double? orderTotal,
      double? shippingFee,
      String? addressError,
      ShippingAddress? shippingAddress});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$OrderPageStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bundles = null,
    Object? orderTotal = freezed,
    Object? shippingFee = freezed,
    Object? addressError = freezed,
    Object? shippingAddress = freezed,
  }) {
    return _then(_$_Loaded(
      bundles: null == bundles
          ? _value._bundles
          : bundles // ignore: cast_nullable_to_non_nullable
              as List<OrderRecipeBundle>,
      orderTotal: freezed == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingFee: freezed == shippingFee
          ? _value.shippingFee
          : shippingFee // ignore: cast_nullable_to_non_nullable
              as double?,
      addressError: freezed == addressError
          ? _value.addressError
          : addressError // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddress?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required final List<OrderRecipeBundle> bundles,
      this.orderTotal,
      this.shippingFee,
      this.addressError,
      this.shippingAddress})
      : _bundles = bundles;

  final List<OrderRecipeBundle> _bundles;
  @override
  List<OrderRecipeBundle> get bundles {
    if (_bundles is EqualUnmodifiableListView) return _bundles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bundles);
  }

  @override
  final double? orderTotal;
  @override
  final double? shippingFee;
  @override
  final String? addressError;
  @override
  final ShippingAddress? shippingAddress;

  @override
  String toString() {
    return 'OrderPageState.loaded(bundles: $bundles, orderTotal: $orderTotal, shippingFee: $shippingFee, addressError: $addressError, shippingAddress: $shippingAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._bundles, _bundles) &&
            (identical(other.orderTotal, orderTotal) ||
                other.orderTotal == orderTotal) &&
            (identical(other.shippingFee, shippingFee) ||
                other.shippingFee == shippingFee) &&
            (identical(other.addressError, addressError) ||
                other.addressError == addressError) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bundles),
      orderTotal,
      shippingFee,
      addressError,
      shippingAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<OrderRecipeBundle> bundles,
            double? orderTotal,
            double? shippingFee,
            String? addressError,
            ShippingAddress? shippingAddress)
        loaded,
    required TResult Function(String message) failed,
  }) {
    return loaded(
        bundles, orderTotal, shippingFee, addressError, shippingAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<OrderRecipeBundle> bundles,
            double? orderTotal,
            double? shippingFee,
            String? addressError,
            ShippingAddress? shippingAddress)?
        loaded,
    TResult? Function(String message)? failed,
  }) {
    return loaded?.call(
        bundles, orderTotal, shippingFee, addressError, shippingAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<OrderRecipeBundle> bundles,
            double? orderTotal,
            double? shippingFee,
            String? addressError,
            ShippingAddress? shippingAddress)?
        loaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          bundles, orderTotal, shippingFee, addressError, shippingAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements OrderPageState {
  const factory _Loaded(
      {required final List<OrderRecipeBundle> bundles,
      final double? orderTotal,
      final double? shippingFee,
      final String? addressError,
      final ShippingAddress? shippingAddress}) = _$_Loaded;

  List<OrderRecipeBundle> get bundles;
  double? get orderTotal;
  double? get shippingFee;
  String? get addressError;
  ShippingAddress? get shippingAddress;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$OrderPageStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Failed(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'OrderPageState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      __$$_FailedCopyWithImpl<_$_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<OrderRecipeBundle> bundles,
            double? orderTotal,
            double? shippingFee,
            String? addressError,
            ShippingAddress? shippingAddress)
        loaded,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<OrderRecipeBundle> bundles,
            double? orderTotal,
            double? shippingFee,
            String? addressError,
            ShippingAddress? shippingAddress)?
        loaded,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<OrderRecipeBundle> bundles,
            double? orderTotal,
            double? shippingFee,
            String? addressError,
            ShippingAddress? shippingAddress)?
        loaded,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements OrderPageState {
  const factory _Failed({required final String message}) = _$_Failed;

  String get message;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
