import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:faker/faker.dart';

class practice_date extends StatefulWidget {
  const practice_date({super.key});

  @override
  State<practice_date> createState() => _practice_dateState();
}

class _practice_dateState extends State<practice_date> {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Date - practice"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
                backgroundImage:
                    NetworkImage("${faker.image.image(random: true)}")),
            title: Text(faker.internet.userName()),
            subtitle: Text("${faker.internet.email()}\n" +
                DateFormat.yMMMMEEEEd().format(DateTime.now())),
          ),
        ),
      ),
    );
  }
}
