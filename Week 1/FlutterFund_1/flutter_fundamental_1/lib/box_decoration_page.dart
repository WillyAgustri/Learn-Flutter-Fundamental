import 'package:flutter/material.dart';

class BoxDecorationPage extends StatefulWidget {
  const BoxDecorationPage({super.key});

  @override
  State<BoxDecorationPage> createState() => _BoxDecorationPageState();
}

class _BoxDecorationPageState extends State<BoxDecorationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Box Decoration"),
      ),
    );
  }
}
