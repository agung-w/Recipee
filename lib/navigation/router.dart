import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ta_recipe_app/navigation/bottom_tab_bar_shell_route.dart';
import 'package:ta_recipe_app/navigation/scaffold_with_nav_bar.dart';
import 'package:ta_recipe_app/presentations/pages/create_page.dart';
import 'package:ta_recipe_app/presentations/pages/explore_page.dart';
import 'package:ta_recipe_app/presentations/pages/home_page.dart';
import 'package:ta_recipe_app/presentations/pages/profile_detail_page.dart';
import 'package:ta_recipe_app/presentations/pages/profile_page.dart';
import 'package:ta_recipe_app/presentations/pages/shopping_list_page.dart';

final GlobalKey<NavigatorState> _homeNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'homeNav');
final GlobalKey<NavigatorState> _createNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'createNav');
final GlobalKey<NavigatorState> _profileNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'profileNav');
final GlobalKey<NavigatorState> _exploreNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'exploreNav');
final GlobalKey<NavigatorState> _shoppingListNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shoppingListNav');

final List<ScaffoldWithNavBarTabItem> tabs = <ScaffoldWithNavBarTabItem>[
  ScaffoldWithNavBarTabItem(
      rootRoutePath: '/home',
      navigatorKey: _homeNavigatorKey,
      icon: const Icon(Icons.home),
      label: 'Home'),
  ScaffoldWithNavBarTabItem(
    rootRoutePath: '/explore',
    navigatorKey: _exploreNavigatorKey,
    icon: const Icon(Icons.explore),
    label: 'Explore',
  ),
  ScaffoldWithNavBarTabItem(
    rootRoutePath: '/create',
    navigatorKey: _createNavigatorKey,
    icon: const Icon(Icons.add),
    label: 'Create',
  ),
  ScaffoldWithNavBarTabItem(
    rootRoutePath: '/shopping-lists',
    navigatorKey: _shoppingListNavigatorKey,
    icon: const Icon(Icons.list),
    label: 'Lists',
  ),
  ScaffoldWithNavBarTabItem(
    rootRoutePath: '/profile',
    navigatorKey: _profileNavigatorKey,
    icon: const Icon(Icons.person_2),
    label: 'Profile',
  ),
];
final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: <RouteBase>[
    /// Custom top shell route - wraps the below routes in a scaffold with
    /// a bottom tab navigator (ScaffoldWithNavBar). Note that no Navigator
    /// will be created by this top ShellRoute.
    BottomTabBarShellRoute(
      tabs: tabs,
      routes: <RouteBase>[
        /// The screen to display as the root in the first tab of the bottom
        /// navigation bar.
        GoRoute(
          path: '/home',
          builder: (BuildContext context, GoRouterState state) =>
              const HomePage(),
        ),
        GoRoute(
          path: '/explore',
          builder: (BuildContext context, GoRouterState state) =>
              const ExplorePage(),
        ),
        GoRoute(
          path: '/create',
          builder: (BuildContext context, GoRouterState state) =>
              const CreatePage(),
        ),
        GoRoute(
          path: '/profile',
          builder: (BuildContext context, GoRouterState state) =>
              const ProfilePage(),
          routes: <RouteBase>[
            GoRoute(
              path: 'detail',
              builder: (BuildContext context, GoRouterState state) =>
                  ProfileDetailPage(),
            ),
          ],
        ),
        GoRoute(
          path: '/shopping-lists',
          builder: (BuildContext context, GoRouterState state) =>
              const ShoppingListPage(),
        ),
        // GoRoute(
        //   path: '/detail',
        //   builder: (BuildContext context, GoRouterState state) =>
        //       ProfileDetailPage(),
        // ),
      ],
    ),
  ],
);
