import 'package:flutter/material.dart';
import 'package:fluttter_week7/slicingInstagram/descriptionItem.dart';
import 'package:fluttter_week7/slicingInstagram/editProfileitem.dart';
import 'package:fluttter_week7/slicingInstagram/indicatorItem.dart';
import 'package:fluttter_week7/slicingInstagram/profileItem.dart';
import 'package:fluttter_week7/slicingInstagram/tabNavigationItem.dart';

class slicing_instagram extends StatelessWidget {
  const slicing_instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text("WillyAgustt",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
            Icon(Icons.arrow_drop_down_sharp)
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
        ],
      ),
      endDrawer: Drawer(
        width: 200,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 30, right: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [profileItem(), indicatorItem()],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, left: 30, bottom: 15, right: 30),
            child: descriptionItem(),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, bottom: 30, right: 30),
            child: editProfileItem(),
          ),
          Container(
            padding: EdgeInsets.only(left: 30, bottom: 15, right: 30),
            child: tabNavigationItem(),
          ),
          Container(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colors.grey.shade300, width: 2))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black, width: 2))),
                      child: Icon(
                        Icons.grid_on_outlined,
                        size: 60,
                      ),
                    )),
                    Expanded(child: Icon(Icons.person_pin_outlined, size: 60)),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
