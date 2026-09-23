import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextfield extends StatelessWidget {
  // list variabel parameter yang digunakan
  // untuk diisikan ketika dipanggil
  final String myHint;
  final TextEditingController txtController;
  final double radius;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  const MyTextfield({
    super.key,
    required this.myHint,
    required this.txtController,
    required this.radius,
    this.keyboardType,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      keyboardType: keyboardType,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      style: const TextStyle(color: Color.fromARGB(255, 251, 250, 250)),
      decoration: InputDecoration(
        hintText: myHint,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 179, 136, 72),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}