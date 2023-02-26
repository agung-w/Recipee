import 'package:flutter/material.dart';

enum TabItem { home, explore, create, shoppingList, profile }

const Map<TabItem, String> tabName = {
  TabItem.home: 'Home',
  TabItem.explore: 'Explore',
  TabItem.create: 'Create',
  TabItem.shoppingList: 'Shopping Lists',
  TabItem.profile: 'Profile',
};
const Map<TabItem, IconData> tabIcon = {
  TabItem.home: Icons.home,
  TabItem.explore: Icons.explore,
  TabItem.create: Icons.add,
  TabItem.shoppingList: Icons.list_alt,
  TabItem.profile: Icons.person,
};
