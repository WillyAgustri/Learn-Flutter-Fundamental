import 'package:flutter/material.dart';

class descriptionItem extends StatelessWidget {
  const descriptionItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Willyagustt",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(
            "Saya merupakan flutter developer yang masih belajar dan antusias untuk menjadi ahli dibidang flutter android"),
        Text(
          "Indonesia,Palangka Raya",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          "www.linkedin.com",
          style: TextStyle(
              color: Colors.blue.shade900, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
