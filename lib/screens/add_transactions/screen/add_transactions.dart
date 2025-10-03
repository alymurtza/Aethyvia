import 'package:flutter/material.dart';
import 'package:aethyvia/components/defaults.dart';

class AddTransactionsPage extends StatelessWidget {
  const AddTransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: getAppColor("light", "background"),
        automaticallyImplyLeading: true, // This adds the back button
      ),
      body: Center(
        child: buildTextWidget(
          text: "Add Transactions Page",
          fontFamily: AppFonts.archivo,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: getAppColor("light", "textPrimary"),
        ),
      ),
      backgroundColor: getAppColor("light", "background"),
    );
  }
}
