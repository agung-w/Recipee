import 'package:flutter/material.dart';

class ConfirmationDialog extends StatelessWidget {
  final String title;
  final String content;

  final List<Widget> actions;

  const ConfirmationDialog(
      {super.key,
      required this.title,
      required this.content,
      required this.actions});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
      content: Text(
        content,
        textAlign: TextAlign.center,
      ),
      actions: [
        Row(
          children: actions,
        )
      ],
    );
  }
}
