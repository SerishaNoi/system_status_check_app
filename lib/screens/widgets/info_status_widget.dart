import 'package:flutter/material.dart';
import 'package:test_project/constants/colors.dart';

class InfoStatusWidget extends StatelessWidget {
  final Color infoColor;
  final String infoTitle;
  final String infoScore;

  const InfoStatusWidget({
    super.key,
    required this.infoColor,
    required this.infoTitle,
    required this.infoScore,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Text(
            infoTitle,
            style: const TextStyle(
              color: AppColors.darkGray,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            infoScore,
            style: TextStyle(
              color: infoColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
