import 'package:flutter/material.dart';

class dropDownWidgets extends StatelessWidget {
  final List data = [
    "data 1",
    "data 2",
    "data 3",
    "data 4",
    "data 5",
  ];

  dropDownWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: EdgeInsets.all(20),
          child: DropdownButton(
            items: data
                .map((e) => DropdownMenuItem(
                      child: Text(e),
                      value: e.toString(),
                    ))
                .toList(),
            onChanged: (value) => {print("Kamu memilih opsi ${value}")},
            hint: Text("Pilih Opsi :"),
          )),
    );
  }
}
