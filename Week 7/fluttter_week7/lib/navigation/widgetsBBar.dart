import 'package:flutter/material.dart';

class widgetsBBar extends StatefulWidget {
  const widgetsBBar({super.key});

  @override
  State<widgetsBBar> createState() => _widgetsBBarState();
}

class _widgetsBBarState extends State<widgetsBBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Helloworld",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        centerTitle: false,
        bottom: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.read_more_outlined))
        ]),
      ),
    );
  }
}
