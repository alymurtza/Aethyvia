import 'package:aethyvia/screens/appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Home"), // ❌ no const here
      body: const Center(child: Text("Home Page")),
    );
  }
}
