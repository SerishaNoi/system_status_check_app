import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/constants/colors.dart';
import 'package:test_project/methods/get_device_system_information_isolate.dart';
import 'package:test_project/models/bottom_navigation_bar_items.dart';
import 'package:test_project/navigation_provider.dart/machine_state_navigation_provider.dart';
import 'package:test_project/screens/plug_screen.dart/plugScreen.dart';
import 'package:test_project/screens/trade_machine_state_screen/widgets/bottom_navigation_bar_item.dart';
import 'package:test_project/screens/trade_machine_state_screen/widgets/equipment.dart';
import 'package:test_project/screens/trade_machine_state_screen/widgets/infirmation.dart';
import 'package:test_project/screens/trade_machine_state_screen/widgets/money.dart';
import 'package:test_project/screens/widgets/visibility_item_box.dart';

class TradeMachineStateScreen extends StatefulWidget {
  const TradeMachineStateScreen({super.key});

  @override
  State<TradeMachineStateScreen> createState() => _TradeMachineStateScreenState();
}

class _TradeMachineStateScreenState extends State<TradeMachineStateScreen> {
  void selectItem(BuildContext context, BottomNavigationBarItemsEnum item) {
    final provider = Provider.of<MachineStateNavigationProvider>(context, listen: false);
    provider.setNavigationItem(item);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: AppColors.green,
          height: 50,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              CustomBottomNavigationBarItem(
                title: 'Сосотояние',
                item: BottomNavigationBarItemsEnum.state,
                onTap: () {
                  print('tapped');
                  selectItem(
                    context,
                    BottomNavigationBarItemsEnum.state,
                  );
                },
              ),
              CustomBottomNavigationBarItem(
                title: 'Загрузки',
                item: BottomNavigationBarItemsEnum.downloads,
                onTap: () {
                  print('tapped');
                  selectItem(
                    context,
                    BottomNavigationBarItemsEnum.downloads,
                  );
                },
              ),
              CustomBottomNavigationBarItem(
                title: 'События',
                item: BottomNavigationBarItemsEnum.events,
                onTap: () {
                  print('tapped');
                  selectItem(
                    context,
                    BottomNavigationBarItemsEnum.events,
                  );
                },
              ),
              CustomBottomNavigationBarItem(
                title: 'Управление',
                item: BottomNavigationBarItemsEnum.control,
                onTap: () {
                  print('tapped');
                  selectItem(
                    context,
                    BottomNavigationBarItemsEnum.control,
                  );
                },
              ),
            ],
          ),
        ),
        body: const TradeMachineScreenNavigation());
  }
}

class TradeMachineStateBody extends StatefulWidget {
  const TradeMachineStateBody({super.key});

  @override
  State<TradeMachineStateBody> createState() => _TradeMachineStateBodyState();
}

class _TradeMachineStateBodyState extends State<TradeMachineStateBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          children: [
            const Information(),
            const SizedBox(
              height: 12,
            ),
            const Equipment(),
            const SizedBox(
              height: 12,
            ),
            const MoneyStatus(),
            const SizedBox(
              height: 12,
            ),
            FutureBuilder(
              future: getDeviceSystemInfo(),
              builder: (context, snapshot) {
                return SystemInfoWidget(
                  isLoaded: !snapshot.hasData ? true : false,
                  data: snapshot.data,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TradeMachineScreenNavigation extends StatefulWidget {
  const TradeMachineScreenNavigation({super.key});

  @override
  State<TradeMachineScreenNavigation> createState() => _TradeMachineScreenNavigationState();
}

class _TradeMachineScreenNavigationState extends State<TradeMachineScreenNavigation> {
  @override
  Widget build(BuildContext context) => buildPages();

  buildPages() {
    final provider = Provider.of<MachineStateNavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case BottomNavigationBarItemsEnum.state:
        return const TradeMachineStateBody();
      case BottomNavigationBarItemsEnum.downloads:
        return const PlugScreen();
      case BottomNavigationBarItemsEnum.events:
        return const PlugScreen();
      case BottomNavigationBarItemsEnum.control:
        return const PlugScreen();
      case BottomNavigationBarItemsEnum.dummyScreen:
        return const PlugScreen();
    }
  }
}

class SystemInfoWidget extends StatelessWidget {
  final Map<String, dynamic>? data;
  final bool isLoaded;

  const SystemInfoWidget({super.key, required this.data, required this.isLoaded});

  @override
  Widget build(BuildContext context) {
    return VisibilityItemBox(
      icon: Icons.edit_document,
      onTap: () {
        print('tap on VisibilityItemBox widget');
      },
      title: 'Информация о системе',
      widgets: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 200, maxWidth: 400),
          child: isLoaded
              ? const Center(child: CircularProgressIndicator())
              : ListView(
                  children: data!.keys.map(
                    (String property) {
                      return Row(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              property,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                            child: Column(
                              children: [
                                Text(
                                  '${data?[property]}',
                                  maxLines: 10,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          )),
                        ],
                      );
                    },
                  ).toList(),
                ),
        ),
      ),
    );
  }
}
