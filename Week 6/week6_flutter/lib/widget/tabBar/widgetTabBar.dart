import 'package:flutter/material.dart';
import 'package:week6_flutter/widget/practiceDropDown.dart';

class widgetTabBar extends StatefulWidget {
  const widgetTabBar({super.key});

  @override
  State<widgetTabBar> createState() => _widgetTabBarState();
}

class _widgetTabBarState extends State<widgetTabBar>
    with TickerProviderStateMixin {
  late TabController _controller = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Latihan Week 6",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        bottom: TabBar(
            controller: _controller,
            unselectedLabelColor: Colors.white,
            labelColor: Color.fromARGB(255, 0, 0, 0),
            tabs: [
              Tab(
                text: "Latihan Dropdown",
              ),
              Tab(
                text: "Coming Soon..",
              )
            ]),
      ),
      body: TabBarView(
          controller: _controller,
          children: [dropDownWidgets(), Text("Coming Soon")]),
    );
  }
}
