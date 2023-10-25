import 'package:flutter/material.dart';

import 'Setting.dart';
import 'aboutme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Flutter Mapp")),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Setting'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Setting())); // Use named route
              },
            ),
            ListTile(
              title: const Text('About me'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AboutMe())); // Use named route
              },
            ),
          ],
        ),
      ),
    );
  }
}