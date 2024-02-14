import 'package:flutter/material.dart';

class profileItem extends StatelessWidget {
  const profileItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.amber]),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(120 / 2)),
        ),
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://shorturl.at/grU03")),
              border: Border.all(color: Colors.white, width: 5),
              color: const Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.circular(110 / 2)),
        ),
      ],
    );
  }
}
