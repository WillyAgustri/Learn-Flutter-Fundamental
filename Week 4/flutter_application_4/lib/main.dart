import 'package:flutter/material.dart';

// import './widgets/soal_1.dart';
// import './widgets/soal_2.dart';
// import './widgets/soal_3.dart';
// import './widgets/soal_4.dart';
// import './widgets/soal_5.dart';
// import './widgets/soal_6.dart';
import './widgets/soal_7.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: soal_7(),
    );
  }
}
