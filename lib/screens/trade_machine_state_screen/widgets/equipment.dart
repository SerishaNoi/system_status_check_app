import 'package:flutter/material.dart';
import 'package:test_project/constants/colors.dart';
import 'package:test_project/screens/widgets/visibility_item_box.dart';

final List<Widget> icons = [
  const Icon(
    Icons.lan_outlined,
    size: 24,
    color: AppColors.green,
  ),
  const Icon(
    Icons.wallet,
    size: 24,
    color: AppColors.green,
  ),
  const Icon(
    Icons.monetization_on_outlined,
    size: 24,
    color: AppColors.green,
  ),
  const Icon(
    Icons.credit_card,
    size: 24,
    color: AppColors.lightGray,
  ),
  const Icon(
    Icons.monitor,
    size: 24,
    color: AppColors.green,
  ),
  const Icon(
    Icons.print,
    size: 24,
    color: AppColors.lightGray,
  ),
];

class Equipment extends StatelessWidget {
  const Equipment({super.key});

  @override
  Widget build(BuildContext context) {
    return VisibilityItemBox(
      icon: Icons.edit_document,
      onTap: () {
        print('tap on VisibilityItemBox widget');
      },
      title: 'Оборудование',
      widgets: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SizedBox(
          height: 45,
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return icons[index];
            },
            separatorBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
              );
            },
            itemCount: icons.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
