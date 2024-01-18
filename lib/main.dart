import 'package:flutter/material.dart';

import 'package:todo/pages/first_page.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/pages/profile_page.dart';
import 'package:todo/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      routes: {
        "/homepage": (context) => const HomePage(),
        "/settingspage": (context) => const SettingsPage(),
        "/profilepage": (context) => const ProfilePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
