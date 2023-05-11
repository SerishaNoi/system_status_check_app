import 'package:flutter/material.dart';
import 'package:test_project/constants/colors.dart';
import 'package:test_project/screens/widgets/info_status_widget.dart';
import 'package:test_project/screens/widgets/visibility_item_box.dart';

class Serviced extends StatelessWidget {
  const Serviced({super.key});

  @override
  Widget build(BuildContext context) {
    return VisibilityItemBox(
      icon: Icons.shield_outlined,
      onTap: () {
        print('tap on VisibilityItemBox widget');
      },
      title: 'Обслужено',
      widgets: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            InfoStatusWidget(
              infoColor: AppColors.darkGray,
              infoTitle: 'Сегодня',
              infoScore: '0',
            ),
            InfoStatusWidget(
              infoColor: AppColors.darkGray,
              infoTitle: 'Вчера',
              infoScore: '2',
            ),
          ],
        ),
      ),
    );
  }
}
