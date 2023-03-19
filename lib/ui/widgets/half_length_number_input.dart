import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HalfLengthNumberInput extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool nullable;
  final int? maxLength;
  final EdgeInsets padding;
  const HalfLengthNumberInput(
      {super.key,
      required this.hint,
      required this.controller,
      this.nullable = true,
      this.padding = EdgeInsets.zero,
      this.maxLength});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
          style: Theme.of(context).textTheme.bodyMedium,
          maxLength: maxLength,
          validator: !nullable
              ? (value) =>
                  value!.isEmpty ? "this_section_cant_be_blank".tr() : null
              : null,
          controller: controller,
          buildCounter: null,
          decoration: InputDecoration(
            counterStyle: const TextStyle(
              height: double.minPositive,
            ),
            labelText: hint,
            labelStyle: Theme.of(context).textTheme.titleMedium,
            floatingLabelStyle: Theme.of(context).textTheme.titleMedium,
            floatingLabelBehavior: FloatingLabelBehavior.always,
          )),
    );
  }
}
