import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ta_recipe_app/navigation/scaffold_with_nav_bar.dart';

class BottomTabBarShellRoute extends ShellRoute {
  final List<ScaffoldWithNavBarTabItem> tabs;
  BottomTabBarShellRoute({
    required this.tabs,
    GlobalKey<NavigatorState>? navigatorKey,
    List<RouteBase> routes = const <RouteBase>[],
    Key? scaffoldKey = const ValueKey('ScaffoldWithNavBar'),
  }) : super(
            navigatorKey: navigatorKey,
            routes: routes,
            builder: (context, state, Widget fauxNav) {
              return Stack(children: [
                // Needed to keep the (faux) shell navigator alive
                Offstage(child: fauxNav),
                ScaffoldWithNavBar(
                    tabs: tabs,
                    key: scaffoldKey,
                    currentNavigator: fauxNav as Navigator,
                    currentRouterState: state,
                    routes: routes),
              ]);
            });
}
