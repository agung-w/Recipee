import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  final Widget child;
  const Skeleton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Shimmer(
          gradient: LinearGradient(
              colors: [
                const Color(0xFFFFFFFF).withOpacity(0),
                const Color(0xFFFFFFFF).withOpacity(0.3),
                const Color(0xFFFFFFFF).withOpacity(0),
              ],
              begin: const Alignment(-1, 0.25),
              end: const Alignment(1, -0.25),
              stops: const [0.3, 0.5, 0.6]),
          child: child,
        ),
      ],
    );
  }
}
