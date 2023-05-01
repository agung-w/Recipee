import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/cubit/payment_cubit.dart';
import 'package:ta_recipe_app/entities/order.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentPage extends StatelessWidget {
  final Order order;
  final SignedIn authState;
  const PaymentPage({super.key, required this.order, required this.authState});

  @override
  Widget build(BuildContext context) {
    var controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onPageFinished: (url) {
          if (url.startsWith(
              "https://checkout.durianpay.id/payment-link/success")) {
            context.read<PaymentCubit>().checkPaymentStatus(
                id: order.id, context: context, authState: authState);
          }
        },
      ))
      ..loadRequest(Uri.parse(order.paymentLink!));
    return WillPopScope(
      onWillPop: () async {
        context.read<PaymentCubit>().checkPaymentStatus(
            id: order.id, context: context, authState: authState);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                context.read<PaymentCubit>().checkPaymentStatus(
                    id: order.id, context: context, authState: authState);
              }),
        ),
        body: WebViewWidget(controller: controller),
      ),
    );
  }
}
