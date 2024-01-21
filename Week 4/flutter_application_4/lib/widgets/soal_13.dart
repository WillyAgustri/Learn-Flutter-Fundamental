import 'package:flutter/material.dart';

class soal_13 extends StatelessWidget {
  const soal_13({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          backgroundColor: Colors.blue[100],
          title: Text("Soal 13"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
          ],
        ),
        body: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 15, right: 15),
                  width: 100,
                  height: 100,
                  color: Colors.blue[400],
                  child: Text("Container 1"),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 15),
                  width: 100,
                  height: 100,
                  color: Colors.amber[900],
                  child: Text("Container 2"),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  alignment: Alignment.center,
                  width: 100,
                  color: Colors.amber[900],
                  height: 100,
                  child: Text("Container 1"),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Colors.blue[400],
                  child: Text("Container 2"),
                ),
              ],
            )
          ],
        ));
  }
}
