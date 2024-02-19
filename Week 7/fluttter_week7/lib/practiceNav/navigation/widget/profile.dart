import 'package:flutter/material.dart';

class widget_profile extends StatelessWidget {
  const widget_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ini Profile",
              style: TextStyle(fontSize: 30, color: Colors.teal),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Back Home", style: TextStyle(color: Colors.teal))),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: Text("Back Main", style: TextStyle(color: Colors.teal)))
          ],
        ),
      ),
    );
  }
}
