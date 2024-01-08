import 'package:flutter/material.dart';
import 'package:flutter_fundamental_2/gridView_page.dart';
import 'package:flutter_fundamental_2/stack_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Menu Week 2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
                child: const Text(
                  "Ini Adalah Menu Week 2",
                  style: TextStyle(),
                ),
              ),
              MenuWidget(
                judul: "Ke GridView",
                onPressedCallback: GridViewPage(),
              ),
              MenuWidget(judul: "Ke Stack Page", onPressedCallback: StackPage())
            ],
          ),
        ));
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    required this.judul,
    required this.onPressedCallback,
    super.key,
  });

  final String judul;
  final Widget onPressedCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsetsDirectional.symmetric(vertical: 10),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => onPressedCallback));
            },
            child: Text(judul)));
  }
}
