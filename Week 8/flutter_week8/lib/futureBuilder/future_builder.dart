import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class future_builder extends StatefulWidget {
  const future_builder({super.key});

  @override
  State<future_builder> createState() => _future_builderState();
}

class _future_builderState extends State<future_builder> {
  List<Map<String, dynamic>> allUser = [];

  Future getAllUser() async {
    try {
      var response =
          await http.get(Uri.parse("https://reqres.in/api/users?page=2"));

      var data = (jsonDecode(response.body) as Map<String, dynamic>)["data"];
      data.forEach((value) {
        allUser.add(value);
      });
      print(allUser);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Future Builder",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: FutureBuilder(
          future: getAllUser(),
          builder: (context, snapshot) {
            print(snapshot.connectionState);
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Text("Loading..."),
              );
            } else {
              return ListView.builder(
                itemCount: allUser.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    maxRadius: 20,
                    minRadius: 20,
                  ),
                  title: Text("${allUser[index]["first_name"]}"),
                  subtitle: Text("${allUser[index]["email"]}"),
                ),
              );
            }
          }),
    );
  }
}
