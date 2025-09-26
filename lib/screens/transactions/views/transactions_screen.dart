import 'package:aethyvia/screens/appbar.dart';
import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Transactions"), // ❌ no const here
      body: const Center(child: Text("Transactions Page")),
    );
  }
}
