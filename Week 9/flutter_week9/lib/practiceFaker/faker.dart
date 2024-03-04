import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class practice_faker extends StatefulWidget {
  const practice_faker({super.key});

  @override
  State<practice_faker> createState() => _practice_fakerState();
}

class _practice_fakerState extends State<practice_faker> {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Practice Faker")),
      body: Center(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(),
            title: Text("Orang ke ${faker.person.name()}"),
            subtitle: Text("Email : ${faker.internet.email()}"),
          ),
        ),
      ),
    );
  }
}
