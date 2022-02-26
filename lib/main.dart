import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx2_state_manager/getx2.dart';
import 'package:getx_state_management/getx3_uniqueID/get3.dart';
import 'package:getx_state_management/getx4_life_cycle/get4.dart';

import 'getx1_counter/controller/counter_controller.dart';
import 'getx1_counter/getx1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // final counterC = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Get4(),
    );
  }
}
