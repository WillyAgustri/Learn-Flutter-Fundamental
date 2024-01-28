import 'package:flutter/material.dart';

class practice1 extends StatefulWidget {
  const practice1({super.key});

  @override
  State<practice1> createState() => _practice1State();
}

class _practice1State extends State<practice1> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Week 5"),
        backgroundColor: const Color.fromARGB(255, 7, 172, 255),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    nilai = nilai - 1;
                    print("nilai ${nilai}");
                    setState(() {});
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 40),
                  )),
              Container(
                margin: EdgeInsets.only(right: 30, left: 30),
                child: Text("${nilai}", style: TextStyle(fontSize: 60)),
              ),
              ElevatedButton(
                  onPressed: () {
                    nilai = nilai + 1;
                    print("nilai ${nilai}");
                    setState(() {});
                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 40),
                  ))
            ],
          )
        ],
      )),
    );
  }
}
