import 'package:flutter/material.dart';
import 'package:flutter_week8/deleteHTTP/delete_http.dart';
// import 'package:flutter_week8/getHTTP/get_http.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: delete_http());
  }
}
