import 'package:flutter/material.dart';
import 'package:flutter_fundamental_1/box_decoration_page.dart';
import 'package:flutter_fundamental_1/container_page.dart';
import 'package:flutter_fundamental_1/font_type_page.dart';
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                child: Text('Ke Box Decoration'),
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
              margin: EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                child: Text('Ke Text Decoration Page'),
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
              margin: EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                child: Text('Ke Text Style Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FontTypePage()),
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
