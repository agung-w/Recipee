import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ta_recipe_app/bloc/explore_page_bloc.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';
import 'package:ta_recipe_app/ui/widgets/recipe_card.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return BlocConsumer<ExplorePageBloc, ExplorePageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (__, _) => [
                    SliverAppBar(
                      floating: true,
                      snap: true,
                      title: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: TextFormField(
                          controller: searchController,
                          onFieldSubmitted: (value) {
                            context
                                .read<ExplorePageBloc>()
                                .add(ExplorePageEvent.search(query: value));
                          },
                          decoration: InputDecoration(
                              isDense: true,
                              filled: true,
                              constraints: const BoxConstraints(),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 10),
                              fillColor:
                                  Theme.of(context).colorScheme.secondary,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide: BorderSide.none),
                              prefixIcon: const Icon(Icons.search_outlined),
                              prefixIconConstraints:
                                  const BoxConstraints(minWidth: 36),
                              hintStyle: const TextStyle(color: Colors.black38),
                              hintText: "search_text".tr()),
                        ),
                      ),
                    ),
                  ],
              body: state.map(
                  initial: (_) => const Center(
                          child: Padding(
                        padding: EdgeInsets.all(16),
                        child: LoadingIndicator(size: 16),
                      )),
                  loaded: (value) {
                    return RefreshIndicator(
                      onRefresh: () async {
                        context.read<ExplorePageBloc>().add(
                            ExplorePageEvent.refreshResult(
                                query: searchController.text));
                      },
                      child: value.recipeList.isNotEmpty
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: GridView(
                                  gridDelegate: SliverQuiltedGridDelegate(
                                    crossAxisCount: 10,
                                    mainAxisSpacing: 8,
                                    crossAxisSpacing: 8,
                                    repeatPattern:
                                        QuiltedGridRepeatPattern.same,
                                    pattern: const [
                                      QuiltedGridTile(4, 5),
                                      QuiltedGridTile(4, 5),
                                      QuiltedGridTile(4, 10),
                                    ],
                                  ),
                                  children: value.recipeList
                                      .map((e) => RecipeCard(recipe: e))
                                      .toList()),
                            )
                          : SingleChildScrollView(
                              child: Center(
                                child: Text("no_explore_result_text".tr()),
                              ),
                            ),
                    );
                  },
                  failed: (value) => Center(
                        child: Text(value.message ??
                            "cant_load_explore_result_now_text".tr()),
                      ))),
        );
      },
    );
  }
}
