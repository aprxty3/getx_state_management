import 'package:get/get.dart';
import 'package:getx_state_management/getx2_state_manager/models/orang.dart';

class OrangController extends GetxController {
  var orang = Orang(nama: 'agus', umur: 25).obs;

  void changeUppercase() {
    orang.update((_) {
      orang.value.nama = orang.value.nama.toString().toUpperCase();
    });
  }

  void changeLowercase() {
    orang.update((_) {
      orang.value.nama = orang.value.nama.toString().toLowerCase();
    });
  }
}
