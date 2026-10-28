import 'package:flutter/material.dart';
import 'package:belajarflutter/component/my_button.dart';
import 'package:belajarflutter/component/my_text_field2.dart';

class LoginCloneFix extends StatelessWidget {
  const LoginCloneFix({super.key});

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

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                margin: EdgeInsets.all(10),
                child: MyTextField2(
                  myHint: "Email atau nomor ponsel",
                  radius: 5,
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: MyTextField2(
                  myHint: "Sandi",
                  radius: 5,
                  obscureText: true,
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: MyButton(
                  text: "Masuk",
                  buttonColor: Colors.red,
                  width: 350,
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "ATAU",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: MyButton(
                  text: "Gunakan Kode Masuk",
                  buttonColor: Color(0xFF333333),
                  width: 350,
                ),
              ),

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
        ),
      ),
    );
  }
}