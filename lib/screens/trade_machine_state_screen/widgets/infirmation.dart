import 'package:flutter/material.dart';
import 'package:test_project/constants/colors.dart';
import 'package:test_project/screens/widgets/visibility_item_box.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return VisibilityItemBox(
      icon: Icons.edit_document,
      onTap: () {
        print('tap on VisibilityItemBox widget');
      },
      title: 'Информация',
      widgets: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              '880001 “Офис УК”',
              style:
                  TextStyle(color: AppColors.darkGray, fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Text(
                '523412 - “ООО СНС-Вендинг” Bianchi BVM 972(SNS Box 1.0.1)Пресненская набережная, д. 6, стр. 2'),
          ],
        ),
      ),
    );
  }
}
