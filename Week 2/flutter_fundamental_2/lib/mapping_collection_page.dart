import 'package:flutter/material.dart';
import 'package:flutter_fundamental_2/widgets/colorBox.dart';

class MappingPage extends StatelessWidget {
  const MappingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learn Mapping"),
        ),
        body: ListView(
          children: [
            colorBox(keterangan: "Kotak 1", warna: Colors.black12),
            colorBox(
                keterangan: "Kotak 2", warna: Color.fromARGB(31, 238, 9, 9)),
            colorBox(
                keterangan: "Kotak 3",
                warna: const Color.fromARGB(31, 143, 41, 41)),
            colorBox(
                keterangan: "Kotak 4", warna: Color.fromARGB(31, 40, 65, 208)),
            colorBox(
                keterangan: "Kotak 5", warna: Color.fromARGB(31, 94, 139, 53)),
            colorBox(
                keterangan: "Kotak 6", warna: Color.fromARGB(31, 94, 139, 53)),
            colorBox(
                keterangan: "Kotak 7", warna: Color.fromARGB(31, 94, 139, 53)),
          ],
        ));
  }
}
