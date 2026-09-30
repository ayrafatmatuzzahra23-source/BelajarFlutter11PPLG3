import 'package:belajarflutter/controller/confirm_registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 221, 227),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 220, 221, 227),
        title: const Text(
          "Confirm Registration",
          style: TextStyle(
            color: Color.fromARGB(255, 60, 56, 56),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Text(
              "Nama " + controller.nama.toString(),
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            Text(
              "Alamat " + controller.alamat.toString(),
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            Text(
              "Jenis Kelamin " + controller.jeniskelamin.toString(),
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            Text(
              "No WA " + controller.noWA.toString(),
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            Text(
              "Email " + controller.email.toString(),
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            // others data jenis kelamin, alamat dll
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 61, 59, 66),
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Get.back();
              },
              child: const Text(
                "oke",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}