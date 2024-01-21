import 'package:flutter/material.dart';

class soal_8 extends StatelessWidget {
  const soal_8({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          backgroundColor: Colors.blue[100],
          title: Text("Soal 8"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 100,
              color: Colors.blue[400],
              child: Text("Container 1"),
            ),
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 100,
              color: Colors.amber[900],
              child: Text("Container 2"),
            ),
          ],
        ));
  }
}
