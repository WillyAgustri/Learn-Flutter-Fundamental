import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
                            color: Colors.green),
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
                      onPressed: () {},
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
                itemCount: 5,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xF6495ed5)),
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
