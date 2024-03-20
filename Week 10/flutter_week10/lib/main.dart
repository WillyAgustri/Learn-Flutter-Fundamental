import 'package:flutter/material.dart';
import 'package:flutter_week10/dropdown_search/dropdown_search.dart';
import 'package:flutter_week10/introduction_screen/intro_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: dropdown_search());
  }
}
