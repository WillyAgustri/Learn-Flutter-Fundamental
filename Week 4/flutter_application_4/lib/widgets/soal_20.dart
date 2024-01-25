import 'package:flutter/material.dart';

class soal_20 extends StatelessWidget {
  const soal_20({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soal 20"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            width: 200,
            height: 200,
          ),
          Container(
            color: Color.fromARGB(255, 22, 126, 205),
            width: 180,
            height: 180,
          )
        ],
      ),
    );
  }
}
