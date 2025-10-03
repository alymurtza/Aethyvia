import 'package:flutter/material.dart';
import 'package:aethyvia/components/app.dart';
import 'package:aethyvia/screens/profile/screen/profile.dart';
import 'package:aethyvia/screens/settings/screen/settings.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Aethyvia",
      home: const MyApp(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/profile': (context) => const ProfilePage(),
        '/settings': (context) => const SettingsPage(),
      },
    ),
  );
}
