import 'package:flutter/material.dart';

class soal_18 extends StatelessWidget {
  const soal_18({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          backgroundColor: Colors.blue[100],
          title: Text("Soal 18"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
          ],
        ),
        body: ListView.builder(
          itemCount: 20,
          padding: EdgeInsets.all(15),
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 10,
                    alignment: Alignment.center,
                    color: Colors.blue[400],
                  ),
                  Text(
                    "Container ${index + 1}",
                  )
                ],
              );
            } else
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    alignment: Alignment.center,
                    color: Color.fromARGB(255, 203, 211, 34),
                  ),
                  Text(
                    "Container ${index + 1}",
                  )
                ],
              );
          },
        ));
  }
}
