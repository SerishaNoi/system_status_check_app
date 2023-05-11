import 'package:flutter/material.dart';
import 'package:test_project/constants/colors.dart';

class AppBarTitile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String refreshTime;

  const AppBarTitile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.refreshTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        subtitle.isNotEmpty
            ? Row(
                children: [
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      width: 1,
                      height: 14,
                      color: AppColors.lightGray,
                    ),
                  ),
                  Text(
                    'Обновленно: $refreshTime',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            : Text(
                refreshTime,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
      ],
    );
  }
}
