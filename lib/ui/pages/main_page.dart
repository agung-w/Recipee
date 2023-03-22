import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta_recipe_app/bloc/create_recipe_bloc.dart';
import 'package:ta_recipe_app/bloc/user_authentication_bloc.dart';
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
    return BlocBuilder<UserAuthenticationBloc, UserAuthenticationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (index) {
            if (index == 2) {
              context.read<CreateRecipeBloc>().add(
                  CreateRecipeEvent.create(state: state, context: context));
            } else {
              onSelectTab(TabItem.values[index]);
            }
          },
          items: [
            _buildItem(TabItem.home),
            _buildItem(TabItem.explore),
            _buildItem(TabItem.create),
            _buildItem(TabItem.order),
            _buildItem(TabItem.profile),
          ],
        );
      },
    );
  }

  // Future<dynamic> _showCreateRecipeModal(
  //     BuildContext context, UserAuthenticationState state) {
  //   return showModalBottomSheet(
  //       isScrollControlled: true,
  //       useRootNavigator: true,
  //       elevation: 2,
  //       shape: const RoundedRectangleBorder(
  //           borderRadius: BorderRadius.only(
  //               topLeft: Radius.circular(20), topRight: Radius.circular(20))),
  //       context: context,
  //       builder: (builder) => DraggableSheet(
  //             initSize: 0.2,
  //             maxSize: 0.3,
  //             title: "create_recipe".tr(),
  //             children: [
  //               ListTile(
  //                 leading: Container(
  //                   width: 48,
  //                   height: 48,
  //                   decoration: BoxDecoration(
  //                     color: Theme.of(context).primaryColor,
  //                     borderRadius: BorderRadius.circular(100),
  //                   ),
  //                 ),
  //                 title: Text(
  //                   "create_recipe_button",
  //                   style: Theme.of(context).textTheme.labelLarge,
  //                 ).tr(),
  //                 onTap: () {
  //                   Navigator.pop(context);
  //                   context.read<CreateRecipeBloc>().add(
  //                       CreateRecipeEvent.create(
  //                           state: state, context: context));
  //                 },
  //               )
  //             ],
  //           ));
  // }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(tabItem.tabIcon),
      label: tabItem.tabName,
    );
  }
}
