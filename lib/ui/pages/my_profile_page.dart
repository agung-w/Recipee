import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/my_profile_page_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/entities/user_detail.dart';
import 'package:ta_recipe_app/ui/pages/login_page.dart';
import 'package:ta_recipe_app/ui/pages/register_page.dart';
import 'package:ta_recipe_app/ui/widgets/follower_count_text.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';
import 'package:ta_recipe_app/ui/widgets/my_profile_recipe_list.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
      builder: (context, state) {
        return state.map(signedOut: (_) {
          return Scaffold(
              body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "profile_signed_out_banner_text",
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ).tr(),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      "profile_signed_out_description_text",
                      textAlign: TextAlign.center,
                    ).tr(),
                    const SizedBox(
                      height: 6,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).push(
                              MaterialPageRoute(
                                  builder: (_) => const LoginPage()));
                        },
                        child: const Text("login_button_text").tr()),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text("or").tr(),
                    const SizedBox(
                      height: 6,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).push(
                              MaterialPageRoute(
                                  builder: (_) => const RegisterPage()));
                        },
                        child: const Text("register_button_text").tr()),
                  ]),
            ),
          ));
        }, signedIn: (value) {
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
              Tab(icon: const Text("draft_tab_bar_text").tr()),
              Tab(icon: const Text("rejected_tab_bar_text").tr()),
              Tab(icon: const Text("pending_tab_bar_text").tr()),
            ],
          );
          return DefaultTabController(
            length: tabBar.tabs.length,
            child: Scaffold(
              body: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    BlocBuilder<MyProfilePageBloc, MyProfilePageState>(
                      buildWhen: (previous, current) =>
                          previous.mapOrNull(
                            loaded: (value) => value.user,
                          ) !=
                          current.mapOrNull(
                            loaded: (value) => value.user,
                          ),
                      builder: (context, state) {
                        return state.map(
                          initial: (_) => SliverToBoxAdapter(
                            child: Center(
                              child: LoadingIndicator(
                                size: 22,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                          loaded: (value) => SliverToBoxAdapter(
                            child: _UserInfo(user: value.user),
                          ),
                        );
                      },
                    ),
                    SliverAppBar(
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
                    RefreshIndicator(
                      onRefresh: () async {
                        context.read<MyProfilePageBloc>().add(
                            MyProfilePageEvent.refreshCreatedRecipeList(
                                authState: state));
                      },
                      child: BlocBuilder<MyProfilePageBloc, MyProfilePageState>(
                        builder: (context, state) {
                          return state.mapOrNull(
                                loaded: (value) {
                                  if (value.isCreatedListLoading == true) {
                                    return Center(
                                      child: LoadingIndicator(
                                        size: 22,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
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
                                      return MyProfileRecipeList(
                                        list: value.createdList,
                                      );
                                    } else {
                                      return SingleChildScrollView(
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: Text(
                                                "create_list_is_empty_text"
                                                    .tr()),
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
                    ),
                    RefreshIndicator(
                      onRefresh: () async {
                        context.read<MyProfilePageBloc>().add(
                            MyProfilePageEvent.refreshSavedRecipeList(
                                authState: state));
                      },
                      child: BlocBuilder<MyProfilePageBloc, MyProfilePageState>(
                        builder: (context, state) {
                          return state.mapOrNull(
                                loaded: (value) {
                                  if (value.isSavedListLoading == true) {
                                    return Center(
                                      child: LoadingIndicator(
                                        size: 22,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
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
                                      return MyProfileRecipeList(
                                        list: value.savedList,
                                      );
                                    } else {
                                      return SingleChildScrollView(
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: Text(
                                                "saved_list_is_empty_text"
                                                    .tr()),
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
                    ),
                    RefreshIndicator(
                      onRefresh: () async {
                        context.read<MyProfilePageBloc>().add(
                            MyProfilePageEvent.refreshDraftRecipeList(
                                authState: state));
                      },
                      child: BlocBuilder<MyProfilePageBloc, MyProfilePageState>(
                        builder: (context, state) {
                          return state.mapOrNull(
                                loaded: (value) {
                                  if (value.isDraftListLoading == true) {
                                    return Center(
                                      child: LoadingIndicator(
                                        size: 22,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    );
                                  } else if (value.draftListError != null) {
                                    return SingleChildScrollView(
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Text(value.draftListError!),
                                        ),
                                      ),
                                    );
                                  } else {
                                    if (value.draftList.isNotEmpty) {
                                      return MyProfileRecipeList(
                                        list: value.draftList,
                                      );
                                    } else {
                                      return SingleChildScrollView(
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: Text(
                                                "draft_list_is_empty_text"
                                                    .tr()),
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
                    ),
                    RefreshIndicator(
                      onRefresh: () async {
                        context.read<MyProfilePageBloc>().add(
                            MyProfilePageEvent.refreshRejectedRecipeList(
                                authState: state));
                      },
                      child: BlocBuilder<MyProfilePageBloc, MyProfilePageState>(
                        builder: (context, state) {
                          return state.mapOrNull(
                                loaded: (value) {
                                  if (value.isRejectedListLoading == true) {
                                    return Center(
                                      child: LoadingIndicator(
                                        size: 22,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    );
                                  } else if (value.rejectedListError != null) {
                                    return SingleChildScrollView(
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Text(value.rejectedListError!),
                                        ),
                                      ),
                                    );
                                  } else {
                                    if (value.rejectedList.isNotEmpty) {
                                      return MyProfileRecipeList(
                                        list: value.rejectedList,
                                      );
                                    } else {
                                      return SingleChildScrollView(
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: Text(
                                                "rejected_list_is_empty_text"
                                                    .tr()),
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
                    ),
                    RefreshIndicator(
                      onRefresh: () async {
                        context.read<MyProfilePageBloc>().add(
                            MyProfilePageEvent.refreshPendingRecipeList(
                                authState: state));
                      },
                      child: BlocBuilder<MyProfilePageBloc, MyProfilePageState>(
                        builder: (context, state) {
                          return state.mapOrNull(
                                loaded: (value) {
                                  if (value.isPendingListLoading == true) {
                                    return Center(
                                      child: LoadingIndicator(
                                        size: 22,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                    );
                                  } else if (value.pendingListError != null) {
                                    return SingleChildScrollView(
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Text(value.pendingListError!),
                                        ),
                                      ),
                                    );
                                  } else {
                                    if (value.pendingList.isNotEmpty) {
                                      return MyProfileRecipeList(
                                        list: value.pendingList,
                                      );
                                    } else {
                                      return SingleChildScrollView(
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: Text(
                                                "pending_list_is_empty_text"
                                                    .tr()),
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
      padding: const EdgeInsets.all(16),
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
          IconButton(
              onPressed: () {
                _showProfileSettings(context);
              },
              icon: const Icon(Icons.settings))
        ],
      ),
    );
  }

  Future<dynamic> _showProfileSettings(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        useRootNavigator: true,
        elevation: 2,
        useSafeArea: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        context: context,
        builder: (builder) => DraggableScrollableSheet(
            expand: false,
            initialChildSize: 0.3,
            maxChildSize: 1.0,
            minChildSize: 0.3,
            snap: true,
            snapSizes: const [0.3, 0.6, 1],
            builder: (BuildContext context,
                    ScrollController scrollController) =>
                Stack(
                  children: [
                    ListView(controller: scrollController, children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "settings_text",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ).tr(),
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
                      // ListTile(
                      //   leading: Container(
                      //     width: 48,
                      //     height: 48,
                      //     decoration: BoxDecoration(
                      //       color: Theme.of(context).primaryColor,
                      //       borderRadius: BorderRadius.circular(100),
                      //     ),
                      //   ),
                      //   title: Text(
                      //     "create_recipe_button",
                      //     style: Theme.of(context).textTheme.labelLarge,
                      //   ).tr(),
                      //   onTap: () {},
                      // ),
                    ]),
                    Positioned(
                      bottom: 16,
                      right: 0,
                      left: 0,
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            context
                                .read<UserAuthenticationBloc>()
                                .add(const UserAuthenticationEvent.logout());
                            Navigator.of(builder).pop();
                          },
                          child: const Text("logout"),
                        ),
                      ),
                    ),
                  ],
                )));
  }
}
