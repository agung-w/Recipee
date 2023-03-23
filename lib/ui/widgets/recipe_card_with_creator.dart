import 'package:flutter/material.dart';
import 'package:ta_recipe_app/entities/user.dart';

class RecipeCardWithCreator extends StatelessWidget {
  final String? picUrl;
  final String title;
  final User creator;
  final bool isSaved;
  const RecipeCardWithCreator(
      {super.key,
      this.picUrl,
      required this.title,
      required this.creator,
      required this.isSaved});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).colorScheme.secondary,
                  image: picUrl != null
                      ? DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(picUrl!).image)
                      : null),
              child: Stack(
                children: [
                  Image.network(
                    picUrl ?? "",
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Align(
                      alignment: FractionalOffset.centerLeft,
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: isSaved == true
                                ? IconButton(
                                    padding: EdgeInsets.zero,
                                    constraints: const BoxConstraints(),
                                    icon: const Icon(Icons.bookmark),
                                    onPressed: () {},
                                  )
                                : IconButton(
                                    padding: EdgeInsets.zero,
                                    constraints: const BoxConstraints(),
                                    icon: const Icon(Icons.bookmark_border),
                                    onPressed: () {},
                                  ),
                          ),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(title))
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.fromLTRB(2, 4, 8, 0),
            child: Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Theme.of(context).colorScheme.primary),
                    child: creator.photoUrl != null
                        ? Image.network(creator.photoUrl!)
                        : Icon(
                            Icons.person,
                            color: Theme.of(context).colorScheme.onPrimary,
                          )),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      creator.name,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }
}
