import 'package:flutter/material.dart';
import 'package:flutter_week9/practiceModel/practice_model.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: practice_model());
  }
}
