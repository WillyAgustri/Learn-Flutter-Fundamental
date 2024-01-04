import 'package:flutter/material.dart';

class FontTypePage extends StatefulWidget {
  const FontTypePage({super.key});

  @override
  State<FontTypePage> createState() => _FontTypePageState();
}

class _FontTypePageState extends State<FontTypePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Font Type")),
      body: const Center(
        child: SizedBox(
          child: Text("Ini Adalah Font Type"),
        ),
      ),
    );
  }
}
