import 'package:flutter/material.dart';
import 'package:aethyvia/components/defaults.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: getAppColor("light", "surface"),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavIcon("home", 0),
            _buildNavIcon("transactions", 1),
            _buildNavIcon("savings", 2),
            _buildNavIcon("analytics", 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavIcon(String iconName, int index) {
    final isActive = currentIndex == index;
    return IconButton(
      icon: getHugeIcon(
        iconName,
        size: 24,
        color: isActive
            ? getAppColor("light", "primary")
            : getAppColor("light", "secondary"),
      ),
      onPressed: () => onTap(index),
    );
  }
}
