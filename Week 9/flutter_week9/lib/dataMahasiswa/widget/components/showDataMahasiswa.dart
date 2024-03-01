import 'package:flutter/material.dart';

class showDataMahasiswa extends StatelessWidget {
  const showDataMahasiswa({
    super.key,
    required this.getDataMahasiswa,
  });

  final List getDataMahasiswa;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: getDataMahasiswa.length,
          itemBuilder: (context, index) {
            print(getDataMahasiswa.length);
            if (getDataMahasiswa.length == 1) {
              return Text("Data Kosong");
            } else {
              return Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom: 1),
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 213, 209, 240), width: 1),
                    borderRadius: BorderRadius.circular(0),
                    color: Color.fromARGB(186, 255, 255, 255),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1)),
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.person_2_sharp,
                          size: 40,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "${getDataMahasiswa[index]["text"]}",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.arrow_right_sharp,
                          size: 40,
                        ),
                      ),
                    ],
                  ));
            }
          }),
    );
  }
}
