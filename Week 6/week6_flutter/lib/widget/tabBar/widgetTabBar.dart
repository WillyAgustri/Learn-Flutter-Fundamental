import 'package:flutter/material.dart';
import 'package:week6_flutter/widget/practiceBottomSheet.dart';
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
            onTap: (value) {
              print(value);
            },
            unselectedLabelColor: Colors.white,
            labelColor: Color.fromARGB(255, 0, 0, 0),
            tabs: [
              Tab(
                text: "Latihan Dropdown ",
              ),
              Tab(
                text: "Latihan Bottomsheet",
              )
            ]),
      ),
      body: TabBarView(
          controller: _controller,
          children: [dropDownWidgets(), practiceBottomSheet()]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "About")
        ],
        backgroundColor: Colors.teal,
        currentIndex: _controller.index,
        onTap: (value) {
          setState(() {
            _controller.index = value;
            print("Ini adalah controller index ke : ${_controller.index}");
          });
        },
      ),
    );
  }
}
