import 'package:get/get.dart';
import 'package:getx_state_management/getx19_getStorage/route/route_name.dart';

class AuthC extends GetxController {
  var isAuth = false.obs;

  Map<String, String> _dataUser = {
    'email': 'admin@gmail.com',
    'password': 'admin',
  };

  void dialogError(String msg) {
    Get.defaultDialog(
      title: "Terjadi Kesalahan",
      middleText: msg,
    );
  }

  void login(String email, String password) {
    if (email != '' && password != '') {
      if (GetUtils.isEmail(email)) {
        if (email == _dataUser['email'] && password == _dataUser['password']) {
          //Berhasil Login
          isAuth.value = true;
        } else {
          dialogError('Data user tidak valid. Gunakan akun lainnya');
        }
      } else {
        dialogError('Email tidak valid');
      }
    } else {
      dialogError("Semua data input harus diisi");
    }
  }
}
