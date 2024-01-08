import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Page")),
      body: Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Color.fromARGB(255, 225, 99, 179),
            child: Text("Data 1"),
          ),
          Container(
            width: 100,
            height: 100,
            color: Color.fromARGB(255, 75, 79, 118),
            child: Text("Data 2"),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
            child: Text("Data 3"),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blueAccent,
            child: Text("Data 4"),
          )
        ],
      ),
    );
  }
}
