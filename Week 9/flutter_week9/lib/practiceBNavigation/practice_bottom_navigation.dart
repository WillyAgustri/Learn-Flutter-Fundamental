import 'package:flutter/material.dart';

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class practice_bottom_navigation extends StatefulWidget {
  const practice_bottom_navigation({super.key});

  @override
  State<practice_bottom_navigation> createState() =>
      _practice_bottom_navigation();
}

class _practice_bottom_navigation extends State<practice_bottom_navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Practice Package Bottom Navigation"),
        ),
        bottomNavigationBar: ConvexAppBar(items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ]));
  }
}
