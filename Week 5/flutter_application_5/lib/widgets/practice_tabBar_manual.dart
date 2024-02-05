import 'package:flutter/material.dart';

class practice_tabBar_manual extends StatefulWidget {
  const practice_tabBar_manual({super.key});

  @override
  State<practice_tabBar_manual> createState() => _practice_tabBar_manualState();
}

class _practice_tabBar_manualState extends State<practice_tabBar_manual> {
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
            bottom: TabBar(automaticIndicatorColorAdjustment: false, tabs: [
              Tab(
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
              Tab(
                child: Text(
                  "Chat",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  "Status",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  "History Call",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              Text("Camera"),
              Text("Chat"),
              Text("Status"),
              Text("History Call")
            ],
          )),
    );
  }
}
