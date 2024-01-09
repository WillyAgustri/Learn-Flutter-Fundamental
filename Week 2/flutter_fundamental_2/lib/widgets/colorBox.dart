import 'package:flutter/material.dart';

class colorBox extends StatelessWidget {
  const colorBox({
    required this.keterangan,
    required this.warna,
    super.key,
  });

  final String keterangan;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 100,
      color: warna,
      child: Text(keterangan),
    );
  }
}
