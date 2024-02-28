import 'package:flutter/material.dart';

import 'package:http/http.dart';

class practice_model extends StatefulWidget {
  const practice_model({super.key});

  @override
  State<practice_model> createState() => _practice_modelState();
}

class _practice_modelState extends State<practice_model> {
  Future getAllUser() async {
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.teal, title: Text("Practice Model")),
      body: FutureBuilder(
        future: getAllUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: ListView.builder(
                  itemCount: 5, itemBuilder: (context, index) => Text("Testi")),
            );
          } else {
            return Center(child: Text("Please Wait..."));
          }
        },
      ),
    );
  }
}
