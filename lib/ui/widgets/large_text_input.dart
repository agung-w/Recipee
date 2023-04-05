import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LargeTextInput extends StatelessWidget {
  final String? hint;
  final TextEditingController controller;
  final bool nullable;
  final int? maxLength;

  const LargeTextInput(
      {super.key,
      this.hint,
      required this.controller,
      this.nullable = true,
      this.maxLength});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.headlineMedium,
      maxLength: maxLength,
      validator: !nullable
          ? (value) =>
              value!.trim().isEmpty ? "this_section_cant_be_blank".tr() : null
          : null,
      controller: controller,
      buildCounter: null,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 8, right: 8),
        counterStyle: const TextStyle(
          height: double.minPositive,
        ),
        counterText: "",
        hintText: hint,
      ),
    );
  }
}
