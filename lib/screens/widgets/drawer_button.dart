import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/constants/colors.dart';
import 'package:test_project/models/drawer_items_enum.dart';
import 'package:test_project/navigation_provider.dart/navigation_provider.dart';

const double boxHeight = 45;

class DrawerButton extends StatelessWidget {
  final IconData icon;
  final String buttonName;
  final Function() onTap;
  final DrawerItemsEnum item;

  const DrawerButton({
    super.key,
    required this.icon,
    required this.buttonName,
    required this.onTap,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final bool isSelected = item == currentItem;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: isSelected ? AppColors.lightlyGray : Colors.white,
        height: boxHeight,
        child: Row(
          children: [
            const SizedBox.square(
              dimension: 16,
            ),
            Icon(
              icon,
              color: isSelected ? AppColors.green : AppColors.darkGray,
              size: 24,
              shadows: const [
                Shadow(color: AppColors.lightGray, blurRadius: 3),
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              buttonName,
              style: TextStyle(
                color: isSelected ? AppColors.green : AppColors.darkGray,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
