import 'package:flutter/material.dart';
import 'package:flutter_fundamental_1/box_decoration_page.dart';
import 'package:flutter_fundamental_1/container_page.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.amber,
              margin: EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                child: Text('Ke Container_Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContainerPage()),
                  );
                },
              ),
            ),
            ElevatedButton(
              child: Text('Ke Box Decoration'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BoxDecorationPage()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Ke Text Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TextWidgetPage()),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );

    return scaffold;
  }
}
