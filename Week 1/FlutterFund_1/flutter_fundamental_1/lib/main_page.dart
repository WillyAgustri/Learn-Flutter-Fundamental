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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                child: const Text(
                  'Ke Container_Page',
                  style: TextStyle(fontFamily: "Montserrat"),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContainerPage()),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                child: const Text(
                  'Ke Box Decoration',
                  style: TextStyle(fontFamily: "Montserrat"),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BoxDecorationPage()),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                child: const Text(
                  'Ke Text Decoration Page',
                  style: TextStyle(fontFamily: "Montserrat"),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TextWidgetPage()),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                child: const Text(
                  'Ke Text Style Page',
                  style: TextStyle(fontFamily: "Montserrat"),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FontTypePage()),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                child: const Text(
                  'Ke Stateful Widget Page',
                  style: TextStyle(fontFamily: "Montserrat"),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StatePage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );

    return scaffold;
  }
}
