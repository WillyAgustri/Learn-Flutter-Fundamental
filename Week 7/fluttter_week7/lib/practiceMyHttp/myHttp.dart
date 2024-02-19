import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class PracticeMyhttp extends StatefulWidget {
  const PracticeMyhttp({super.key});

  @override
  State<PracticeMyhttp> createState() => _PracticeMyhttpState();
}

class _PracticeMyhttpState extends State<PracticeMyhttp> {
  String? result;
  String? username;
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            "Latihan HTTP",
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${username}",
              style: const TextStyle(fontSize: 30),
            ),
            Text(
              "${result}",
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.white)),
                onPressed: () async {
                  var myrespon = await myhttp
                      .get(Uri.parse("https://reqres.in/api/users/${1 + i}"));
                  setState(() {
                    i = i + 1;
                    if (myrespon.statusCode == 200) {
                      var data = jsonDecode(myrespon.body);
                      var email = data['data']['email'];
                      var name = data['data']['first_name'];
                      username = name;
                      print(myrespon.body);
                      print(name);
                      print(email);
                      result = email;
                    } else if (myrespon.statusCode == 404) {
                      i = 0;
                      result = "Data Tidak merespon (${myrespon.statusCode})";
                      print("Data Tidak merespon (${myrespon.statusCode})");
                    }
                  });
                },
                child: const Text(
                  "Get Data",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
