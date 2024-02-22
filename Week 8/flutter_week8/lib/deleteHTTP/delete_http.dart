import 'package:flutter/material.dart';

import 'package:http/http.dart' as myhttp;

class delete_http extends StatefulWidget {
  const delete_http({super.key});

  @override
  State<delete_http> createState() => _delete_httpState();
}

class _delete_httpState extends State<delete_http> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Delete HTTP",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    var response = await myhttp
                        .get(Uri.parse("https://reqres.in/api/users/2"));
                    print(response.body);
                  },
                  child: Text("Get Data")),
              ElevatedButton(
                  onPressed: () async {
                    var deleteResponse = await myhttp
                        .delete(Uri.parse("https://reqres.in/api/users/2"));
                    print(deleteResponse.statusCode.toString() +
                        " - Berhasil Dihapus");
                  },
                  child: Text("Delete Data"))
            ],
          ),
        ));
  }
}
