import 'package:flutter/material.dart';

class AddItemScreen extends StatelessWidget {
  const AddItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Item",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      body: const Center(child: Text("Add Item Page")),
    );
  }
}
