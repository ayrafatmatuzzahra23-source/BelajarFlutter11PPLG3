import 'package:flutter/material.dart';

class MyTextField2 extends StatelessWidget {
  // list variabel parameter yang digunakan
  // untuk diisikan ketika dipanggil

  final String myHint;
  final double radius;
  final bool obscureText;

  const MyTextField2({
    super.key,
    required this.myHint,
    required this.radius,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: myHint,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        filled: true,
        fillColor: Color(0xFF333333),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}