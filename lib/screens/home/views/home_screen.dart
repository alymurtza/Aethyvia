import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Page $_selectedIndex", style: TextStyle(fontSize: 24)),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.grey[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedHome10,
                size: 24,
                color: _selectedIndex == 0 ? Colors.blue : Colors.white,
              ),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedTransaction,
                size: 24,
                color: _selectedIndex == 1 ? Colors.blue : Colors.white,
              ),
              onPressed: () => _onItemTapped(1),
            ),
            const SizedBox(width: 48), // FAB gap
            IconButton(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedMoneySavingJar,
                size: 24,
                color: _selectedIndex == 2 ? Colors.blue : Colors.white,
              ),
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedChartAverage,
                size: 24,
                color: _selectedIndex == 3 ? Colors.blue : Colors.white,
              ),
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        child: HugeIcon(icon: HugeIcons.strokeRoundedAddSquare, size: 28),
      ),
    );
  }
}
