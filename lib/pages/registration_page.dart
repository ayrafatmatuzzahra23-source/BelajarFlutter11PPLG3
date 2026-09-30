import 'package:belajarflutter/component/my_text_field.dart';
import 'package:belajarflutter/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {

  const RegistrationPage({super.key});

  @override

  Widget build(BuildContext context) {
    final txtNama = TextEditingController();
    final txtAlamat = TextEditingController();
    final txtJenisKelamin = TextEditingController();
    final txtNoWA = TextEditingController();
    final txtEmail = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 221, 227),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 220, 221, 227),
        title: const Text(
          "Registration",
          style: TextStyle(
            color: Color.fromARGB(255, 60, 56, 56),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          spacing: 16,
          children: [
            MyTextfield(
              myHint: "Input Name",
              txtController: txtNama,
              radius: 10,
            ),
            MyTextfield(
              myHint: "Input Address",
              txtController: txtAlamat,
              radius: 10,
            ),
            MyTextfield(
              myHint: "Input Gender",
              txtController: txtJenisKelamin,
              radius: 10,
            ),
            MyTextfield(
              myHint: "Input Phone Number",
              txtController: txtNoWA,
              radius: 10,
            ),
            MyTextfield(
              myHint: "Input Email",
              txtController: txtEmail,
              radius: 10,
            ),
            ElevatedButton(
        style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 61, 59, 66),
        foregroundColor: Colors.white,
          ),
        onPressed: () {
        // Handle button press
        Get.toNamed(Routes.confirmRegistration,
        arguments: {
          'name': txtNama.text,
          'alamat': txtAlamat.text,
          'jenisKelamin': txtJenisKelamin.text,
          'noWA': txtNoWA.text,
          'email': txtEmail.text
        });
        },
             child: const Text(
             "Send",
             style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),      
          ],
        ),
      )
    );
  }
} 

