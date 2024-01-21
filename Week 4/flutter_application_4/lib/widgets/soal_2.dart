import 'package:flutter/material.dart';

class soal_2 extends StatelessWidget {
  const soal_2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlutterLogo(),
        backgroundColor: Colors.blue[100],
        title: Text("Soal 2"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
        ],
      ),
      body: Center(
        child: Text(
          'Ini Soal Nomor 2',
          style: TextStyle(
              fontSize: 25,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
