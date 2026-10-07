import 'package:get/get.dart';

class DetailProdukController extends GetxController {
  late String namaProduk;
  late String harga;
  late String deskripsi;
  late String gambar;
  late String rating;
  late String namaToko;
  late String review;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaProduk = arguments['namaProduk'];
    harga = arguments['harga'];
    deskripsi = arguments['deskripsi'];
    gambar = arguments['gambar'];
    rating = arguments['rating'];
    namaToko = arguments['namaToko'];
    review = arguments['review'];
  }
}