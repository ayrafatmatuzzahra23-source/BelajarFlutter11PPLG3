import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String alamat;
  late String jeniskelamin;
  late String noWA;
  late String email;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['name'];
    alamat = arguments['alamat'];
    jeniskelamin = arguments['jenisKelamin'];
    noWA = arguments['noWA'];
    email = arguments['email'];
  }
}