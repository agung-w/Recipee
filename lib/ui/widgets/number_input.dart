import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberInput extends StatelessWidget {
  final String hint;
  final String endText;
  final TextEditingController controller;
  final bool nullable;
  final int? maxLength;
  final EdgeInsets padding;
  const NumberInput(
      {super.key,
      required this.hint,
      required this.controller,
      this.nullable = true,
      this.padding = EdgeInsets.zero,
      this.maxLength,
      required this.endText});

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
          suffix: Text(
            endText,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ),
    );
  }
}
