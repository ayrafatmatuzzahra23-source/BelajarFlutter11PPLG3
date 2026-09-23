import 'package:belajarflutter/component/my_text_field.dart';
import 'package:belajarflutter/controller/kalkulator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  // fungsi validasi dari temanmu
  bool _validasiInput(String angka1, String angka2) {
    if (angka1.isEmpty || angka2.isEmpty) {
      Get.snackbar(
        "Error",
        "Input angka tidak boleh kosong",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 177, 111),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 136, 72),
        title: Text(
          "Kalkulator",
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  MyTextfield(
                    myHint: "input angka 1",
                    txtController: txtangka1,
                    radius: 10,
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 15),
                  MyTextfield(
                    myHint: "input angka 2",
                    txtController: txtangka2,
                    radius: 10,
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 179, 136, 72),
        foregroundColor: Colors.white,
        fixedSize: Size(60, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {
        if (_validasiInput(txtangka1.text, txtangka2.text)) {
          controller.tambah(txtangka1.text, txtangka2.text);
        }
      },
      child: Text("+", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    ),
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 179, 136, 72),
        foregroundColor: Colors.white,
        fixedSize: Size(60, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {
        if (_validasiInput(txtangka1.text, txtangka2.text)) {
          controller.kurang(txtangka1.text, txtangka2.text);
        }
      },
      child: Text("-", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    ),
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 179, 136, 72),
        foregroundColor: Colors.white,
        fixedSize: Size(60, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {
        if (_validasiInput(txtangka1.text, txtangka2.text)) {
          controller.kali(txtangka1.text, txtangka2.text);
        }
      },
      child: Text("x", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    ),
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 179, 136, 72),
        foregroundColor: Colors.white,
        fixedSize: Size(60, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {
        if (_validasiInput(txtangka1.text, txtangka2.text)) {
          controller.bagi(txtangka1.text, txtangka2.text);
        }
      },
      child: Text("/", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    ),
  ],
),
            SizedBox(height: 30),
            Obx(
              () => Text(
                controller.hasilHitung.toString(),
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 82, 55, 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}