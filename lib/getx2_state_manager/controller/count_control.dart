import 'package:get/get.dart';

class CountControl extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update();
  }
}
