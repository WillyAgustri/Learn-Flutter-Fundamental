import 'package:flutter/material.dart';
import 'package:fluttter_week7/profile.dart';

class practice_navigator extends StatelessWidget {
  const practice_navigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Latihan Navigator",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          width: 300,
          height: 100,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            tileColor: Colors.teal,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => widget_profile(),
              ));
              print("Kamu mengklik tombol halaman kedua");
            },
            title: Center(
                child: Text(
              "Ke Halaman Kedua",
              style: TextStyle(fontSize: 30),
            )),
          ),
        ),
      ),
    );
  }
}
