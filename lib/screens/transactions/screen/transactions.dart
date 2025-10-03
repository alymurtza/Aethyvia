import 'package:flutter/material.dart';
import 'package:aethyvia/components/defaults.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: buildTextWidget(
          text: "Transactions Page",
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
