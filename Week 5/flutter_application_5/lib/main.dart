import 'package:flutter/material.dart';
import 'package:flutter_application_5/widgets/practice_snackbar.dart';
import 'package:flutter_application_5/widgets/practice_stateful.dart';
import 'package:flutter_application_5/widgets/practice_tabBar_manual.dart';
import 'package:flutter_application_5/widgets/practice_tabbar.dart';
import 'package:flutter_application_5/widgets/practice_textfield.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: practice_tabBar_manual(),
    );
  }
}
