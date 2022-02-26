import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get4 extends StatelessWidget {
  final countC = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CountWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countC.add();
        },
      ),
    );
  }
}

class CountWidget extends StatelessWidget {
  // final c = Get.find<CountController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CountController>(
      initState: (state) => print('initstate'),
      dispose: (state) => print('dispose'),
      didChangeDependencies: (_) => print('didChangeDependencies'),
      didUpdateWidget: (oldWidget, state) => print('didUpdateWidget'),
      builder: (c) => Center(
        child: Text('Angka ${c.count}'),
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
