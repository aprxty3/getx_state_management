import 'package:get/get.dart';
import 'package:getx_state_management/getx2_state_manager/models/orang.dart';

class OrangController extends GetxController {
  var orang = Orang();

  void changeUppercase() {
    orang.nama.value = orang.nama.value.toUpperCase();
  }

  void changeLowercase() {
    orang.nama.value = orang.nama.value.toLowerCase();
  }
}
