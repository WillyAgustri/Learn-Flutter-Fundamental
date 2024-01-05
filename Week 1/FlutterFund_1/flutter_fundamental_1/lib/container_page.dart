import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Page"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 100,
                  width: 100,
                  color: Colors.amberAccent,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 28, 89, 174),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 177, 1, 24),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 104, 205, 2),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
