import 'package:flutter/material.dart';

class SmallUserProfilePic extends StatelessWidget {
  const SmallUserProfilePic({super.key, this.photoUrl, this.size});

  final String? photoUrl;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.network(
        photoUrl ?? "",
        width: size ?? 24,
        height: size ?? 24,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          width: size ?? 24,
          height: size ?? 24,
          color: Theme.of(context).colorScheme.primary,
          child: Icon(
            Icons.person,
            size: size ?? 24,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
