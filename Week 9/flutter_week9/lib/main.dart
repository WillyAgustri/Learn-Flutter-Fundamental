import 'package:flutter/material.dart';
import 'package:flutter_week9/practiceDate/practiceDate.dart';
import 'package:flutter_week9/practiceFaker/faker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:faker/faker.dart';
// import 'package:flutter_week9/dataMahasiswa/widget/home.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_week9/practiceModel/practice_model.dart';

void main() {
  var faker = new Faker();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(brightness: brightness);

    return baseTheme.copyWith(
      textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        home: practice_date());
  }
}
