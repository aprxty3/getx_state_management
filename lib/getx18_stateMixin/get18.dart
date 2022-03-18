import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx18_stateMixin/controlle.dart';

class Get18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myc = Get.find<MyC>();
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
                "${myc.count}",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => myc.add(),
      ),
    );
  }
}
