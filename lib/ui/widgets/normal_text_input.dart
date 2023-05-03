import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NormalTextInput extends StatelessWidget {
  final TextEditingController controller;
  final bool nullable;
  final int? maxLength;
  final int? minLength;
  final String label;
  const NormalTextInput(
      {super.key,
      required this.controller,
      this.nullable = true,
      this.maxLength,
      required this.label,
      this.minLength});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 18),
      validator: (value) {
        if (nullable) {
          if (value == null || value.isEmpty) {
            return null;
          } else {
            if (minLength != null && maxLength != null) {
              if (value.length < minLength! || value.length > maxLength!) {
                return "input_length_error".tr(namedArgs: {
                  'min': minLength.toString(),
                  'max': maxLength.toString()
                });
              }
            } else {
              return null;
            }
          }
        } else {
          if (value == null) {
            return "this_section_cant_be_blank".tr();
          }
          if (minLength != null && maxLength != null) {
            if (value.length < minLength! || value.length > maxLength!) {
              return "input_length_error".tr(namedArgs: {
                'min': minLength.toString(),
                'max': maxLength.toString()
              });
            }
          }
        }
        return null;
      },
      controller: controller,
      decoration: InputDecoration(
        label: Text(label),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIconConstraints: const BoxConstraints(),
      ),
    );
  }
}
