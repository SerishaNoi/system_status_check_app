import 'package:flutter/material.dart';
import 'package:test_project/models/drawer_items_enum.dart';

class NavigationProvider extends ChangeNotifier {
  DrawerItemsEnum _drawerItemsEnum = DrawerItemsEnum.visibility;

  DrawerItemsEnum get navigationItem => _drawerItemsEnum;

  void setNavigationItem(DrawerItemsEnum drawerItemsEnum) {
    _drawerItemsEnum = drawerItemsEnum;

    notifyListeners();
  }
}
