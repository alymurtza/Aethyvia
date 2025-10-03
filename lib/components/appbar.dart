import 'package:flutter/material.dart';
import 'package:aethyvia/components/defaults.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showActions;
  final VoidCallback? onProfileTap;
  final VoidCallback? onSettingsTap;

  const CustomAppBar({
    super.key,
    this.showActions = false,
    this.onProfileTap,
    this.onSettingsTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: buildTextWidget(
        text: "Aethyvia",
        fontFamily: AppFonts.archivo,
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: getAppColor("light", "textprimary"),
      ),
      leading: showActions
          ? IconButton(icon: getHugeIcon("profile"), onPressed: onProfileTap)
          : null,
      actions: showActions
          ? [
              IconButton(
                icon: getHugeIcon("settings"),
                onPressed: onSettingsTap,
              ),
            ]
          : null,
      backgroundColor: getAppColor("light", "background"),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
