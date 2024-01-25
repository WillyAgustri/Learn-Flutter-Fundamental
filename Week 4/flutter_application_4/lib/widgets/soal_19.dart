import 'package:flutter/material.dart';

class soal_19 extends StatelessWidget {
  const soal_19({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          backgroundColor: Colors.blue[100],
          title: Text("Soal 19"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
          ],
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(15),
          itemBuilder: (context, index) => Container(
            height: 100,
            margin: EdgeInsets.only(bottom: 10),
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://picsum.photos/id/${200 + index}/200/300"))),
            child: Text(
              "Gambar ${index + 1}",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
