import 'package:flutter/material.dart';

class practice_date extends StatefulWidget {
  const practice_date({super.key});

  @override
  State<practice_date> createState() => _practice_dateState();
}

class _practice_dateState extends State<practice_date> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date "),
      ),
    );
  }
}
