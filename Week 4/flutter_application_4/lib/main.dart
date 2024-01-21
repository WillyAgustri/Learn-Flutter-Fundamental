import 'package:flutter/material.dart';

import './widgets/soal_1.dart';
import './widgets/soal_2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: soal_2(),
    );
  }
}
