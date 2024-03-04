import 'package:flutter/material.dart';

class practiceBottomSheet extends StatelessWidget {
  practiceBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("You Click This")));
              showModalBottomSheet(
                context: context,
                builder: (context) => Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Container(
                    height: 500,
                    child: ListView(
                      padding: const EdgeInsets.all(40),
                      children: [
                        const Center(
                          child: Text(
                            "Login Admin",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              label: Text("Username"),
                              border: OutlineInputBorder()),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              label: Text("Password"),
                              border: OutlineInputBorder()),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(20)),
                                backgroundColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.teal)),
                            onPressed: () {},
                            child: const Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(20)),
                                backgroundColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.grey)),
                            onPressed: () {},
                            child: const Text(
                              "Kembali",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ),
              );
            },
            child: const Text("BottomSheet")),
      ),
    );
  }
}
