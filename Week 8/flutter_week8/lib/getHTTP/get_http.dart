import 'package:flutter/material.dart';

class get_http extends StatelessWidget {
  const get_http({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "HTTP GET",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Post Data"))
          ],
        ),
      ),
    );
  }
}
