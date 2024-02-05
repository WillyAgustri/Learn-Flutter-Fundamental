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
      length: 4,
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
          bottom: TabBar(
              labelPadding: EdgeInsets.all(10),
              automaticIndicatorColorAdjustment: false,
              tabs: [
                Icon(
                  Icons.camera,
                  color: Colors.white,
                ),
                Text(
                  "Chat",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Status",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "History Call",
                  style: TextStyle(color: Colors.white),
                ),
              ]),
        ),
      ),
    );
  }
}
