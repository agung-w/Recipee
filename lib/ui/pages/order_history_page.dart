import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/order_history_page_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/entities/order.dart';
import 'package:ta_recipe_app/helpers/currency.dart';
import 'package:ta_recipe_app/ui/pages/payment_page.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
        builder: (context, state) {
          return state.map(
              signedIn: (authState) => RefreshIndicator(
                    onRefresh: () async {
                      context.read<OrderHistoryPageBloc>().add(
                          OrderHistoryPageEvent.getOrderHistory(
                              token: authState.token));
                    },
                    child: ListView(shrinkWrap: true, children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "order_history_text",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ).tr(),
                      ),
                      BlocBuilder<OrderHistoryPageBloc, OrderHistoryPageState>(
                        builder: (context, state) {
                          return state.map(
                              initial: (_) => const Center(
                                  child: LoadingIndicator(size: 16)),
                              loaded: (value) => ListView(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    children: value.orderHistoryList
                                        .map((e) => Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 16,
                                              ),
                                              child: _OrderHistoryCard(
                                                  order: e,
                                                  authState: authState),
                                            ))
                                        .toList(),
                                  ),
                              failed: (value) => Text(value.message ?? "tes"));
                        },
                      )
                    ]),
                  ),
              signedOut: (value) => Center(
                    child: const Text("not_sign_in_yet_text").tr(),
                  ),
              loading: (_) => const Center(
                    child: LoadingIndicator(size: 16),
                  ));
        },
      ),
    );
  }
}

class _OrderHistoryCard extends StatelessWidget {
  final Order order;
  final SignedIn authState;
  const _OrderHistoryCard({required this.order, required this.authState});

  @override
  Widget build(BuildContext context) {
    int statusStep = getStatusStep(order.status);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(
                        order.id,
                        overflow: TextOverflow.clip,
                        maxLines: 1,
                      )),
                  if (statusStep == -1) ...{
                    Text(
                      "order_canceled_text",
                      style: Theme.of(context).textTheme.labelMedium?.merge(
                          TextStyle(
                              color: Theme.of(context).colorScheme.error)),
                    ).tr()
                  },
                  if (order.status == "unpaid") ...{
                    Row(
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(0, 0),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              maximumSize: Size(
                                  MediaQuery.of(context).size.width * 0.2,
                                  double.infinity),
                            ),
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true).push(
                                  MaterialPageRoute(
                                      builder: (_) => PaymentPage(
                                          order: order, authState: authState)));
                            },
                            child: const Text(
                              "pay_now_text",
                              style: TextStyle(fontSize: 14),
                            ).tr()),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: TextButton(
                              onPressed: () {
                                context.read<OrderHistoryPageBloc>().add(
                                    OrderHistoryPageEvent.cancelOrder(
                                        id: order.id,
                                        token: authState.token,
                                        context: context));
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: const Size(0, 0),
                                maximumSize: Size(
                                    MediaQuery.of(context).size.width * 0.2,
                                    double.infinity),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              child: Text(
                                "cancel_order_text",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Theme.of(context).colorScheme.error),
                              ).tr()),
                        ),
                      ],
                    )
                  }
                ],
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 10,
                      child: Column(
                        children: order.orderItems
                            .map((e) => Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Row(
                                    children: [
                                      Text("${e.quantity} ✕ "),
                                      Column(
                                        children: [
                                          Text(e.recipeBundle.title),
                                          Text(e.recipeBundle.description)
                                        ],
                                      ),
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: VerticalDivider(
                        width: 50,
                        thickness: 1,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "total_text",
                          ).tr(),
                          Text(Currency().toIDR(order.total),
                              style: Theme.of(context).textTheme.labelMedium)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (statusStep != -1) ...{
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _StatusTile(
                        isPassed: statusStep >= 0 ? true : false,
                        isNextStepPassed: statusStep >= 1 ? true : false,
                        isFirst: true,
                        icon: Icons.receipt_long_outlined,
                      ),
                      _StatusTile(
                        isPassed: statusStep >= 1 ? true : false,
                        isNextStepPassed: statusStep >= 2 ? true : false,
                        icon: Icons.paid_outlined,
                      ),
                      _StatusTile(
                        isPassed: statusStep >= 2 ? true : false,
                        isNextStepPassed: statusStep >= 3 ? true : false,
                        icon: Icons.local_shipping_outlined,
                      ),
                      _StatusTile(
                        isPassed: statusStep >= 3 ? true : false,
                        isLast: true,
                        icon: Icons.check_outlined,
                      ),
                    ],
                  ),
                ),
              )
            }
          ],
        ),
      ),
    );
  }

  int getStatusStep(String status) {
    if (status == "unpaid") {
      return 0;
    } else if (status == "paid") {
      return 1;
    } else if (status == "sent") {
      return 2;
    } else if (status == "finished") {
      return 3;
    } else {
      return -1;
    }
  }
}

class _StatusTile extends StatelessWidget {
  final bool? isPassed;
  final bool? isNextStepPassed;
  final IconData icon;
  final bool? isFirst;
  final bool? isLast;
  const _StatusTile(
      {this.isPassed,
      this.isNextStepPassed,
      required this.icon,
      this.isFirst,
      this.isLast});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      child: TimelineTile(
        beforeLineStyle: LineStyle(
          color: isPassed == true
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.secondary,
        ),
        afterLineStyle: LineStyle(
          color: isNextStepPassed == true
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.secondary,
        ),
        indicatorStyle: IndicatorStyle(
            width: 35,
            height: 35,
            drawGap: true,
            indicator: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    color: isPassed == true
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.secondary,
                    width: 2),
              ),
              child: Icon(
                icon,
                color: isPassed == true
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.secondary,
              ),
            )),
        alignment: TimelineAlign.start,
        axis: TimelineAxis.horizontal,
        isFirst: isFirst ?? false,
        isLast: isLast ?? false,
      ),
    );
  }
}
