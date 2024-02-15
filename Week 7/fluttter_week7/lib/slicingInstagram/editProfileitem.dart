import 'package:flutter/material.dart';

class editProfileItem extends StatelessWidget {
  const editProfileItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          elevation: MaterialStatePropertyAll(0),
          side: MaterialStatePropertyAll(BorderSide(color: Colors.black38)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        ),
        child: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ));
  }
}
