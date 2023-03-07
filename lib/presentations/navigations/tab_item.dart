import 'package:flutter/material.dart';

enum TabItem {
  home('Home', Icons.home_outlined),
  explore('Explore', Icons.explore_outlined),
  create('Create', Icons.add),
  order('Order', Icons.list_alt),
  profile('Profile', Icons.person_outline);

  final String tabName;
  final IconData tabIcon;

  const TabItem(this.tabName, this.tabIcon);
}
