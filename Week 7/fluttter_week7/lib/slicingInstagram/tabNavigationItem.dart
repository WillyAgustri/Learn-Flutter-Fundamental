import 'package:flutter/material.dart';

class tabNavigationitem extends StatefulWidget {
  const tabNavigationitem({
    super.key,
  });

  @override
  State<tabNavigationitem> createState() => _tabNavigationitemState();
}

class _tabNavigationitemState extends State<tabNavigationitem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(top: BorderSide(color: Colors.grey.shade300, width: 2))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        tabItem(Icons.grid_on_outlined, true),
        tabItem(Icons.grid_on_outlined, false),
      ]),
    );
  }
}

class tabItem extends StatelessWidget {
  tabItem(this.icon, this.active);
  final bool active;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: active == true ? Colors.black : Colors.white,
                  width: 2))),
      child: IconButton(
          icon: Icon(icon),
          onPressed: () {
            if (active) {
              print('Tombol $icon ditekan (aktif)');
            } else {
              print('Tombol $icon ditekan (tidak aktif)');
            }
          }),
    ));
  }
}
