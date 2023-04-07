import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/profile_page_bloc.dart';
import 'package:ta_recipe_app/entities/user_detail.dart';
import 'package:ta_recipe_app/ui/widgets/follower_count_text.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';
import 'package:ta_recipe_app/ui/widgets/profile_recipe_list.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfilePageBloc, ProfilePageState>(
      builder: (context, state) {
        return state.when(failed: (message) {
          return Scaffold(
              body: Center(
                  child: Text(
            message,
            textAlign: TextAlign.center,
          )));
        }, loaded: (user, savedRecipeList, createdRecipeList) {
          TabBar tabBar = TabBar(
            isScrollable: true,
            padding: const EdgeInsets.only(left: 16),
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            indicator: BoxDecoration(
                border: Border(
              bottom: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 2),
            )),
            tabs: [
              Tab(icon: const Text("created_tab_bar_text").tr()),
              Tab(icon: const Text("saved_tab_bar_text").tr()),
            ],
          );
          return DefaultTabController(
            length: tabBar.tabs.length,
            child: Scaffold(
              body: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    SliverLayoutBuilder(
                      builder: (BuildContext context, constraints) {
                        final scrolled = constraints.scrollOffset > 32;
                        return SliverAppBar(
                          pinned: true,
                          title: scrolled ? Text(user.name) : null,
                          toolbarHeight: tabBar.preferredSize.height,
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor,
                        );
                      },
                    ),
                    SliverToBoxAdapter(
                      child: _UserInfo(user: user),
                    ),
                    SliverAppBar(
                      automaticallyImplyLeading: false,
                      toolbarHeight: tabBar.preferredSize.height,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      pinned: true,
                      flexibleSpace: tabBar,
                    ),
                  ];
                },
                body: TabBarView(
                  children: [
                    createdRecipeList.map(
                        success: (value) => ProfileRecipeList(
                              list: value.value,
                            ),
                        failed: (_) =>
                            const Text("cannot_load_created_recipe_list").tr()),
                    savedRecipeList.map(
                        success: (value) => ProfileRecipeList(
                              list: value.value,
                            ),
                        failed: (_) =>
                            const Text("cannot_load_saved_recipe_list").tr()),
                  ],
                ),
              ),
            ),
          );
        }, loading: () {
          return Scaffold(
              body: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: LoadingIndicator(
                size: 22,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ));
        });
      },
    );
  }
}

class _UserInfo extends StatelessWidget {
  final UserDetail user;
  const _UserInfo({required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: ColoredBox(
                color: Theme.of(context).colorScheme.primary,
                child: Image.network(
                  user.photoUrl ?? "",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Icon(
                    Icons.person,
                    size: 100,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                )),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 16),
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      user.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Text(
                    "@${user.username}",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        FollowerCountText(
                            count: user.followingCount,
                            text: "following_text".tr()),
                        const SizedBox(
                          width: 16,
                        ),
                        FollowerCountText(
                            count: user.followerCount,
                            text: "follower_text".tr())
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
