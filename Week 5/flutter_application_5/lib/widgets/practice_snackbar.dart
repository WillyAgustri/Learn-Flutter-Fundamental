import 'package:flutter/material.dart';

class practiceSnackbar extends StatefulWidget {
  const practiceSnackbar({super.key});

  @override
  State<practiceSnackbar> createState() => _practiceSnackbarState();
}

class _practiceSnackbarState extends State<practiceSnackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("SnackBar"),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Stop Click That!"),
                  action: SnackBarAction(label: "Iya", onPressed: () {}),
                ));
              },
              child: Text("Show SnackBar"))),
    );
  }
}
