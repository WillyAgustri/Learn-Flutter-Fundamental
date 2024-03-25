import 'dart:convert';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:week_11/dropdown_api/model/provinsi.dart';

class Dropdown_api extends StatefulWidget {
  const Dropdown_api({super.key});

  @override
  State<Dropdown_api> createState() => _Dropdown_apiState();
}

class _Dropdown_apiState extends State<Dropdown_api> {
  List<dynamic> nama_provinsi = [];
  List<dynamic> nama_kabupaten = [];
  int? selected_id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Latihan Week 11",
            style: TextStyle(color: Colors.white),
          )),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Provinsi :"),
        DropdownSearch(
          asyncItems: (String text) async {
            var response = await http.get(Uri.parse(
                "https://api.binderbyte.com/wilayah/provinsi?api_key=3c9fa1c95b1c3988d087aa8654a5eaca83692d3db511f650b856392f2c67f7c3"));

            if (response.statusCode == 200) {
              List Json_response =
                  (jsonDecode(response.body) as Map<String, dynamic>)["value"];

              Json_response.forEach((element) {
                Map<String, dynamic> id_provinsi = element;
                nama_provinsi.add(id_provinsi);
              });

              return nama_provinsi;
            }

            return [];
          },
          onChanged: (value) {
            print(value);
            selected_id = int.parse(value["id"]);
            print("value adalah : " + value["id"]);
          },
        ),
        Text("Kabupaten / Kota"),
        DropdownSearch(
          asyncItems: (String text) async {
            var response = await http.get(Uri.parse(
                "https://api.binderbyte.com/wilayah/kabupaten?api_key=3c9fa1c95b1c3988d087aa8654a5eaca83692d3db511f650b856392f2c67f7c3&id_provinsi=$selected_id"));

            if (response.statusCode == 200) {
              if (nama_kabupaten != null) {
                nama_kabupaten.clear();
              }

              List json_kabupaten =
                  (jsonDecode(response.body) as Map<String, dynamic>)["value"];
              json_kabupaten.forEach((element) {
                Map<String, dynamic> get_kabupaten = element;
                nama_kabupaten.add(get_kabupaten);
              });

              return nama_kabupaten;
            }

            return ["Pilih Provinsi Terlebih Dahulu"];
          },
        )
      ]),
    );
  }
}
