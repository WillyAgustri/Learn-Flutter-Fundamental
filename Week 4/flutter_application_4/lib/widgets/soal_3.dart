import 'package:flutter/material.dart';

class soal_3 extends StatelessWidget {
  const soal_3({
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
          child: FlutterLogo(
        size: 200,
      )),
    );
  }
}
