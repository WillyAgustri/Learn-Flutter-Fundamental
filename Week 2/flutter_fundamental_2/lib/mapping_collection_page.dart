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
            colorBox(keterangan: "Kotak 2", warna: Colors.black12),
            colorBox(keterangan: "Kotak 1", warna: Colors.black12),
            colorBox(keterangan: "Kotak 1", warna: Colors.black12),
            colorBox(keterangan: "Kotak 1", warna: Colors.black12),
          ],
        ));
  }
}
