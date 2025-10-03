import 'package:flutter/material.dart';
import 'package:aethyvia/components/defaults.dart';

class CustomFAB extends StatelessWidget {
  final VoidCallback? onPressed;

  const CustomFAB({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: getAppColor("light", "primary"),
      onPressed: onPressed,
      child: getHugeIcon(
        "add",
        size: 28,
        color: getAppColor("light", "textprimary"),
      ),
    );
  }
}
