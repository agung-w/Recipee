import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/my_profile_page_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/entities/user_detail.dart';
import 'package:ta_recipe_app/ui/pages/login_page.dart';
import 'package:ta_recipe_app/ui/pages/register_page.dart';
import 'package:ta_recipe_app/ui/widgets/draggable_sheet.dart';
import 'package:ta_recipe_app/ui/widgets/follower_count_text.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';
import 'package:ta_recipe_app/ui/widgets/profile_recipe_list.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyProfilePageBloc, MyProfilePageState>(
      builder: (context, state) {
        return state.when(failed: (message) {
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
        }, loaded: (user, savedList, createdList, draftList, rejectedList,
            pendingList) {
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
                    SliverToBoxAdapter(
                      child: _UserInfo(user: user.user),
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
                    createdList.map(
                        success: (value) => ProfileRecipeList(
                              list: value.value,
                            ),
                        failed: (_) =>
                            const Text("cannot_load_recipe_list_text")
                                .tr(namedArgs: {'type': 'created'})),
                    savedList.map(
                        success: (value) => ProfileRecipeList(
                              list: value.value,
                            ),
                        failed: (_) =>
                            const Text("cannot_load_recipe_list_text")
                                .tr(namedArgs: {'type': 'saved'})),
                    draftList.map(
                        success: (value) => ProfileRecipeList(
                              list: value.value,
                            ),
                        failed: (_) =>
                            const Text("cannot_load_recipe_list_text")
                                .tr(namedArgs: {'type': 'draft'})),
                    rejectedList.map(
                        success: (value) => ProfileRecipeList(
                              list: value.value,
                            ),
                        failed: (_) =>
                            const Text("cannot_load_recipe_list_text")
                                .tr(namedArgs: {'type': 'rejected'})),
                    pendingList.map(
                        success: (value) => ProfileRecipeList(
                              list: value.value,
                            ),
                        failed: (_) => const Text("cannot_load_recipe_list")
                            .tr(namedArgs: {'type': 'pending'})),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FollowerCountText(
                            count: user.followingCount,
                            text: "following_text".tr()),
                        FollowerCountText(
                            count: user.followerCount,
                            text: "follower_text".tr())
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 3,
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
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        context: context,
        builder: (builder) => DraggableSheet(
              initSize: 0.3,
              maxSize: 0.3,
              title: "settings_text".tr(),
              children: [
                ListTile(
                  leading: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  title: Text(
                    "create_recipe_button",
                    style: Theme.of(context).textTheme.labelLarge,
                  ).tr(),
                  onTap: () {},
                ),
                const Expanded(child: Center()),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
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
            ));
  }
}
