import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xF6495ed5),
          title: Text(
            "Data Mahasiswa",
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
