import 'package:flutter/material.dart';
import 'package:aethyvia/screens/home/screen/home.dart';
import 'package:aethyvia/screens/transactions/screen/transactions.dart';
import 'package:aethyvia/screens/savings/screen/savings.dart';
import 'package:aethyvia/screens/analytics/screen/analytics.dart';
import 'package:aethyvia/screens/add_transactions/screen/add_transactions.dart';
import 'package:aethyvia/components/bottom_nav_bar.dart';
import 'package:aethyvia/components/appbar.dart';
import 'package:aethyvia/components/floating_button.dart';

class MyAppView extends StatefulWidget {
  const MyAppView({super.key});

  @override
  State<MyAppView> createState() => _MyAppViewState();
}

class _MyAppViewState extends State<MyAppView> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    TransactionsPage(),
    SavingsPage(),
    AnalyticsPage(),
  ];

  void _onNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showActions: true,
        onProfileTap: () {
          Navigator.pushNamed(context, '/profile');
        },
        onSettingsTap: () {
          Navigator.pushNamed(context, '/settings');
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      floatingActionButton: CustomFAB(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddTransactionsPage(),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _currentIndex,
        onTap: _onNavTap,
      ),
    );
  }
}
