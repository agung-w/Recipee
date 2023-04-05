import 'package:flutter/material.dart';

class SmallUserProfilePic extends StatelessWidget {
  const SmallUserProfilePic({
    super.key,
    this.photoUrl,
  });

  final String? photoUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.network(
        photoUrl ?? "",
        width: 24,
        height: 24,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Icon(
          Icons.person,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
