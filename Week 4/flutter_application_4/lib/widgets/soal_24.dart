import 'package:flutter/material.dart';

class soal_24 extends StatefulWidget {
  const soal_24({super.key});

  @override
  State<soal_24> createState() => _soal_24State();
}

class _soal_24State extends State<soal_24> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Soal 24"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                child: Text(
                  "Categories",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 150,
              child: ListView.builder(
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                itemCount: 30,
                itemBuilder: (context, index) => SizedBox(
                  height: 200,
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.all(7),
                    margin: EdgeInsets.all(10),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://picsum.photos/id/${200 + index}/200/300"))),
                    child: Text(
                      "Gambar ${index + 1}",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text(
                "Features",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.all(10),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://picsum.photos/id/${800 + index}/200/300"))),
                  child: Text("Gambar ${index}"),
                ),
              ),
            )
          ],
        ));
  }
}
