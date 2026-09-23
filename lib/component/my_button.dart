import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final double width;

  const MyButton({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: Size(width, 55),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}