import 'package:flutter/material.dart';

class slicing_instagram extends StatelessWidget {
  const slicing_instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
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
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.red, Colors.amber]),
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(120 / 2)),
                  ),
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("https://shorturl.at/grU03")),
                        border: Border.all(color: Colors.white, width: 5),
                        color: const Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.circular(110 / 2)),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
