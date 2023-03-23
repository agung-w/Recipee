import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final Function(String? s)? validation;
  const PasswordInput({
    super.key,
    required this.controller,
    required this.label,
    this.validation,
  });

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 18),
      controller: widget.controller,
      autocorrect: false,
      obscureText: !_visible,
      validator:
          widget.validation != null ? (v) => widget.validation!(v) : null,
      decoration: InputDecoration(
        label: Text(widget.label),
        alignLabelWithHint: false,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: IconButton(
          icon: Icon(_visible ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _visible = !_visible;
            });
          },
        ),
      ),
    );
  }
}
