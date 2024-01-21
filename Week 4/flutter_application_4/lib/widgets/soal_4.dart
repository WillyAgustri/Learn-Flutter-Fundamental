import 'dart:math';

import 'package:flutter/material.dart';

class soal_4 extends StatelessWidget {
  const soal_4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          backgroundColor: Colors.blue[100],
          title: Text("Soal 3"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
          ],
        ),
        body: Center(
          child: Transform.rotate(
              angle: pi / 2,
              child: FlutterLogo(
                size: 200,
              )),
        ));
  }
}
