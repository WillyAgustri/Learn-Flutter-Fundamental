import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView Page")),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            width: 100,
            height: 100,
            color: Color.fromARGB(255, 225, 99, 179),
          ),
          Container(
            width: 100,
            height: 100,
            color: Color.fromARGB(255, 75, 79, 118),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
