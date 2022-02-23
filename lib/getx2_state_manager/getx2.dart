import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetX2 extends StatelessWidget {
  var count = 0.obs;
  void add() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () => Text(
            'Angka $count',
            style: TextStyle(fontSize: 30),
          ),
          // Text(
          //   'Nama Saya Aji',
          //   style: TextStyle(fontSize: 30),
          // ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => add(),
      ),
    );
  }
}
