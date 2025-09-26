import 'package:aethyvia/screens/appbar.dart';
import 'package:flutter/material.dart';

class SavingsScreen extends StatelessWidget {
  const SavingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Savings"), // ❌ no const here
      body: const Center(child: Text("Savings Page")),
    );
  }
}
