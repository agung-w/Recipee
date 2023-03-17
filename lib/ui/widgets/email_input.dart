import 'package:easy_localization/easy_localization.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailInput extends StatefulWidget {
  final TextEditingController controller;

  const EmailInput({super.key, required this.controller});

  @override
  State<EmailInput> createState() => _EmailInputState();
}

class _EmailInputState extends State<EmailInput> {
  bool valid = false;
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
      controller: widget.controller,
      decoration: const InputDecoration(
        label: Text("Email"),
        alignLabelWithHint: false,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIconConstraints: BoxConstraints(),
      ),
    );
  }
}
