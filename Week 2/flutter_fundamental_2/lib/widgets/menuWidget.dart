import 'package:flutter/material.dart';

// Reusable Menu Widget Week 2
class MenuWidget extends StatelessWidget {
  const MenuWidget({
    required this.judul,
    required this.onPressedCallback,
    super.key,
  });

  final String judul;
  final Widget onPressedCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => onPressedCallback));
            },
            child: Text(judul)));
  }
}
