import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx17_otherAPI/get17_3.dart';

class Get17_2 extends StatelessWidget {
  const Get17_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "${Get.arguments}",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "${Get.rawRoute}",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "${Get.previousRoute}",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () => Get.to(() => Get17_3()),
              child: Text(
                'Next Page',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
