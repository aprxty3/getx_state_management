import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  void increment() => counter + 1;
  void decrement() => counter - 1;
}
