import 'package:flutter/material.dart';

class BoxDecorationPage extends StatefulWidget {
  const BoxDecorationPage({super.key});

  @override
  State<BoxDecorationPage> createState() => _BoxDecorationPageState();
}

class _BoxDecorationPageState extends State<BoxDecorationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Box Decoration"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  gradient: const LinearGradient(
                      colors: [Colors.lightGreenAccent, Colors.greenAccent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft),
                  border: Border.all(color: Colors.brown, width: 2)),
            ),
          ],
        ),
      ),
    );
  }
}
