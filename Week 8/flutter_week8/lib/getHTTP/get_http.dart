import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as myhttp;

class get_http extends StatefulWidget {
  const get_http({super.key});

  @override
  State<get_http> createState() => _get_httpState();
}

class _get_httpState extends State<get_http> {
  TextEditingController nameC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "HTTP GET",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Name"),
              autocorrect: false,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Job"),
              autocorrect: false,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    padding: const MaterialStatePropertyAll(EdgeInsets.all(4)),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.blueAccent),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
                onPressed: () async {
                  var response = await myhttp
                      .post(Uri.parse("https://reqres.in/api/users"));
                  print(response);
                },
                child: const Text("Post Data",
                    style: TextStyle(color: Colors.white, fontSize: 30))),
            const SizedBox(
              height: 50,
            ),
            const Text("Show Result : ",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold)),
            const Text("Data Kosong!",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
