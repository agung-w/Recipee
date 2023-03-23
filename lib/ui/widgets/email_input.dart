import 'package:easy_localization/easy_localization.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const EmailInput({super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.bottom,
      style: const TextStyle(fontSize: 18),
      autocorrect: false,
      validator: (value) {
        if (value == null || EmailValidator.validate(value) == false) {
          return 'email_input_error'.tr();
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
