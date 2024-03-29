import 'package:flutter/material.dart';

class practice_tabBar extends StatefulWidget {
  const practice_tabBar({super.key});

  @override
  State<practice_tabBar> createState() => _practice_tabBarState();
}

class _practice_tabBarState extends State<practice_tabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabC = TabController(length: 4, vsync: this);

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
