import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ta_recipe_app/ui/pages/edit_address_page.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: ListView(children: [
        Container(
          color: Theme.of(context).appBarTheme.backgroundColor,
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "shipping_address_text",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  TextButton(
                    child: Text("edit_address_text").tr(),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const EditAddressPage()));
                    },
                  ),
                ],
              ),
              Text("address"),
              Row(
                children: [Text("Recipient name"), Text("recipient contact")],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
