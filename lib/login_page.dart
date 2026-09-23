import 'package:belajarflutter/component/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Login Page")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: MyTextfield(
              myHint: "input username",
              txtController: txtUsername,
              radius: 10,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: MyTextfield(
              myHint: "input password",
              txtController: txtPassword,
              radius: 10,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {}, 
                child: Text("Login", 
                style: TextStyle(fontSize: 20, 
                color: const Color.fromARGB(255, 92, 75, 49),
                fontWeight: FontWeight.bold,
                )
               )
              ),
              ElevatedButton(
                onPressed: () {}, 
                child: Text("Register", 
                style: TextStyle(fontSize: 20, 
                color: const Color.fromARGB(255, 92, 75, 49),
                fontWeight: FontWeight.bold,
                )
               )
              ),
            ],
          ),
        ],
      ),
    );
  }
}