import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/profile_page_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
import 'package:ta_recipe_app/entities/recipe.dart';
import 'package:ta_recipe_app/entities/user_detail.dart';
import 'package:ta_recipe_app/ui/pages/login_page.dart';
import 'package:ta_recipe_app/ui/widgets/draggable_sheet.dart';
import 'package:ta_recipe_app/ui/widgets/loading_indicator.dart';
import 'package:ta_recipe_app/ui/widgets/recipe_card_with_creator.dart';
import 'package:ta_recipe_app/ui/widgets/skeleton.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfilePageBloc, ProfilePageState>(
      builder: (context, state) {
        return state.when(failed: (message) {
          return Scaffold(
              body: Column(
            children: [
              InkWell(
                child: Container(
                  color: Theme.of(context).colorScheme.background,
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  margin: const EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      Container(
                        height: 45,
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'login_banner_text'.tr(),
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              'login_banner_description_text'.tr(),
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(builder: (_) => const LoginPage()));
                },
              ),
            ],
          ));
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
                    SliverToBoxAdapter(
                      child: _UserInfo(user: user),
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
                    _RecipeList(list: createdRecipeList),
                    _RecipeList(list: savedRecipeList),
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

class _RecipeList extends StatelessWidget {
  final List<Recipe?> list;
  const _RecipeList({required this.list});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(16),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.63,
          crossAxisCount: 2),
      children: list.map((e) {
        return RecipeCardWithCreator(
            creator: e!.user,
            title: e.title,
            isSaved: e.isSaved ?? false,
            picUrl: e.posterPicUrl);
      }).toList(),
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
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(100)),
            width: 100,
            height: 100,
            child: user.photoUrl != null
                ? Image.network(
                    user.photoUrl!,
                    errorBuilder: (_, __, ___) => Icon(
                      Icons.person,
                      size: 100,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  )
                : Icon(
                    Icons.person,
                    size: 100,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 16),
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      user.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.displayMedium,
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
                        _CountText(
                            count: user.followingCount, text: "Following"),
                        const SizedBox(
                          width: 16,
                        ),
                        _CountText(count: user.followerCount, text: "Follower")
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

class _CountText extends StatelessWidget {
  final int count;
  final String text;
  const _CountText({
    required this.count,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Text(count.toString()),
          const Text(" "),
          Text(text.toString()),
        ],
      ),
    );
  }
}
