import 'package:flutter/material.dart';
import 'package:ta_recipe_app/ui/pages/create_page.dart';
import 'package:ta_recipe_app/ui/pages/explore_page.dart';
import 'package:ta_recipe_app/ui/pages/home_page.dart';
import 'package:ta_recipe_app/ui/pages/my_profile_page.dart';
import 'package:ta_recipe_app/ui/pages/shopping_list_page.dart';
import 'package:ta_recipe_app/routes/tab_item.dart';
import 'package:ta_recipe_app/routes/tab_navigator_routes.dart';

class TabNavigator extends StatelessWidget {
  const TabNavigator(
      {super.key, required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState>? navigatorKey;
  final TabItem tabItem;

  Map<String, WidgetBuilder> _routeBuilders(
    BuildContext context,
  ) {
    return {
      TabNavigatorRoutes.root: (context) {
        if (tabItem.index == 0) {
          return const HomePage();
        } else if (tabItem.index == 1) {
          return const ExplorePage();
        } else if (tabItem.index == 2) {
          return const CreatePage();
        } else if (tabItem.index == 3) {
          return const ShoppingListPage();
        } else if (tabItem.index == 4) {
          return const MyProfilePage();
        } else {
          return const HomePage();
        }
      },
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name]!(context),
        );
      },
    );
  }

  // void _push(BuildContext context) {
  //   var routeBuilders = _routeBuilders(context);

  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) =>
  //           routeBuilders[TabNavigatorRoutes.detail]!(context),
  //     ),
  //   );
  // }
}
