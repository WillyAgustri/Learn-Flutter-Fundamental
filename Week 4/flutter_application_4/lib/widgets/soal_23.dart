import 'package:flutter/material.dart';

class soal_23 extends StatelessWidget {
  const soal_23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soal 23"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipOval(
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 0, 72, 255)),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150 / 2),
                      border: Border.all(
                          width: 4,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      color: Colors.amber,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://picsum.photos/id/237/200/300"))),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "This is Circle of Dog",
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            )
          ],
        ),
      ),
    );
  }
}
