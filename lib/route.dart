import 'package:belajarflutter/pages/confirm_registration_page.dart';
import 'package:belajarflutter/pages/detail_product_page.dart';
import 'package:belajarflutter/pages/list_product_page.dart';
import 'package:belajarflutter/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  // list pages yg ada di app
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduct = "/listProduct";
  static const String detailProduct = "/detailProduct";
  // dll

  // tampung dalam array yg kita pasang ke main dart
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listProduct, page: () => ListProductPage()),
    GetPage(name: detailProduct, page: () => DetailProductPage())
    // dll
  ];
}