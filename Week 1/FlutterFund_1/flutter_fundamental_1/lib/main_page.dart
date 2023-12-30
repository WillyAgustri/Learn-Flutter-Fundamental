import 'package:flutter/material.dart';
import 'package:flutter_fundamental_1/container_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = Scaffold(
      appBar: AppBar(
        title: const Text('Hello world'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Ke Container_Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContainerPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );

    return scaffold;
  }
}
