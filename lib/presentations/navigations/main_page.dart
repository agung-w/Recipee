import 'package:flutter/material.dart';
import 'package:ta_recipe_app/presentations/routers/tab_navigator.dart';
import 'package:ta_recipe_app/presentations/routers/tabs.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _selectedIndex = TabItem.home;
  final navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.explore: GlobalKey<NavigatorState>(),
    TabItem.create: GlobalKey<NavigatorState>(),
    TabItem.shoppingList: GlobalKey<NavigatorState>(),
    TabItem.profile: GlobalKey<NavigatorState>(),
  };
  void _onItemTapped(TabItem tabItem) {
    setState(() {
      _selectedIndex = tabItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
          !await navigatorKeys[_selectedIndex]!.currentState!.maybePop(),
      child: Scaffold(
        body: Center(
            child: Stack(children: <Widget>[
          _buildOffstageNavigator(TabItem.home),
          _buildOffstageNavigator(TabItem.explore),
          _buildOffstageNavigator(TabItem.create),
          _buildOffstageNavigator(TabItem.shoppingList),
          _buildOffstageNavigator(TabItem.profile),
        ])),
        bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: _BottomNavigation(
              onSelectTab: _onItemTapped,
            )),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _selectedIndex != tabItem,
      child: TabNavigator(
        navigatorKey: navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}

class _BottomNavigation extends StatelessWidget {
  const _BottomNavigation({required this.onSelectTab});
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: [
          _buildItem(TabItem.home),
          _buildItem(TabItem.explore),
          _buildItem(TabItem.create),
          _buildItem(TabItem.shoppingList),
          _buildItem(TabItem.profile),
        ],
        onTap: (index) {
          onSelectTab(TabItem.values[index]);
        });
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(tabIcon[tabItem]),
      label: tabName[tabItem]!,
    );
  }
}
