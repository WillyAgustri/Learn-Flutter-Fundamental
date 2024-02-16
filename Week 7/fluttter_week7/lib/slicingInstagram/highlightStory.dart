import 'package:flutter/material.dart';

class highlightStory extends StatelessWidget {
  const highlightStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("https://picsum.photos/200/300")),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(80 / 2)),
            width: 80,
            height: 80,
          ),
          Text("Aesthetic"),
        ],
      ),
      SizedBox(
        width: 20,
      ),
      Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("https://picsum.photos/200/400")),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(80 / 2)),
            width: 80,
            height: 80,
          ),
          Text("Daily"),
        ],
      ),
      SizedBox(
        width: 20,
      ),
      Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("https://picsum.photos/200/700")),
                color: Colors.amber,
                borderRadius: BorderRadius.circular(80 / 2)),
            width: 80,
            height: 80,
          ),
          Text("Life"),
        ],
      )
    ]);
  }
}
