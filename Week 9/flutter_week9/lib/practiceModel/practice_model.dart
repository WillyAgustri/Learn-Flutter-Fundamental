import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_week9/model/userMode.dart';
import 'package:http/http.dart' as http;

class practice_model extends StatefulWidget {
  const practice_model({Key? key});

  @override
  State<practice_model> createState() => _practice_modelState();
}

class _practice_modelState extends State<practice_model> {
  List<UserModel> mylist = [
    UserModel(name: "Willy Agusri", email: "WillyOfficial082@gmail.com"),
    UserModel(name: "budi", email: "1.gmail.com"),
    UserModel(name: "dani", email: "2.gmail.com")
  ];

  Future<void> getAllUser() async {
    await Future.delayed(Duration(seconds: 1));
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.teal, title: Text("Practice Model")),
      body: FutureBuilder(
        future: getAllUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
                itemCount: mylist.length,
                itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          height: 60,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                mylist[index].name,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(mylist[index].email,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ],
                          ),
                        ),
                      ],
                    ));
          } else {
            return Center(child: Text("Please Wait..."));
          }
        },
      ),
    );
  }
}
