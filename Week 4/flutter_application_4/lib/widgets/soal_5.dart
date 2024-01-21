import 'package:flutter/material.dart';

class soal_5 extends StatelessWidget {
  const soal_5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          backgroundColor: Colors.blue[100],
          title: Text("Soal 5"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
          ],
        ),
        body: Center(
            child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          color: Colors.blue[400],
          child: Text(
            "Hello",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        )));
  }
}
