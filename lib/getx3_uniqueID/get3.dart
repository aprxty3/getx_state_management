import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get3 extends StatelessWidget {
  final countC = Get.put(CountID());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountID>(
              id: '', // ini namanya unique ID
              builder: (_) => Text(
                'Angka ${countC.count}',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            GetBuilder<CountID>(
              builder: (_) => Text(
                'Angka ${countC.count}',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            GetBuilder<CountID>(
              builder: (_) => Text(
                'Angka ${countC.count}',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => countC.add(),
      ),
    );
  }
}

class CountID extends GetxController {
  var count = 0;

  void add() {
    count++;
    update();
  }
}
