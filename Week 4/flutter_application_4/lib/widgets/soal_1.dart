import 'package:flutter/material.dart';

class soal_1 extends StatelessWidget {
  const soal_1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        backgroundColor: Colors.blue[100],
        title: Text("Soal 1"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      body: Center(
        child: Text(
          'Ini Soal Nomor 1',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
