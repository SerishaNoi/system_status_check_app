import 'package:flutter/material.dart';
import 'package:test_project/constants/colors.dart';
import 'package:test_project/screens/widgets/info_status_widget.dart';
import 'package:test_project/screens/widgets/visibility_item_box.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return VisibilityItemBox(
      icon: Icons.monetization_on_outlined,
      onTap: () {
        print('tap on VisibilityItemBox widget');
      },
      title: 'Выручка',
      widgets: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            InfoStatusWidget(
              infoColor: AppColors.darkGray,
              infoTitle: 'Сегодня',
              infoScore: '5 640 ₽',
            ),
            InfoStatusWidget(
              infoColor: AppColors.darkGray,
              infoTitle: 'Сдача в ТА',
              infoScore: '20 080 ₽',
            ),
          ],
        ),
      ),
    );
  }
}
