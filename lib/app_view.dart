import 'package:aethyvia/screens/navigation.dart';
import 'package:aethyvia/screens/profile/views/profile_screen.dart';
import 'package:aethyvia/screens/settings/views/settings_screen.dart';
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
          primary: Color(0xFF1E88E5),
          onPrimary: Color(0xFFFFFFFF),
          secondary: Color(0xFF00ACC1),
          onSecondary: Color(0xFF000000),
          tertiary: Color(0xFFFFC107),
          onTertiary: Color(0xFF000000),
          error: Color(0xFFCF6679),
          onError: Color(0xFF000000),
          surface: Color(0xFF1E1E1E),
          onSurface: Color(0xFFE0E0E0),
        ),
      ),
      home: const NavigationBarScreen(),
      routes: {
        '/profile': (context) => const ProfileScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}
