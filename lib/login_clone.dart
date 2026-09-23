import 'package:flutter/material.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "NETFLIX",
          style: TextStyle(
            fontSize: 28,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Column(
        children: [

          // Email
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Email atau nomor ponsel",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                filled: true,
                fillColor: Color(0xFF333333),
              ),
            ),
          ),

          // Password
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Sandi",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                filled: true,
                fillColor: Color(0xFF333333),
              ),
            ),
          ),

          // Tombol Masuk
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(350, 55),
              ),
              child: Text(
                "Masuk",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // ATAU
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "ATAU",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),

          // Kode Masuk
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF333333),
                minimumSize: Size(350, 55),
              ),
              child: Text(
                "Gunakan Kode Masuk",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Lupa Sandi
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "Lupa sandi?",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Daftar
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "Ingin mencoba Netflix? Daftar sekarang.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}