import 'package:flutter/material.dart';
import 'package:test_project/constants/colors.dart';
import 'package:test_project/screens/widgets/info_status_widget.dart';
import 'package:test_project/screens/widgets/visibility_item_box.dart';

class NetworkingStatus extends StatelessWidget {
  const NetworkingStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return VisibilityItemBox(
      icon: Icons.search,
      onTap: () {
        print('tap on VisibilityItemBox widget');
      },
      title: 'Состояние сети',
      widgets: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            InfoStatusWidget(
              infoColor: AppColors.green,
              infoTitle: 'Исправны',
              infoScore: '20',
            ),
            InfoStatusWidget(
              infoColor: AppColors.orange,
              infoTitle: 'Под вопросом',
              infoScore: '3',
            ),
            InfoStatusWidget(
              infoColor: AppColors.red,
              infoTitle: 'Не исправны',
              infoScore: '0',
            ),
          ],
        ),
      ),
    );
  }
}
