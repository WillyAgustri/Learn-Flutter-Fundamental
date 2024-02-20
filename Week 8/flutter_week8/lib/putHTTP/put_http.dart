import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class put_http extends StatefulWidget {
  const put_http({super.key});

  @override
  State<put_http> createState() => _put_httpState();
}

class _put_httpState extends State<put_http> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  int codeS = 404;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "PUT HTTP",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: nameC,
              decoration: InputDecoration(
                  hintText: "Name", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: jobC,
              decoration: InputDecoration(
                  hintText: "Job", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.teal),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
                onPressed: () async {
                  var rawData = await myhttp
                      .get(Uri.parse("https://reqres.in/api/users/2"));

                  print(rawData.body);
                  var response = await myhttp.put(
                      Uri.parse("https://reqres.in/api/users/2"),
                      body: {"name": nameC.text, "job": jobC.text});

                  print(response.statusCode);

                  if (response.statusCode == 200) {
                    codeS = 200;
                  } else {
                    codeS = 404;
                  }
                },
                child: Text(
                  "PUT Data",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
            SizedBox(
              height: 25,
            ),
            Text(
              "Status Data :",
              style: TextStyle(fontSize: 25),
            ),
            Text("${codeS}",
                style: TextStyle(
                    fontSize: 25,
                    color: codeS == 404 ? Colors.red : Colors.blue))
          ],
        ),
      ),
    );
  }
}
