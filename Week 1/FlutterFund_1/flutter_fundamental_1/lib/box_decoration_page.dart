import 'package:flutter/material.dart';

class BoxDecoration extends StatefulWidget {
  const BoxDecoration({super.key});

  @override
  State<BoxDecoration> createState() => _BoxDecorationState();
}

class _BoxDecorationState extends State<BoxDecoration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Box Decoration"),
      ),
    );
  }
}
