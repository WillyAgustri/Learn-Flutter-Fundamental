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
        tabItem(Icons.grid_on_outlined, true, 40),
        tabItem(Icons.person_pin_outlined, false, 40),
      ]),
    );
  }
}

class tabItem extends StatelessWidget {
  tabItem(this.icon, this.active, this.size);
  final double size;
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
                  width: 3))),
      child: IconButton(
          icon: Icon(
            icon,
            size: size,
          ),
          onPressed: () {
            if (active) {
              int codePoint = icon.codePoint;
              String name = String.fromCharCode(codePoint);
              print('Tombol $name ditekan (aktif)');
            } else {
              print('Tombol $icon ditekan (tidak aktif)');
            }
          }),
    ));
  }
}
