import 'package:flutter/material.dart';

class practice_tabBar extends StatefulWidget {
  const practice_tabBar({super.key});

  @override
  State<practice_tabBar> createState() => _practice_tabBarState();
}

class _practice_tabBarState extends State<practice_tabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.wechat,
            color: Colors.white,
            size: 60,
          ),
          centerTitle: false,
          backgroundColor: Colors.teal,
          title: Text(
            "WhatsApp",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          bottom: TabBar(tabs: [
            Text("hello"),
            Text("hello"),
            Text("hello"),
          ]),
        ),
      ),
    );
  }
}
