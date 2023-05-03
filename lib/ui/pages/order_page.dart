import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/order_page_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/cubit/shipping_cubit.dart';
import 'package:ta_recipe_app/entities/order_recipe_bundle.dart';
import 'package:ta_recipe_app/entities/shipping_address.dart';
import 'package:ta_recipe_app/helpers/currency.dart';
import 'package:ta_recipe_app/ui/pages/edit_address_page.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';

class OrderPage extends StatelessWidget {
  final SignedIn authState;
  final int recipeId;
  const OrderPage({super.key, required this.authState, required this.recipeId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<OrderPageBloc, OrderPageState>(
          listener: (context, orderState) {
            context
                .read<OrderPageBloc>()
                .add(const OrderPageEvent.calculateTotal());
          },
        ),
        BlocListener<ShippingCubit, ShippingState>(
          listener: (context, state) {
            double? shippingFee = state.mapOrNull(
              loaded: (value) => value.shippingFee.mapOrNull(
                success: (value) => value.value.fee,
              ),
            );
            ShippingAddress? address =
                state.mapOrNull(loaded: (value) => value.shippingAddress);
            context.read<OrderPageBloc>().add(OrderPageEvent.changeShippingFee(
                fee: shippingFee ?? 0, address: address));
          },
        )
      ],
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          body: Stack(
            children: [
              ListView(children: [
                BlocBuilder<ShippingCubit, ShippingState>(
                  builder: (context, shippingState) {
                    return _AddressBox(
                      state: shippingState,
                      authState: authState,
                    );
                  },
                ),
                const _BundlingBox(),
                BlocBuilder<OrderPageBloc, OrderPageState>(
                  builder: (context, state) {
                    return state.mapOrNull(loaded: (value) {
                          if (value.orderTotal != null) {
                            return const _PricingDetailBox();
                          } else {
                            return const SizedBox();
                          }
                        }) ??
                        const SizedBox();
                  },
                )
              ]),
              _OrderTotalBox(
                authState: authState,
                recipeId: recipeId,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _OrderTotalBox extends StatelessWidget {
  final SignedIn authState;

  final int recipeId;
  const _OrderTotalBox({required this.authState, required this.recipeId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderPageBloc, OrderPageState>(
      builder: (context, state) {
        return Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Theme.of(context).cardColor,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "total_text",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ).tr(),
                        Text(
                          state.mapOrNull(
                                loaded: (value) => value.orderTotal == null
                                    ? "-"
                                    : Currency().toIDR(value.orderTotal!),
                              ) ??
                              "-",
                          style: Theme.of(context).textTheme.labelLarge,
                        )
                      ],
                    ),
                    ElevatedButton(
                        onPressed: state.mapOrNull(
                                        loaded: (value) => value.orderTotal) !=
                                    null &&
                                state.mapOrNull(
                                        loaded: (value) =>
                                            value.addressError) ==
                                    null
                            ? () {
                                context.read<OrderPageBloc>().add(
                                    OrderPageEvent.createOrder(
                                        authState: authState,
                                        context: context,
                                        recipeId: recipeId));
                              }
                            : null,
                        child: const Text("buy_text").tr())
                  ]),
            ));
      },
    );
  }
}

class _PricingDetailBox extends StatelessWidget {
  const _PricingDetailBox();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              "pricing_detail_text".tr(),
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          BlocBuilder<OrderPageBloc, OrderPageState>(
            builder: (context, state) {
              return state.map(
                loaded: (value) => Column(
                  children: value.bundles.map((e) {
                    return e.quantity > 0
                        ? PricingTile(
                            text: e.title,
                            price: Currency().toIDR(e.totalPrice))
                        : const SizedBox();
                  }).toList(),
                ),
                failed: (value) => const SizedBox(),
                initial: (value) => const SizedBox(),
              );
            },
          ),
          BlocBuilder<ShippingCubit, ShippingState>(
            builder: (context, shippingState) {
              return shippingState.map(
                loaded: (value) => value.shippingFee.map(
                  success: (value) => PricingTile(
                      text: "shipping_fee_text".tr(),
                      price: Currency().toIDR(value.value.fee)),
                  failed: (value) =>
                      PricingTile(text: "shipping_fee_text".tr(), price: "-"),
                ),
                loading: (_) => Center(
                  child: LoadingIndicator(
                    size: 16,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _BundlingBox extends StatelessWidget {
  const _BundlingBox();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "bundling_text".tr(),
            style: Theme.of(context).textTheme.labelLarge,
          ),
          BlocBuilder<OrderPageBloc, OrderPageState>(
            builder: (context, state) {
              return state.map(
                  initial: (_) => Center(
                        child: LoadingIndicator(
                          size: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                  loaded: (value) => Column(
                        children: value.bundles.map((e) {
                          return _BundleTile(
                            bundle: e,
                          );
                        }).toList(),
                      ),
                  failed: (value) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Center(child: Text(value.message)),
                      ));
            },
          )
        ],
      ),
    );
  }
}

class _BundleTile extends StatelessWidget {
  final OrderRecipeBundle bundle;
  const _BundleTile({required this.bundle});

  @override
  Widget build(BuildContext context) {
    TextEditingController quantity =
        TextEditingController(text: bundle.quantity.toString());
    quantity.selection = TextSelection.collapsed(offset: quantity.text.length);
    return Container(
      padding: const EdgeInsets.only(top: 8),
      margin: const EdgeInsets.only(top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            bundle.picUrl ?? "",
            height: 60,
            width: 60,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => Icon(
              Icons.image,
              size: 60,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  bundle.title,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  bundle.description,
                  maxLines: 3,
                  overflow: TextOverflow.clip,
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(children: [
                IconButton(
                  padding: const EdgeInsets.only(right: 5),
                  constraints: const BoxConstraints(),
                  color: Theme.of(context).colorScheme.primary,
                  iconSize: 20,
                  icon: const Icon(Icons.remove),
                  onPressed: bundle.quantity > 0
                      ? () {
                          context
                              .read<OrderPageBloc>()
                              .add(OrderPageEvent.substractBundleQuantity(
                                bundle: bundle,
                              ));
                        }
                      : null,
                ),
                SizedBox(
                  width: 36,
                  height: 36,
                  child: TextFormField(
                      onChanged: (value) {
                        if (value.isEmpty) {
                          value = "0";
                        }
                        context.read<OrderPageBloc>().add(
                            OrderPageEvent.setBundleQuantity(
                                bundle: bundle, quantity: int.parse(value)));
                      },
                      controller: quantity,
                      maxLength: 3,
                      buildCounter: null,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        constraints: BoxConstraints(),
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(0),
                        counterStyle: TextStyle(
                          height: double.minPositive,
                        ),
                        counterText: "",
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ]),
                ),
                IconButton(
                  padding: const EdgeInsets.only(left: 5),
                  constraints: const BoxConstraints(),
                  color: Theme.of(context).colorScheme.primary,
                  iconSize: 20,
                  icon: const Icon(Icons.add),
                  onPressed: bundle.stock! > bundle.quantity
                      ? () {
                          context
                              .read<OrderPageBloc>()
                              .add(OrderPageEvent.addBundleQuantity(
                                bundle: bundle,
                              ));
                        }
                      : null,
                )
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  Currency().toIDR(bundle.price!),
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _AddressBox extends StatelessWidget {
  final ShippingState state;
  final SignedIn authState;
  const _AddressBox({required this.state, required this.authState});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).cardColor,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "shipping_address_text",
                style: Theme.of(context).textTheme.labelLarge,
              ).tr(),
              TextButton(
                child: const Text(
                  "edit_address_text",
                  style: TextStyle(fontSize: 14),
                ).tr(),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => EditAddressPage(
                        shippingAddress: state.mapOrNull(
                            loaded: (value) => value.shippingAddress),
                        authUser: authState),
                  ));
                },
              ),
            ],
          ),
          state.map(
            loaded: (value) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(value.shippingAddress.address?.isEmpty == true
                      ? "please_set_address_text".tr()
                      : value.shippingAddress.address!),
                ),
                Row(
                  children: [
                    Text(
                      "${value.shippingAddress.recipientName} | ",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Text(
                        value.shippingAddress.recipientContact?.isEmpty == true
                            ? "please_set_recipient_contact_text".tr()
                            : value.shippingAddress.recipientContact!,
                        style: Theme.of(context).textTheme.labelSmall)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: value.shippingFee.map(
                    success: (fee) => Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(fee.value.distance,
                            style: Theme.of(context).textTheme.labelSmall),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(Currency().toIDR(fee.value.fee),
                            style: Theme.of(context).textTheme.labelSmall)
                      ],
                    ),
                    failed: (fee) => Text(fee.message),
                  ),
                )
              ],
            ),
            loading: (_) => Center(
              child: LoadingIndicator(
                size: 16,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PricingTile extends StatelessWidget {
  final String text;
  final String price;
  const PricingTile({super.key, required this.text, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: Theme.of(context).textTheme.bodyLarge),
          Text(
            price,
            style: Theme.of(context).textTheme.labelSmall,
          )
        ],
      ),
    );
  }
}
