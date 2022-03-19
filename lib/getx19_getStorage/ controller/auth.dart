import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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

  Future<void> autoLogin() async {
    final box = GetStorage();
    if (box.read("dataUser") != null) {
      final data = box.read("dataUser") as Map<String, dynamic>;
      login(
        data["email"],
        data["password"],
        data["rememberMer"],
      );
    }
  }

  void login(String email, String password, bool rememberMe) async {
    if (email != '' && password != '') {
      if (GetUtils.isEmail(email)) {
        if (email == _dataUser['email'] && password == _dataUser['password']) {
          if (rememberMe) {
            await GetStorage.init();

            //simpan di storage di get storage
            final box = GetStorage();
            box.write(
              'dataUser',
              {
                "email": email,
                "password": password,
                "rememberMe": rememberMe,
              },
            );
          } else {
            //hapus storage
            final box = GetStorage();
            if (box.read("dataUser") != null) {
              box.erase();
            }
          }

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

  @override
  void onInit() async {
    super.onInit();
  }
}
