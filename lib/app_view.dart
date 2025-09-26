import 'package:aethyvia/screens/home/views/home_screen.dart';
import 'package:flutter/material.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aethyvia",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF1E88E5), // blue
          onPrimary: Color(0xFFFFFFFF),
          secondary: Color(0xFF00ACC1), // teal
          onSecondary: Color(0xFF000000),
          tertiary: Color(0xFFFFC107), // amber accent
          onTertiary: Color(0xFF000000),
          error: Color(0xFFCF6679),
          onError: Color(0xFF000000),
          onSurfaceVariant: Color(0xFF121212), // dark bg
          onInverseSurface: Color(0xFFE0E0E0), // light text
          surface: Color(0xFF1E1E1E), // card bg
          onSurface: Color(0xFFE0E0E0), // card text
        ),
      ),
      home: HomeScreen(),
    );
  }
}
