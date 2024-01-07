import 'package:flutter/material.dart';
import 'package:flutter_fundamental_1/box_decoration_page.dart';
import 'package:flutter_fundamental_1/container_page.dart';
import 'package:flutter_fundamental_1/font_type_page.dart';
import 'package:flutter_fundamental_1/state_page.dart';
import 'package:flutter_fundamental_1/text_widget_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = Scaffold(
      appBar: AppBar(
        title: const Text('Hello world'),
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MenuWidget(
              text: "Ke Container Page",
              onPressedCallback: ContainerPage(),
            ),
            MenuWidget(
              text: "Ke Box Decoration Page",
              onPressedCallback: BoxDecorationPage(),
            ),
            MenuWidget(
              text: "Ke Text Decoration Page",
              onPressedCallback: TextWidgetPage(),
            ),
            MenuWidget(
              text: "Ke Text Style Page",
              onPressedCallback: FontTypePage(),
            ),
            MenuWidget(
              text: "Ke Stateful Page (Increment)",
              onPressedCallback: StatePage(),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );

    return scaffold;
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    required this.text,
    required this.onPressedCallback,
    super.key,
  });
  final String text;
  final Widget onPressedCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        child: Text(
          text,
          style: const TextStyle(fontFamily: "Montserrat"),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => onPressedCallback),
          );
        },
      ),
    );
  }
}
