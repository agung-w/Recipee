import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LargeTextInput extends StatelessWidget {
  final String? hint;

  const LargeTextInput({super.key, this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.displayMedium,
      maxLength: 100,
      buildCounter: null,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 16, right: 16),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        counterStyle: const TextStyle(
          height: double.minPositive,
        ),
        counterText: "",
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        hintText: hint,
      ),
    );
  }
}
