import 'package:flutter/material.dart';

class FollowerCountText extends StatelessWidget {
  final int count;
  final String text;
  const FollowerCountText({
    super.key,
    required this.count,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Text(
            count.toString(),
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const Text(" "),
          Text(
            text.toString(),
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
