// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderHistoryPageEvent {
  String get token => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getOrderHistory,
    required TResult Function(String id, String token, BuildContext context)
        cancelOrder,
    required TResult Function(String id, String status, String token)
        updateOrderStatus,
    required TResult Function(Order order, String token) addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? getOrderHistory,
    TResult? Function(String id, String token, BuildContext context)?
        cancelOrder,
    TResult? Function(String id, String status, String token)?
        updateOrderStatus,
    TResult? Function(Order order, String token)? addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getOrderHistory,
    TResult Function(String id, String token, BuildContext context)?
        cancelOrder,
    TResult Function(String id, String status, String token)? updateOrderStatus,
    TResult Function(Order order, String token)? addOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderHistory value) getOrderHistory,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AddOrder value) addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderHistory value)? getOrderHistory,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AddOrder value)? addOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderHistory value)? getOrderHistory,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AddOrder value)? addOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderHistoryPageEventCopyWith<OrderHistoryPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryPageEventCopyWith<$Res> {
  factory $OrderHistoryPageEventCopyWith(OrderHistoryPageEvent value,
          $Res Function(OrderHistoryPageEvent) then) =
      _$OrderHistoryPageEventCopyWithImpl<$Res, OrderHistoryPageEvent>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$OrderHistoryPageEventCopyWithImpl<$Res,
        $Val extends OrderHistoryPageEvent>
    implements $OrderHistoryPageEventCopyWith<$Res> {
  _$OrderHistoryPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetOrderHistoryCopyWith<$Res>
    implements $OrderHistoryPageEventCopyWith<$Res> {
  factory _$$_GetOrderHistoryCopyWith(
          _$_GetOrderHistory value, $Res Function(_$_GetOrderHistory) then) =
      __$$_GetOrderHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$_GetOrderHistoryCopyWithImpl<$Res>
    extends _$OrderHistoryPageEventCopyWithImpl<$Res, _$_GetOrderHistory>
    implements _$$_GetOrderHistoryCopyWith<$Res> {
  __$$_GetOrderHistoryCopyWithImpl(
      _$_GetOrderHistory _value, $Res Function(_$_GetOrderHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_GetOrderHistory(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetOrderHistory implements _GetOrderHistory {
  const _$_GetOrderHistory({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'OrderHistoryPageEvent.getOrderHistory(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetOrderHistory &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetOrderHistoryCopyWith<_$_GetOrderHistory> get copyWith =>
      __$$_GetOrderHistoryCopyWithImpl<_$_GetOrderHistory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getOrderHistory,
    required TResult Function(String id, String token, BuildContext context)
        cancelOrder,
    required TResult Function(String id, String status, String token)
        updateOrderStatus,
    required TResult Function(Order order, String token) addOrder,
  }) {
    return getOrderHistory(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? getOrderHistory,
    TResult? Function(String id, String token, BuildContext context)?
        cancelOrder,
    TResult? Function(String id, String status, String token)?
        updateOrderStatus,
    TResult? Function(Order order, String token)? addOrder,
  }) {
    return getOrderHistory?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getOrderHistory,
    TResult Function(String id, String token, BuildContext context)?
        cancelOrder,
    TResult Function(String id, String status, String token)? updateOrderStatus,
    TResult Function(Order order, String token)? addOrder,
    required TResult orElse(),
  }) {
    if (getOrderHistory != null) {
      return getOrderHistory(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderHistory value) getOrderHistory,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AddOrder value) addOrder,
  }) {
    return getOrderHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderHistory value)? getOrderHistory,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AddOrder value)? addOrder,
  }) {
    return getOrderHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderHistory value)? getOrderHistory,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (getOrderHistory != null) {
      return getOrderHistory(this);
    }
    return orElse();
  }
}

abstract class _GetOrderHistory implements OrderHistoryPageEvent {
  const factory _GetOrderHistory({required final String token}) =
      _$_GetOrderHistory;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_GetOrderHistoryCopyWith<_$_GetOrderHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CancelOrderCopyWith<$Res>
    implements $OrderHistoryPageEventCopyWith<$Res> {
  factory _$$_CancelOrderCopyWith(
          _$_CancelOrder value, $Res Function(_$_CancelOrder) then) =
      __$$_CancelOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String token, BuildContext context});
}

/// @nodoc
class __$$_CancelOrderCopyWithImpl<$Res>
    extends _$OrderHistoryPageEventCopyWithImpl<$Res, _$_CancelOrder>
    implements _$$_CancelOrderCopyWith<$Res> {
  __$$_CancelOrderCopyWithImpl(
      _$_CancelOrder _value, $Res Function(_$_CancelOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? token = null,
    Object? context = null,
  }) {
    return _then(_$_CancelOrder(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_CancelOrder implements _CancelOrder {
  const _$_CancelOrder(
      {required this.id, required this.token, required this.context});

  @override
  final String id;
  @override
  final String token;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'OrderHistoryPageEvent.cancelOrder(id: $id, token: $token, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancelOrder &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, token, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancelOrderCopyWith<_$_CancelOrder> get copyWith =>
      __$$_CancelOrderCopyWithImpl<_$_CancelOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getOrderHistory,
    required TResult Function(String id, String token, BuildContext context)
        cancelOrder,
    required TResult Function(String id, String status, String token)
        updateOrderStatus,
    required TResult Function(Order order, String token) addOrder,
  }) {
    return cancelOrder(id, token, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? getOrderHistory,
    TResult? Function(String id, String token, BuildContext context)?
        cancelOrder,
    TResult? Function(String id, String status, String token)?
        updateOrderStatus,
    TResult? Function(Order order, String token)? addOrder,
  }) {
    return cancelOrder?.call(id, token, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getOrderHistory,
    TResult Function(String id, String token, BuildContext context)?
        cancelOrder,
    TResult Function(String id, String status, String token)? updateOrderStatus,
    TResult Function(Order order, String token)? addOrder,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(id, token, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderHistory value) getOrderHistory,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AddOrder value) addOrder,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderHistory value)? getOrderHistory,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AddOrder value)? addOrder,
  }) {
    return cancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderHistory value)? getOrderHistory,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class _CancelOrder implements OrderHistoryPageEvent {
  const factory _CancelOrder(
      {required final String id,
      required final String token,
      required final BuildContext context}) = _$_CancelOrder;

  String get id;
  @override
  String get token;
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$_CancelOrderCopyWith<_$_CancelOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateOrderStatusCopyWith<$Res>
    implements $OrderHistoryPageEventCopyWith<$Res> {
  factory _$$_UpdateOrderStatusCopyWith(_$_UpdateOrderStatus value,
          $Res Function(_$_UpdateOrderStatus) then) =
      __$$_UpdateOrderStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String status, String token});
}

/// @nodoc
class __$$_UpdateOrderStatusCopyWithImpl<$Res>
    extends _$OrderHistoryPageEventCopyWithImpl<$Res, _$_UpdateOrderStatus>
    implements _$$_UpdateOrderStatusCopyWith<$Res> {
  __$$_UpdateOrderStatusCopyWithImpl(
      _$_UpdateOrderStatus _value, $Res Function(_$_UpdateOrderStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? token = null,
  }) {
    return _then(_$_UpdateOrderStatus(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateOrderStatus implements _UpdateOrderStatus {
  const _$_UpdateOrderStatus(
      {required this.id, required this.status, required this.token});

  @override
  final String id;
  @override
  final String status;
  @override
  final String token;

  @override
  String toString() {
    return 'OrderHistoryPageEvent.updateOrderStatus(id: $id, status: $status, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateOrderStatus &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, status, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateOrderStatusCopyWith<_$_UpdateOrderStatus> get copyWith =>
      __$$_UpdateOrderStatusCopyWithImpl<_$_UpdateOrderStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getOrderHistory,
    required TResult Function(String id, String token, BuildContext context)
        cancelOrder,
    required TResult Function(String id, String status, String token)
        updateOrderStatus,
    required TResult Function(Order order, String token) addOrder,
  }) {
    return updateOrderStatus(id, status, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? getOrderHistory,
    TResult? Function(String id, String token, BuildContext context)?
        cancelOrder,
    TResult? Function(String id, String status, String token)?
        updateOrderStatus,
    TResult? Function(Order order, String token)? addOrder,
  }) {
    return updateOrderStatus?.call(id, status, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getOrderHistory,
    TResult Function(String id, String token, BuildContext context)?
        cancelOrder,
    TResult Function(String id, String status, String token)? updateOrderStatus,
    TResult Function(Order order, String token)? addOrder,
    required TResult orElse(),
  }) {
    if (updateOrderStatus != null) {
      return updateOrderStatus(id, status, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderHistory value) getOrderHistory,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AddOrder value) addOrder,
  }) {
    return updateOrderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderHistory value)? getOrderHistory,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AddOrder value)? addOrder,
  }) {
    return updateOrderStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderHistory value)? getOrderHistory,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (updateOrderStatus != null) {
      return updateOrderStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateOrderStatus implements OrderHistoryPageEvent {
  const factory _UpdateOrderStatus(
      {required final String id,
      required final String status,
      required final String token}) = _$_UpdateOrderStatus;

  String get id;
  String get status;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateOrderStatusCopyWith<_$_UpdateOrderStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddOrderCopyWith<$Res>
    implements $OrderHistoryPageEventCopyWith<$Res> {
  factory _$$_AddOrderCopyWith(
          _$_AddOrder value, $Res Function(_$_AddOrder) then) =
      __$$_AddOrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Order order, String token});
}

/// @nodoc
class __$$_AddOrderCopyWithImpl<$Res>
    extends _$OrderHistoryPageEventCopyWithImpl<$Res, _$_AddOrder>
    implements _$$_AddOrderCopyWith<$Res> {
  __$$_AddOrderCopyWithImpl(
      _$_AddOrder _value, $Res Function(_$_AddOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? token = null,
  }) {
    return _then(_$_AddOrder(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddOrder implements _AddOrder {
  const _$_AddOrder({required this.order, required this.token});

  @override
  final Order order;
  @override
  final String token;

  @override
  String toString() {
    return 'OrderHistoryPageEvent.addOrder(order: $order, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddOrder &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddOrderCopyWith<_$_AddOrder> get copyWith =>
      __$$_AddOrderCopyWithImpl<_$_AddOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) getOrderHistory,
    required TResult Function(String id, String token, BuildContext context)
        cancelOrder,
    required TResult Function(String id, String status, String token)
        updateOrderStatus,
    required TResult Function(Order order, String token) addOrder,
  }) {
    return addOrder(order, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? getOrderHistory,
    TResult? Function(String id, String token, BuildContext context)?
        cancelOrder,
    TResult? Function(String id, String status, String token)?
        updateOrderStatus,
    TResult? Function(Order order, String token)? addOrder,
  }) {
    return addOrder?.call(order, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? getOrderHistory,
    TResult Function(String id, String token, BuildContext context)?
        cancelOrder,
    TResult Function(String id, String status, String token)? updateOrderStatus,
    TResult Function(Order order, String token)? addOrder,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(order, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderHistory value) getOrderHistory,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_UpdateOrderStatus value) updateOrderStatus,
    required TResult Function(_AddOrder value) addOrder,
  }) {
    return addOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderHistory value)? getOrderHistory,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult? Function(_AddOrder value)? addOrder,
  }) {
    return addOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderHistory value)? getOrderHistory,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_UpdateOrderStatus value)? updateOrderStatus,
    TResult Function(_AddOrder value)? addOrder,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(this);
    }
    return orElse();
  }
}

abstract class _AddOrder implements OrderHistoryPageEvent {
  const factory _AddOrder(
      {required final Order order, required final String token}) = _$_AddOrder;

  Order get order;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_AddOrderCopyWith<_$_AddOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderHistoryPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Order> orderHistoryList) loaded,
    required TResult Function(String? message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Order> orderHistoryList)? loaded,
    TResult? Function(String? message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Order> orderHistoryList)? loaded,
    TResult Function(String? message)? failed,
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
abstract class $OrderHistoryPageStateCopyWith<$Res> {
  factory $OrderHistoryPageStateCopyWith(OrderHistoryPageState value,
          $Res Function(OrderHistoryPageState) then) =
      _$OrderHistoryPageStateCopyWithImpl<$Res, OrderHistoryPageState>;
}

/// @nodoc
class _$OrderHistoryPageStateCopyWithImpl<$Res,
        $Val extends OrderHistoryPageState>
    implements $OrderHistoryPageStateCopyWith<$Res> {
  _$OrderHistoryPageStateCopyWithImpl(this._value, this._then);

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
    extends _$OrderHistoryPageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OrderHistoryPageState.initial()';
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
    required TResult Function(List<Order> orderHistoryList) loaded,
    required TResult Function(String? message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Order> orderHistoryList)? loaded,
    TResult? Function(String? message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Order> orderHistoryList)? loaded,
    TResult Function(String? message)? failed,
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

abstract class _Initial implements OrderHistoryPageState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Order> orderHistoryList});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$OrderHistoryPageStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderHistoryList = null,
  }) {
    return _then(_$_Loaded(
      orderHistoryList: null == orderHistoryList
          ? _value._orderHistoryList
          : orderHistoryList // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required final List<Order> orderHistoryList})
      : _orderHistoryList = orderHistoryList;

  final List<Order> _orderHistoryList;
  @override
  List<Order> get orderHistoryList {
    if (_orderHistoryList is EqualUnmodifiableListView)
      return _orderHistoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderHistoryList);
  }

  @override
  String toString() {
    return 'OrderHistoryPageState.loaded(orderHistoryList: $orderHistoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._orderHistoryList, _orderHistoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orderHistoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Order> orderHistoryList) loaded,
    required TResult Function(String? message) failed,
  }) {
    return loaded(orderHistoryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Order> orderHistoryList)? loaded,
    TResult? Function(String? message)? failed,
  }) {
    return loaded?.call(orderHistoryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Order> orderHistoryList)? loaded,
    TResult Function(String? message)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(orderHistoryList);
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

abstract class _Loaded implements OrderHistoryPageState {
  const factory _Loaded({required final List<Order> orderHistoryList}) =
      _$_Loaded;

  List<Order> get orderHistoryList;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$OrderHistoryPageStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Failed(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'OrderHistoryPageState.failed(message: $message)';
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
    required TResult Function(List<Order> orderHistoryList) loaded,
    required TResult Function(String? message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Order> orderHistoryList)? loaded,
    TResult? Function(String? message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Order> orderHistoryList)? loaded,
    TResult Function(String? message)? failed,
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

abstract class _Failed implements OrderHistoryPageState {
  const factory _Failed({final String? message}) = _$_Failed;

  String? get message;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}
