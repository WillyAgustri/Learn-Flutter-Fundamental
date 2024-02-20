import 'package:flutter/material.dart';

class put_http extends StatefulWidget {
  const put_http({super.key});

  @override
  State<put_http> createState() => _put_httpState();
}

class _put_httpState extends State<put_http> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

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
              decoration: InputDecoration(
                  hintText: "Name", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Job", border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
    );
  }
}
