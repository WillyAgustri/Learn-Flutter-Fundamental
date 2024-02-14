import 'package:flutter/material.dart';
import 'package:fluttter_week7/slicingInstagram/indicatorItem.dart';
import 'package:fluttter_week7/slicingInstagram/profileItem.dart';

class slicing_instagram extends StatelessWidget {
  const slicing_instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text("WillyAgustt",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            Icon(Icons.arrow_drop_down)
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 30, left: 30, bottom: 30, right: 60),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [profileItem(), indicatorItem()],
          )
        ],
      ),
    );
  }
}
