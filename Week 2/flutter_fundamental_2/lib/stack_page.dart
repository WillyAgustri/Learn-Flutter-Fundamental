import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Page")),
      body: Center(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              width: 400,
              height: 400,
              color: Color.fromARGB(255, 225, 99, 179),
              child: Text("Data 1"),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              width: 300,
              height: 300,
              color: Color.fromARGB(255, 75, 79, 118),
              child: Text("Data 2"),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              width: 200,
              height: 200,
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
      ),
    );
  }
}
