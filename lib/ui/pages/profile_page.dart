import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/profile_page_bloc.dart';
import 'package:ta_recipe_app/entities/user_detail.dart';
import 'package:ta_recipe_app/ui/widgets/follower_count_text.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';
import 'package:ta_recipe_app/ui/widgets/profile_recipe_list.dart';

class ProfilePage extends StatelessWidget {
  final String root;

  const ProfilePage({super.key, required this.root});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfilePageBloc, ProfilePageState>(
      buildWhen: (previous, current) =>
          current.mapOrNull(loaded: (value) => value.root) == root,
      builder: (context, state) {
        return state.map(failed: (value) {
          return Scaffold(
              body: Center(
                  child: Text(
            value.message,
            textAlign: TextAlign.center,
          )));
        }, loaded: (value) {
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
                          title: scrolled ? Text(value.user.name) : null,
                          toolbarHeight: tabBar.preferredSize.height,
                          backgroundColor:
                              Theme.of(context).scaffoldBackgroundColor,
                        );
                      },
                    ),
                    SliverToBoxAdapter(
                      child: _UserInfo(user: value.user),
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
                    BlocBuilder<ProfilePageBloc, ProfilePageState>(
                      buildWhen: (previous, current) =>
                          current.mapOrNull(loaded: (value) => value.root) ==
                          root,
                      builder: (context, state) {
                        return state.mapOrNull(
                              loaded: (value) {
                                if (value.isCreatedListLoading == true) {
                                  return Center(
                                    child: LoadingIndicator(
                                      size: 22,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  );
                                } else if (value.createdListError != null) {
                                  return SingleChildScrollView(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Text(value.createdListError!),
                                      ),
                                    ),
                                  );
                                } else {
                                  if (value.createdList.isNotEmpty) {
                                    return ProfileRecipeList(
                                      list: value.createdList,
                                      root: root,
                                    );
                                  } else {
                                    return SingleChildScrollView(
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Text(
                                              "create_list_is_empty_text".tr()),
                                        ),
                                      ),
                                    );
                                  }
                                }
                              },
                            ) ??
                            const SizedBox();
                      },
                    ),
                    BlocBuilder<ProfilePageBloc, ProfilePageState>(
                      buildWhen: (previous, current) =>
                          current.mapOrNull(loaded: (value) => value.root) ==
                          root,
                      builder: (context, state) {
                        return state.mapOrNull(
                              loaded: (value) {
                                if (value.isSavedListLoading == true) {
                                  return Center(
                                    child: LoadingIndicator(
                                      size: 22,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  );
                                } else if (value.savedListError != null) {
                                  return SingleChildScrollView(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Text(value.savedListError!),
                                      ),
                                    ),
                                  );
                                } else {
                                  if (value.savedList.isNotEmpty) {
                                    return ProfileRecipeList(
                                      list: value.savedList,
                                      root: root,
                                    );
                                  } else {
                                    return SingleChildScrollView(
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Text(
                                              "saved_list_is_empty_text".tr()),
                                        ),
                                      ),
                                    );
                                  }
                                }
                              },
                            ) ??
                            const SizedBox();
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        }, loading: (_) {
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
