import 'package:flutter/material.dart';
import 'package:test_project/constants/colors.dart';

class VisibilityItemBox extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final String title;
  final Widget widgets;

  const VisibilityItemBox({
    super.key,
    required this.onTap,
    required this.icon,
    required this.title,
    required this.widgets,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(color: AppColors.lightlyGray, blurRadius: 12),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              height: 45,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: AppColors.lightlyGray,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                child: Row(
                  children: [
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Text(
                        title,
                        style: const TextStyle(
                            color: AppColors.darkGray, fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: widgets,
            )
          ],
        ),
      ),
    );
  }
}
