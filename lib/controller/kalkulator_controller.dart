import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasilHitung = 0.0.obs;

  void tambah(String angka1, String angka2) {
    if (angka1.isEmpty || angka2.isEmpty) {
      Get.snackbar("Error", "Input angka tidak boleh kosong",
          snackPosition: SnackPosition.BOTTOM);
    } else {
      double hasilTambah = double.parse(angka1) + double.parse(angka2);
      hasilHitung.value = hasilTambah;
      Get.snackbar("Hasil Jumlah", hasilTambah.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void kurang(String angka1, String angka2) {
    if (angka1.isEmpty || angka2.isEmpty) {
      Get.snackbar("Error", "Input angka tidak boleh kosong",
          snackPosition: SnackPosition.BOTTOM);
    } else {
      double hasilKurang = double.parse(angka1) - double.parse(angka2);
      hasilHitung.value = hasilKurang;
      Get.snackbar("Hasil Pengurangan", hasilKurang.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void kali(String angka1, String angka2) {
    if (angka1.isEmpty || angka2.isEmpty) {
      Get.snackbar("Error", "Input angka tidak boleh kosong",
          snackPosition: SnackPosition.BOTTOM);
    } else {
      double hasilKali = double.parse(angka1) * double.parse(angka2);
      hasilHitung.value = hasilKali;
      Get.snackbar("Hasil Perkalian", hasilKali.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void bagi(String angka1, String angka2) {
    if (angka1.isEmpty || angka2.isEmpty) {
      Get.snackbar("Error", "Input angka tidak boleh kosong",
          snackPosition: SnackPosition.BOTTOM);
    } else {
      double a1 = double.parse(angka1);
      double a2 = double.parse(angka2);

      if (a2 == 0) {
        Get.snackbar("Error", "Tidak bisa membagi dengan nol",
            snackPosition: SnackPosition.BOTTOM);
      } else {
        double hasilBagi = a1 / a2;
        hasilHitung.value = hasilBagi;
        Get.snackbar("Hasil Pembagian", hasilBagi.toString(),
            snackPosition: SnackPosition.BOTTOM);
      }
    }
  }
}