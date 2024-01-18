import 'package:flutter/material.dart';

import 'package:todo/pages/home_page.dart';
import 'package:todo/pages/profile_page.dart';
import 'package:todo/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedPageIndex = 0;

  final List _pages = const [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "First Page",
        ),
      ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _navigateBottomBar,
        items: const [
          // home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          // profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),

          // settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
