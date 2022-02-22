import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx1_counter/controller/counter_controller.dart';
import 'getx1_counter/getx1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final counterC = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
        home: GetX1(),
      ),
    );
  }
}
