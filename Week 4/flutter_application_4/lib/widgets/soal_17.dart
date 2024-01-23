import 'package:flutter/material.dart';

class soal_17 extends StatelessWidget {
  const soal_17({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          backgroundColor: Colors.blue[100],
          title: Text("Soal 17"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
          ],
        ),
        body: GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              return Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                color: Colors.blue[400],
                child: Text("Container 1"),
              );
            } else
              return Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                color: Color.fromARGB(255, 223, 199, 20),
                child: Text("Container 1"),
              );
          },
        ));
  }
}
