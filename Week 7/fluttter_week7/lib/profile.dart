import 'package:flutter/material.dart';

class widget_profile extends StatelessWidget {
  const widget_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Profile"),
      ),
      body: Text(
        "Ini Profile",
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}
