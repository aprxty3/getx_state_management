import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get4 extends StatelessWidget {
  final countC = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Angka 0'),
      ),
    );
  }
}

class CountController extends GetxController {
  var count = 0;

  void add() {
    count++;
    update();
  }
}
