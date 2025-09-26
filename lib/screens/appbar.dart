import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showActions;

  const CustomAppBar({super.key, required this.title, this.showActions = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
      leading: showActions
          ? IconButton(
              icon: const HugeIcon(
                icon: HugeIcons.strokeRoundedUserCircle, // ✅ fixed
                size: 28,
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/profile");
              },
            )
          : null,
      actions: showActions
          ? [
              IconButton(
                icon: const HugeIcon(
                  icon: HugeIcons.strokeRoundedSetting07, // ✅ fixed
                  size: 28,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/settings");
                },
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
