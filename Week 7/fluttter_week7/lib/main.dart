import 'package:flutter/material.dart';
import 'package:fluttter_week7/practiceMyHttp/myHttp.dart';
/* import 'package:fluttter_week7/practiceNav/navigation/widgetsBBar.dart';
import 'package:fluttter_week7/slicingInstagram/profile.dart';
import 'package:fluttter_week7/practiceNav/navigation/widget/practice_navigator.dart'; */

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: PracticeMyhttp());
  }
}
