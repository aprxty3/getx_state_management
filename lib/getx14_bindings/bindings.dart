// import 'dart:ffi';

import 'package:get/get.dart';

import 'controller.dart';

class CountB implements Bindings {
  @override
  void dependencies() {
    Get.put(CountController());
  }
}
