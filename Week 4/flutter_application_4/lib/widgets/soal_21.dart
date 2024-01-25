import 'package:flutter/material.dart';

class soal_21 extends StatelessWidget {
  const soal_21({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soal 21"),
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
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
      ),
    );
  }
}
