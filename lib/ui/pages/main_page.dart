import 'package:flutter/material.dart';
import 'package:ta_recipe_app/routes/tab_item.dart';
import 'package:ta_recipe_app/routes/tab_navigator.dart';

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
    TabItem.order: GlobalKey<NavigatorState>(),
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
            child: Stack(children: [
          _buildOffstageNavigator(TabItem.home),
          _buildOffstageNavigator(TabItem.explore),
          _buildOffstageNavigator(TabItem.create),
          _buildOffstageNavigator(TabItem.order),
          _buildOffstageNavigator(TabItem.profile),
        ])),
        bottomNavigationBar: _BottomNavigation(
          onSelectTab: _onItemTapped,
          selectedIndex: _selectedIndex.index,
        ),
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
  const _BottomNavigation(
      {required this.onSelectTab, required this.selectedIndex});
  final ValueChanged<TabItem> onSelectTab;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: (index) {
        onSelectTab(TabItem.values[index]);
      },
      items: [
        _buildItem(TabItem.home),
        _buildItem(TabItem.explore),
        _buildItem(TabItem.create),
        _buildItem(TabItem.order),
        _buildItem(TabItem.profile),
      ],
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(tabItem.tabIcon),
      label: tabItem.tabName,
    );
  }
}
