import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<dynamic> getDataMahasiswa = [{}];

  late TextEditingController getName = TextEditingController();
  var response;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Data Mahasiswa",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
      )),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 150,
              child: Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Color(0xF6495ed5)),
                      ),
                      Text("PDDKTI")
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xF6495ed5)),
              height: 200,
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Masukan Nama Mahasiswa",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: TextField(
                      controller: getName,
                      decoration: InputDecoration(
                          filled: true, // Mengaktifkan pengisian latar belakang
                          fillColor: Color(0xFFE8E8E8), // Warna latar belakang
                          hintText: 'ex: Willy',
                          labelStyle: TextStyle(backgroundColor: Colors.white)),
                    ),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)))),
                      onPressed: () async {
                        response = await http.get(Uri.parse(
                            "https://api-frontend.kemdikbud.go.id/hit_mhs/${getName.text}"));
                        var data = (jsonDecode(response.body)
                            as Map<String, dynamic>)["mahasiswa"];

                        print(response.statusCode);
                        setState(() {
                          if (getDataMahasiswa.length > 1) {
                            getDataMahasiswa.clear();
                          }
                          data.forEach((value) {
                            getDataMahasiswa.add(value);
                          });
                        });
                      },
                      child: Text(
                        "Cari",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: getDataMahasiswa.length,
                  itemBuilder: (context, index) {
                    print(getDataMahasiswa.length);
                    if (getDataMahasiswa.length == 1) {
                      return Text("Data Kosong");
                    } else {
                      return Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10.0,
                                spreadRadius: 1.0,
                                offset: Offset(1.0, 4.0),
                              ),
                            ],
                          ),
                          child: Text(
                            "${getDataMahasiswa[index]["text"]}",
                            style: TextStyle(fontSize: 18),
                          ));
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
