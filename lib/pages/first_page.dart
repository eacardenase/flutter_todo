import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "First Page",
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.cyan.shade400,
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 48,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text(
                "HOME",
                style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/homepage");
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: const Text(
                "SETTINGS",
                style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/settingspage");
              },
            ),
          ],
        ),
      ),
    );
  }
}
