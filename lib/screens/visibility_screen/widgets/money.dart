import 'package:flutter/material.dart';
import 'package:test_project/constants/colors.dart';
import 'package:test_project/screens/widgets/info_status_widget.dart';
import 'package:test_project/screens/widgets/visibility_item_box.dart';

class Money extends StatelessWidget {
  const Money({super.key});

  @override
  Widget build(BuildContext context) {
    return VisibilityItemBox(
      icon: Icons.wallet,
      onTap: () {
        print('tap on VisibilityItemBox widget');
      },
      title: 'Деньги',
      widgets: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            InfoStatusWidget(
              infoColor: AppColors.darkGray,
              infoTitle: 'Деньги в ТА',
              infoScore: '25 083 ₽',
            ),
            InfoStatusWidget(
              infoColor: AppColors.darkGray,
              infoTitle: 'Сдача в ТА',
              infoScore: '10 560 ₽',
            ),
          ],
        ),
      ),
    );
  }
}
