import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NormalTextInput extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool nullable;
  final int? maxLength;
  const NormalTextInput(
      {super.key,
      required this.hint,
      required this.controller,
      this.nullable = true,
      this.maxLength});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: Theme.of(context).textTheme.bodyMedium,
        maxLength: maxLength,
        validator: !nullable
            ? (value) =>
                value!.isEmpty ? "this_section_cant_be_blank".tr() : null
            : null,
        controller: controller,
        buildCounter: null,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 16, right: 16),
          counterStyle: const TextStyle(
            height: double.minPositive,
          ),
          counterText: "",
          hintText: hint,
        ));
  }
}
