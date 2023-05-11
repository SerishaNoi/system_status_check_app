import 'package:flutter/material.dart';
import 'package:test_project/constants/colors.dart';
import 'package:test_project/screens/widgets/visibility_item_box.dart';

class MoneyStatus extends StatelessWidget {
  const MoneyStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return VisibilityItemBox(
      icon: Icons.wallet,
      onTap: () {
        print('tap on VisibilityItemBox widget');
      },
      title: 'Деньги',
      widgets: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Продаж',
                  style: TextStyle(
                      color: AppColors.darkGray, fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Купюр',
                  style: TextStyle(
                      color: AppColors.darkGray, fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Монет',
                  style: TextStyle(
                      color: AppColors.darkGray, fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '10 на 390 руб.',
                  style: TextStyle(
                      color: AppColors.darkGray, fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '28 на 1080 руб.',
                  style: TextStyle(
                      color: AppColors.darkGray, fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '465 на 4530 руб.',
                  style: TextStyle(
                      color: AppColors.darkGray, fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
