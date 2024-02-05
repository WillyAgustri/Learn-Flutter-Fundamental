import 'package:flutter/material.dart';

class practiceTextfield extends StatefulWidget {
  const practiceTextfield({super.key});

  @override
  State<practiceTextfield> createState() => _practiceTextfieldState();
}

class _practiceTextfieldState extends State<practiceTextfield> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Textfield"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              TextField(
                controller: emailC,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      size: 20,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14)),
                    label: Text("Email")),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              TextField(
                controller: passC,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          if (isHidden == true) {
                            isHidden = false;
                          } else {
                            isHidden = true;
                          }
                          setState(() {});
                        },
                        icon: Icon(Icons.remove_red_eye)),
                    prefixIcon: Icon(Icons.lock),
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14)),
                    label: Text("Password")),
                obscureText: isHidden,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(),
                onPressed: () {
                  print("Email: ${emailC.text}, Password : ${passC.text}");
                },
                child: Text("Masuk"),
              )
            ],
          ),
        ));
  }
}
