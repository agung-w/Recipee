import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LongTextInput extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool nullable;
  final int? maxLength;
  const LongTextInput(
      {super.key,
      required this.hint,
      required this.controller,
      this.nullable = true,
      this.maxLength});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context)
          .textTheme
          .bodyMedium!
          .merge(const TextStyle(height: 1.3)),
      maxLength: maxLength,
      validator: !nullable
          ? (value) => value!.isEmpty ? "this_section_cant_be_blank".tr() : null
          : null,
      maxLines: null,
      minLines: 3,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 16, right: 16, bottom: 6),
        counterStyle: const TextStyle(
          height: double.minPositive,
        ),
        hintText: hint,
      ),
    );
  }
}
