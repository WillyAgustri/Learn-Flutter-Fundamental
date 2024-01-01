import 'package:flutter/material.dart';

class BoxDecorationPage extends StatefulWidget {
  const BoxDecorationPage({super.key});

  @override
  State<BoxDecorationPage> createState() => _BoxDecorationPageState();
}

class _BoxDecorationPageState extends State<BoxDecorationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Box Decoration"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.black54, offset: Offset(5, 5))
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                border: Border.all(color: Colors.brown, width: 2),
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://www.wikihow.com/images/thumb/5/5b/LR22-RTW-Haven-Smiles.png/-crop-127-140-127px-LR22-RTW-Haven-Smiles.png.webp'),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
