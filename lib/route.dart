import 'package:belajarflutter/menu/profile.dart';
import 'package:belajarflutter/pages/confirm_registration_page.dart';
import 'package:belajarflutter/pages/detail_product_page.dart';
import 'package:belajarflutter/pages/list_product_page.dart';
import 'package:belajarflutter/pages/main_menu_pages.dart';
import 'package:belajarflutter/pages/menu_drawer_page.dart';
import 'package:belajarflutter/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  // list pages yg ada di app
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduct = "/listProduct";
  static const String detailProduct = "/detailProduct";
  static const String mainmenupage = "/mainmenupage";
  static const String profile = "/profile";
  // dll

  // tampung dalam array yg kita pasang ke main dart
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listProduct, page: () => ListProductPage()),
    GetPage(name: detailProduct, page: () => DetailProductPage()),
    GetPage(name: mainmenupage, page: () => MainMenuPage()),
    GetPage(name: profile, page: () => ProfilePage()),
    // dll
  ];
}