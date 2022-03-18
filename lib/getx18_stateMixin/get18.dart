import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx18_stateMixin/controlle.dart';

class Get18 extends GetView<MyC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ini Homepage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${controller.count}",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.add(),
      ),
    );
  }
}
