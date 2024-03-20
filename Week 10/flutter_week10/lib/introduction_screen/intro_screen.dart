import 'package:flutter/material.dart';

class intro_screen extends StatelessWidget {
  const intro_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal, title: Text("Introduction Screen")),
      body: Center(child: Text("Example Introduction Screen")),
    );
  }
}
