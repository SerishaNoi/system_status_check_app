import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/models/bottom_navigation_bar_items.dart';
import 'package:test_project/navigation_provider.dart/machine_state_navigation_provider.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  final String title;
  final BottomNavigationBarItemsEnum item;
  final Function() onTap;

  const CustomBottomNavigationBarItem({
    super.key,
    required this.title,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MachineStateNavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final bool isSelected = item == currentItem;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            height: 3,
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.30,
            ),
            color: isSelected ? Colors.white : Colors.transparent,
          )
        ],
      ),
    );
  }
}
