import 'package:flutter/material.dart';
import 'package:fluttter_week7/navigation/widgetsBBar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: widgetsBBar());
  }
}
