import 'package:aethyvia/screens/addItem/views/add_item_screen.dart';
import 'package:aethyvia/screens/analytics/views/analytics_screen.dart';
import 'package:aethyvia/screens/home/views/home_screen.dart';
import 'package:aethyvia/screens/savings/views/savings_screen.dart';
import 'package:aethyvia/screens/transactions/views/transactions_screen.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;

  // Screens list for bottom nav
  static final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    const TransactionsScreen(),
    const AddItemScreen(),
    const SavingsScreen(),
    const AnalyticsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
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
            const SizedBox(width: 48), // Space for FAB
            IconButton(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedMoneySavingJar,
                size: 24,
                color: _selectedIndex == 3 ? Colors.blue : Colors.white,
              ),
              onPressed: () => _onItemTapped(3),
            ),
            IconButton(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedChartAverage,
                size: 24,
                color: _selectedIndex == 4 ? Colors.blue : Colors.white,
              ),
              onPressed: () => _onItemTapped(4),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () => _onItemTapped(2),
        child: HugeIcon(icon: HugeIcons.strokeRoundedAddSquare, size: 28),
      ),
    );
  }
}
