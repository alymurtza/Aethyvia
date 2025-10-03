import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

Color getAppColor(String theme, String role) {
  // normalize to lowercase to avoid case issues
  theme = theme.toLowerCase();
  role = role.toLowerCase();

  // Light Theme Colors
  final Map<String, Color> lightTheme = {
    "background": const Color(0xFFFFFFFF),
    "surface": const Color(0xFFF5F5F5),
    "textprimary": const Color(0xFF212121),
    "textsecondary": const Color(0xFF424242),
    "divider": const Color(0xFFE0E0E0),
    "primary": const Color(0xFF1976D2),
    "secondary": const Color(0xFF546E7A),
    "accent1": const Color(0xFF009E73), // success
    "accent2": const Color(0xFFFFB300), // warning
    "accent3": const Color(0xFF8E24AA), // fun pop
    "success": const Color(0xFF009E73),
    "warning": const Color(0xFFFFB300),
    "error": const Color(0xFFE64A19),
  };

  // Dark Theme Colors
  final Map<String, Color> darkTheme = {
    "background": const Color(0xFF121212),
    "surface": const Color(0xFF1E1E1E),
    "textprimary": const Color(0xFFFFFFFF),
    "textsecondary": const Color(0xFFB0BEC5),
    "divider": const Color(0xFF333333),
    "primary": const Color(0xFF4FC3F7),
    "secondary": const Color(0xFF90A4AE),
    "accent1": const Color(0xFF26A69A), // success
    "accent2": const Color(0xFFFFCA28), // warning
    "accent3": const Color(0xFFBA68C8), // fun pop
    "success": const Color(0xFF26A69A),
    "warning": const Color(0xFFFFCA28),
    "error": const Color(0xFFFF7043),
  };

  // Select correct map
  final themeMap = theme == "dark" ? darkTheme : lightTheme;

  // Return color or fallback
  return themeMap[role] ?? Colors.pink; // pink shows if role not found
}

Widget getHugeIcon(
  String name, {
  double size = 24,
  Color color = Colors.black,
  double strokeWidth = 1.5,
}) {
  final iconMap = <String, dynamic>{
    "home": HugeIcons.strokeRoundedHome10,
    "transactions": HugeIcons.strokeRoundedTransactionHistory,
    "add": HugeIcons.strokeRoundedAddSquare,
    "savings": HugeIcons.strokeRoundedPiggyBank,
    "analytics": HugeIcons.strokeRoundedChartAverage,
    "back": HugeIcons.strokeRoundedCircleArrowLeft02,
    "profile": HugeIcons.strokeRoundedUserCircle,
    "settings": HugeIcons.strokeRoundedSetting07,
  };

  return HugeIcon(
    icon: iconMap[name] ?? HugeIcons.strokeRoundedAlert01, // fallback
    size: size,
    color: color,
    strokeWidth: strokeWidth,
  );
}

class AppFonts {
  static const String montserrat = "Montserrat";
  static const String archivo = "Archivo";
  static const String robotoMono = "RobotoMono";
}

Text buildTextWidget({
  required String text,
  String fontFamily = AppFonts.montserrat, // default to Montserrat
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.normal,
  Color color = Colors.black,
  TextAlign align = TextAlign.start,
  TextDecoration decoration = TextDecoration.none,
  FontStyle fontStyle = FontStyle.normal,
  int? maxLines,
  TextOverflow overflow = TextOverflow.clip,
}) {
  return Text(
    text,
    textAlign: align,
    maxLines: maxLines,
    overflow: maxLines != null ? overflow : null,
    style: TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      decoration: decoration,
      fontStyle: fontStyle,
    ),
  );
}
