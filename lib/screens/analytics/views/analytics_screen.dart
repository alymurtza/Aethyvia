import 'package:aethyvia/screens/appbar.dart';
import 'package:flutter/material.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Analytics"), // ❌ no const here
      body: const Center(child: Text("Analytics Page")),
    );
  }
}
