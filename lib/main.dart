import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:test_project/constants/colors.dart';
import 'package:test_project/models/drawer_items_enum.dart';
import 'package:test_project/navigation_provider.dart/machine_state_navigation_provider.dart';
import 'package:test_project/navigation_provider.dart/navigation_provider.dart';
import 'package:test_project/screens/plug_screen.dart/plugScreen.dart';
import 'package:test_project/screens/widgets/drawer_widget.dart';
import 'screens/trade_machine_state_screen/trade_machine_state_screen.dart';
import 'screens/visibility_screen/visibility_screen.dart';
import 'screens/widgets/appBar_title.dart';

void main() => runApp(const LogoApp());

class LogoApp extends StatefulWidget {
  const LogoApp({super.key});

  @override
  State<LogoApp> createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final bool isDrawerOpen = _scaffoldKey.currentState?.isDrawerOpen == false;

    return ChangeNotifierProvider(
      create: (context) => MachineStateNavigationProvider(),
      child: ChangeNotifierProvider(
        create: (context) => NavigationProvider(),
        child: MaterialApp(
          home: Scaffold(
            primary: true,
            appBar: AppBar(
              backgroundColor: AppColors.darkGray,
              leading: IconButton(
                icon: Icon(isDrawerOpen ? Icons.dehaze : Icons.arrow_back),
                onPressed: () {
                  setState(() {});
                  isDrawerOpen
                      ? _scaffoldKey.currentState?.openDrawer()
                      : _scaffoldKey.currentState?.openEndDrawer();
                },
              ),
              title: AppBarTitile(
                title: 'Обзор',
                subtitle: 'Версия 1.0.1',
                refreshTime: DateFormat.Hms().format(DateTime.now()),
              ),
            ),
            body: Scaffold(
              key: _scaffoldKey,
              drawer: const DrawerWidget(),
              body: const MainPage(),
            ),
          ),
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => buildPages();

  buildPages() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case DrawerItemsEnum.visibility:
        return const VisibilityScreen();
      case DrawerItemsEnum.monitor:
        return const TradeMachineStateScreen();
      case DrawerItemsEnum.events:
        return const PlugScreen();
      case DrawerItemsEnum.sales:
        return const PlugScreen();
      case DrawerItemsEnum.collections:
        return const PlugScreen();
      case DrawerItemsEnum.loading:
        return const PlugScreen();
      case DrawerItemsEnum.settings:
        return const PlugScreen();
      case DrawerItemsEnum.logout:
        return const PlugScreen();
      case DrawerItemsEnum.dummyScreen:
        return const PlugScreen();
    }
  }
}
