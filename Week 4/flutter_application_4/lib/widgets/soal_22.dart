import 'package:flutter/material.dart';

class soal_22 extends StatelessWidget {
  const soal_22({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Soal 22")),
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(75),
              border: Border.all(width: 7, color: Colors.blue),
              color: Colors.amber,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://picsum.photos/id/237/200/300"))),
        ),
      ),
    );
  }
}
