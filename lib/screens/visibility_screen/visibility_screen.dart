import 'package:flutter/material.dart';
import 'package:test_project/screens/visibility_screen/widgets/collected.dart';
import 'package:test_project/screens/visibility_screen/widgets/income.dart';
import 'package:test_project/screens/visibility_screen/widgets/money.dart';

import 'package:test_project/screens/visibility_screen/widgets/network_status.dart';
import 'package:test_project/screens/visibility_screen/widgets/serviced.dart';

final List<Widget> items = [
  const NetworkingStatus(),
  const Serviced(),
  const Money(),
  const Income(),
  const Collected(),
];

class VisibilityScreen extends StatelessWidget {
  const VisibilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      itemBuilder: (context, index) {
        return items[index];
      },
      itemCount: items.length,
      separatorBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 6),
        );
      },
    );
  }
}
