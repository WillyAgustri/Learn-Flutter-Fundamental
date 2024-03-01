import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_week9/dataMahasiswa/widget/components/showDataMahasiswa.dart';

import 'package:http/http.dart' as http;

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<dynamic> getDataMahasiswa = [];

  late TextEditingController getName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {
                // Tindakan yang akan diambil saat ikon diklik
              },
            ),
          ],
          backgroundColor: Color(0xF6495ed5),
          title: Text(
            "Data Mahasiswa",
            style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 30),
          )),
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Color(0xF6495ed5)),
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
                          fillColor: Color.fromARGB(
                              144, 255, 255, 255), // Warna latar belakang
                          hintText: 'ex: Willy',
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(backgroundColor: Colors.white)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, left: 15, bottom: 15),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            minimumSize: MaterialStatePropertyAll(
                                Size(double.infinity, 50)),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)))),
                        onPressed: () async {
                          var response = await http.get(Uri.parse(
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
                          "Cek Mahasiswa",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xF6495ed5)),
                        )),
                  )
                ],
              ),
            ),
            showDataMahasiswa(getDataMahasiswa: getDataMahasiswa),
          ],
        ),
      ),
    );
  }
}
