import 'package:flutter/material.dart';
import 'package:flutter_fundamental_2/gridView_page.dart';
import 'package:flutter_fundamental_2/mapping_collection_page.dart';
import 'package:flutter_fundamental_2/stack_page.dart';
import 'package:flutter_fundamental_2/widgets/menuWidget.dart';

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
              const MenuWidget(
                judul: "Ke GridView",
                onPressedCallback: GridViewPage(),
              ),
              const MenuWidget(
                  judul: "Ke Stack Page", onPressedCallback: StackPage()),
              const MenuWidget(
                  judul: "Ke Mapping Collection",
                  onPressedCallback: MappingPage())
            ],
          ),
        ));
  }
}
