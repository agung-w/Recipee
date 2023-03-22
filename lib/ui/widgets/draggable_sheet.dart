import 'package:flutter/material.dart';

class DraggableSheet extends StatelessWidget {
  final List<Widget> children;
  final String? title;
  final double? initSize;
  final double? maxSize;

  const DraggableSheet({
    super.key,
    required this.children,
    required this.title,
    this.initSize,
    this.maxSize,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        expand: false,
        initialChildSize: initSize ?? 0.5,
        maxChildSize: maxSize ?? 1.0,
        minChildSize: initSize ?? 0.25,
        builder: (BuildContext context, ScrollController scrollController) =>
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$title",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      clipBehavior: Clip.none,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        splashColor: Colors.black12,
                        child: const Icon(
                          Icons.close,
                          size: 24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              for (Widget child in children) ...{child}
            ]));
  }
}
