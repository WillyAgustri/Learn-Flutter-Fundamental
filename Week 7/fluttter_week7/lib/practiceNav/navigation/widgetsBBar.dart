import 'package:flutter/material.dart';
// import 'package:fluttter_week7/practiceNav/navigation/widget/practice_drawer.dart';

class widgetsBBar extends StatefulWidget {
  const widgetsBBar({super.key});

  @override
  State<widgetsBBar> createState() => _widgetsBBarState();
}

class _widgetsBBarState extends State<widgetsBBar>
    with TickerProviderStateMixin {
  late TabController _controller = TabController(length: 2, vsync: this);

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
      ),
      body: TabBarView(controller: _controller, children: [
        // practice_draw(),
        Center(
            child: Text(
          "Coming Soon",
          style: TextStyle(fontSize: 30),
        )),
        Center(
            child: Text(
          "Coming Soon",
          style: TextStyle(fontSize: 30),
        )),
      ]),
      drawer: Drawer(
        child: Column(children: [
          Container(
            width: double.infinity,
            color: Colors.teal,
            height: 100,
            child: Center(
              child: Text(
                "Menu Drawer",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
          ListView.builder(
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) => ElevatedButton.icon(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)))),
                  onPressed: () {},
                  icon: Icon(Icons.admin_panel_settings_outlined),
                  label: Text("Data - ${index}")))
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _controller.index,
          onTap: (value) {
            setState(() {
              _controller.index = value;
              print(value);
            });
          },
          items: [
            BottomNavigationBarItem(
                label: "Latihan 1", icon: Icon(Icons.widgets_outlined)),
            BottomNavigationBarItem(
                label: "Latihan 2", icon: Icon(Icons.widgets_outlined)),
          ]),
    );
  }
}
