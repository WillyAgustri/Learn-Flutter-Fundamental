import 'package:flutter/material.dart';

class indicatorItem extends StatelessWidget {
  const indicatorItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(
              "1.040",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "Posts",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(
              "2.406",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "Followers",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(
              "6.560",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "Following",
              style: TextStyle(fontSize: 20),
            ),
          ],
        )
      ],
    );
  }
}
