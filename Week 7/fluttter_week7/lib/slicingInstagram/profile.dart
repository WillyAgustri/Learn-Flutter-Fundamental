import 'package:flutter/material.dart';
import 'package:fluttter_week7/slicingInstagram/descriptionItem.dart';
import 'package:fluttter_week7/slicingInstagram/editProfileitem.dart';
import 'package:fluttter_week7/slicingInstagram/indicatorItem.dart';
import 'package:fluttter_week7/slicingInstagram/profileItem.dart';
import 'package:fluttter_week7/slicingInstagram/highlightStory.dart';
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
            padding: EdgeInsets.only(top: 20, left: 20, right: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [profileItem(), indicatorItem()],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 20, bottom: 15, right: 20),
            child: descriptionItem(),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 20, right: 20),
            child: editProfileItem(),
          ),
          // INFO: Highlight Story
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 15, right: 20),
            child: highlightStory(),
          ),
          Container(
            child: tabNavigationitem(),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 11,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://picsum.photos/200/${500 + index}"))),
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(iconSize: 40, selectedFontSize: 2, items: [
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            )),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.search,
              color: Colors.black,
            )),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            )),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.person_add_alt_1,
              color: Colors.black,
            )),
        BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.person,
              color: Colors.black,
            )),
      ]),
    );
  }
}
