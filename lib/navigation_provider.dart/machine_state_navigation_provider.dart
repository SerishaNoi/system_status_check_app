import 'package:flutter/material.dart';
import 'package:test_project/models/bottom_navigation_bar_items.dart';

class MachineStateNavigationProvider extends ChangeNotifier {
  BottomNavigationBarItemsEnum _bottomNavigationBarItemsEnum = BottomNavigationBarItemsEnum.state;

  BottomNavigationBarItemsEnum get navigationItem => _bottomNavigationBarItemsEnum;

  void setNavigationItem(BottomNavigationBarItemsEnum drawerItemsEnum) {
    _bottomNavigationBarItemsEnum = drawerItemsEnum;

    notifyListeners();
  }
}
