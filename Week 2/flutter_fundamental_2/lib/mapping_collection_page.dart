import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fundamental_2/widgets/colorBox.dart';

class MappingPage extends StatelessWidget {
  const MappingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<colorBox> allItems = List.generate(
        10,
        (index) => colorBox(
            keterangan: "Kotak = ${index + 1}",
            warna: Color.fromARGB(
                255, Random().nextInt(255), Random().nextInt(255), 255)));

    final List<Map<String, dynamic>> data = List.generate(
        10,
        (index) => {
              "ket": "Kotak - ${index + 1}",
              "warna": Color.fromARGB(
                  255, Random().nextInt(255), 255, Random().nextInt(255))
            });

    return Scaffold(
        appBar: AppBar(
          title: Text("Learn Mapping"),
        ),
        body: ListView(
          children: data
              .map((e) => colorBox(keterangan: e["ket"], warna: e["warna"]))
              .toList(),
        ));
  }
}
