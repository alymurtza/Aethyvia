import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          selectedItemColor: Colors.blue,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: HugeIcon(icon: HugeIcons.strokeRoundedHome10, size: 24),
              label: "Home",
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedTransaction,
                size: 24,
              ),
              label: "Activity",
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: SizedBox.shrink(),
              label: "",
              backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedMoneySavingJar,
                size: 24,
              ),
              label: "Savings",
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedChartAverage,
                size: 24,
              ),
              label: "Analytics",
              backgroundColor: Colors.grey,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        child: HugeIcon(icon: HugeIcons.strokeRoundedAddSquare, size: 28),
      ),
    );
  }
}
