import 'package:flutter/material.dart';

class dropdown_search extends StatefulWidget {
  const dropdown_search({super.key});

  @override
  State<dropdown_search> createState() => _dropdown_searchState();
}

class _dropdown_searchState extends State<dropdown_search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "DropDown Search",
          )),
      body: Center(),
    );
  }
}
