import 'package:belajarflutter/pages/confirm_registration_page.dart';
import 'package:belajarflutter/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  // list pages yg ada di app
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  // dll

  // tampung dalam array yg kita pasang ke main dart
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    // dll
    ];
}