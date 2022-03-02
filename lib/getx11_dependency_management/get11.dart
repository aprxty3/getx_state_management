import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get11 extends StatelessWidget {
  final MyController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => Center(
            child: Text(
              '${c.count}',
              style: TextStyle(fontSize: 32),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => c.add(),
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  var count = 0.obs;

  void add() {
    count++;
  }
}
