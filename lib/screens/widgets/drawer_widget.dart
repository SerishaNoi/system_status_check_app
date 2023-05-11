import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/constants/colors.dart';
import 'package:test_project/models/drawer_items_enum.dart';
import 'package:test_project/navigation_provider.dart/navigation_provider.dart';
import 'package:test_project/screens/widgets/drawer_button.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    void selectItem(BuildContext context, DrawerItemsEnum item) {
      final provider = Provider.of<NavigationProvider>(context, listen: false);
      provider.setNavigationItem(item);
    }

    return Drawer(
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 11,
          ),
          DrawerButton(
            onTap: () {
              print('tap on Обзор widget');
              selectItem(
                context,
                DrawerItemsEnum.visibility,
              );
            },
            buttonName: 'Обзор',
            icon: Icons.monitor,
            item: DrawerItemsEnum.visibility,
          ),
          DrawerButton(
            onTap: () {
              print('tap on Монитор ТА widget');
              selectItem(
                context,
                DrawerItemsEnum.monitor,
              );
            },
            buttonName: 'Монитор ТА',
            icon: Icons.display_settings,
            item: DrawerItemsEnum.monitor,
          ),
          DrawerButton(
            onTap: () {
              print('tap on События widget');
              selectItem(
                context,
                DrawerItemsEnum.events,
              );
            },
            buttonName: 'События',
            icon: Icons.screenshot_monitor_sharp,
            item: DrawerItemsEnum.events,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, bottom: 17),
            child: Container(color: AppColors.lightlyGray, height: 1),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18, bottom: 10),
            child: Text(
              'Отчеты',
              style:
                  TextStyle(color: AppColors.lightGray, fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          DrawerButton(
            onTap: () {
              print('tap on Продажи widget');
              selectItem(
                context,
                DrawerItemsEnum.sales,
              );
            },
            buttonName: 'Продажи',
            icon: Icons.wallet,
            item: DrawerItemsEnum.sales,
          ),
          DrawerButton(
            onTap: () {
              print('tap on Инкассакции widget');
              selectItem(
                context,
                DrawerItemsEnum.collections,
              );
            },
            buttonName: 'Инкассакции',
            icon: Icons.airport_shuttle_outlined,
            item: DrawerItemsEnum.collections,
          ),
          DrawerButton(
            onTap: () {
              print('tap on Загрузки widget');
              selectItem(
                context,
                DrawerItemsEnum.loading,
              );
            },
            buttonName: 'Загрузки',
            icon: Icons.screenshot_monitor_sharp,
            item: DrawerItemsEnum.loading,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, bottom: 17),
            child: Container(color: AppColors.lightlyGray, height: 1),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18, bottom: 10),
            child: Text(
              'Отчеты',
              style:
                  TextStyle(color: AppColors.lightGray, fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          DrawerButton(
            onTap: () {
              print('tap on Настройки widget');
              selectItem(
                context,
                DrawerItemsEnum.settings,
              );
            },
            buttonName: 'Настройки',
            icon: Icons.settings,
            item: DrawerItemsEnum.settings,
          ),
          DrawerButton(
            onTap: () {
              print('tap on Выход widget');
              selectItem(
                context,
                DrawerItemsEnum.logout,
              );
            },
            buttonName: 'Выход',
            icon: Icons.logout,
            item: DrawerItemsEnum.logout,
          ),
        ],
      ),
    );
  }
}
