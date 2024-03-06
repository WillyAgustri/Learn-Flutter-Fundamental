import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';

class practice_intro_screen extends StatefulWidget {
  const practice_intro_screen({super.key});

  @override
  State<practice_intro_screen> createState() => _practice_intro_screenState();
}

class _practice_intro_screenState extends State<practice_intro_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Text("Practice Intro Screen")),
        body: IntroductionScreen(
          next: Text("Lanjut"),
          showNextButton: true,
          done: Text("done"),
          onDone: () => Text("Has Done!"),
          pages: [
            PageViewModel(
              title: "Title of introduction page",
              body:
                  "Welcome to the app! This is a description of how it works.",
              image: const Center(
                child: Icon(Icons.waving_hand, size: 50.0),
              ),
            ),
            PageViewModel(
              title: "Title of introduction page",
              body: "Welcome to the app!This is a description of how it works.",
              image: const Center(
                child: Icon(Icons.waving_hand, size: 50.0),
              ),
            )
          ],
        ));
  }
}
