import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        shadowColor: const Color.fromARGB(255, 0, 0, 0),
        title: Text("Latihan"),
        centerTitle: false,
        leading: FlutterLogo(),
        actions: [
          IconButton(
              onPressed: () {
                print("Success");
              },
              icon: Icon(Icons.more_vert))
        ],
      )
          // body: ,
          ),
    );
  }
}
