import 'package:flutter/material.dart';

class AddItemScreen extends StatelessWidget {
  const AddItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // normal app bar, or remove completely
        title: const Text("Add Item"),
      ),
      body: const Center(child: Text("Add Item Page")),
    );
  }
}
