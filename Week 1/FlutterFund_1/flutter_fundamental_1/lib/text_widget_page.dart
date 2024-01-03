import 'package:flutter/material.dart';

class TextWidgetPage extends StatefulWidget {
  const TextWidgetPage({super.key});

  @override
  State<TextWidgetPage> createState() => _TextWidgetPageState();
}

class _TextWidgetPageState extends State<TextWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Widget"),
      ),
      body: const Center(
        child: SizedBox(
          width: 150,
          child: Center(
            child: Text(
              "Hello World, This is Willy Agustri Djabar, Learning Android Developer",
              style: TextStyle(color: Color.fromARGB(255, 31, 89, 119)),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
