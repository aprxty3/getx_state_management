import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginC extends GetxController {
  var hidden = true.obs;
  var rememberMe = false.obs;
  late TextEditingController emailC;
  late TextEditingController passwordC;

  void checkData() async {
    await GetStorage.init();
    final box = GetStorage();
    if (box.read('dataUser') != null) {
      final data = box.read('dataUser') as Map<String, dynamic>;
      emailC.text = data['email'];
      passwordC.text = data['password'];
      rememberMe.value = data['rememberMe'];
    }
  }

  @override
  void onInit() async {
    super.onInit();
    emailC = TextEditingController();
    passwordC = TextEditingController();
    checkData();
  }

  @override
  void onClose() {
    super.onClose();
    emailC.dispose();
    passwordC.dispose();
  }
}
