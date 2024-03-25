import 'package:flutter/material.dart';

import 'package:dropdown_search/dropdown_search.dart';
import 'UserModel/user.dart';

class dropdown_search extends StatefulWidget {
  const dropdown_search({super.key});

  @override
  State<dropdown_search> createState() => _dropdown_searchState();
}

class _dropdown_searchState extends State<dropdown_search> {
  var id;
  var createdAt;
  var nama;

  List<UserModel> users = [
    UserModel(
      id: "1",
      createdAt: DateTime.now(),
      name: "John Doe",
      avatar: "https://example.com/avatar1.jpg",
    ),
    UserModel(
      id: "2",
      createdAt: DateTime.now(),
      name: "Jane Smith",
      avatar: "https://example.com/avatar2.jpg",
    ),
    UserModel(
      id: "3",
      createdAt: DateTime.now(),
      name: "Alice Johnson",
      avatar: "https://example.com/avatar3.jpg",
    ),
    UserModel(
      id: "4",
      createdAt: DateTime.now(),
      name: "Bob Johnson",
      avatar: "https://example.com/avatar4.jpg",
    ),
    UserModel(
      id: "5",
      createdAt: DateTime.now(),
      name: "Emily Brown",
      avatar: "https://example.com/avatar5.jpg",
    ),
    UserModel(
        id: "6",
        createdAt: DateTime.now(),
        name: "Gilowo",
        avatar: "https://google.com")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "DropDown Search",
          )),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Container(
              child: Column(
            children: [
              DropdownSearch<UserModel>(
                popupProps: PopupProps.menu(showSearchBox: true),
                items: users,
                onChanged: (UserModel? data) {
                  setState(() {
                    id = data?.id;
                    nama = data?.name;
                    createdAt = data?.createdAt;
                  });
                },
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration:
                      InputDecoration(labelText: "Tipe Pengumuman"),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Detail Informasi :",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: double.maxFinite,
                  height: 400,
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ID : " + id.toString()),
                      Text("Nama : " + nama.toString()),
                      Text("Dibuat : " + createdAt.toString())
                    ],
                  )),
            ],
          )),
        ),
      ),
    );
  }
}
