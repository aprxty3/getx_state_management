import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/day1_counter/controller/counter_controller.dart';

class GetX1 extends StatelessWidget {
  final counterC = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Obx(
        () => Text(
          'Angka ${counterC.counter}',
          style: TextStyle(
            fontSize: 38,
          ),
        ),
      )),
      floatingActionButton:
          FloatingActionButton(onPressed: () => counterC.increment()),
    );
  }
}
