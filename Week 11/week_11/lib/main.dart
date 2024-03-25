import 'package:flutter/material.dart';
import 'package:week_11/dropdown_api/dropdown_api.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Dropdown_api()),
    );
  }
}
