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
      onChanged: (value) => setState(() {
        valid = EmailValidator.validate(value);
      }),
      controller: widget.controller,
      decoration: InputDecoration(
          hintText: "Email",
          prefixIconConstraints: const BoxConstraints(),
          errorText: valid != true && widget.controller.text.isNotEmpty
              ? "Please provide valid email address"
              : null),
    );
  }
}
