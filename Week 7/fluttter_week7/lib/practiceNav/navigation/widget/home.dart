import 'package:flutter/material.dart';
import 'package:fluttter_week7/practiceNav/navigation/widget/profile.dart';

class widget_home extends StatelessWidget {
  const widget_home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal,
            centerTitle: true,
            title: Text("Menu Home")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Ini Adalah Home",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Utama", style: TextStyle(color: Colors.teal)),
              ),
              ElevatedButton(
                style: ButtonStyle(),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => widget_profile(),
                  ));
                },
                child: Text("Ke Profile", style: TextStyle(color: Colors.teal)),
              )
            ],
          ),
        ));
  }
}
