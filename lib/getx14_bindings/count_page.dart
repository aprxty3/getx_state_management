import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx14_bindings/controller.dart';

class CountPage extends StatelessWidget {
  final countC = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countpage'),
      ),
      body: Center(
        child: Obx(() => Text(
              '${countC.count}',
              style: TextStyle(fontSize: 30),
            )),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () => countC.add()),
    );
  }
}
