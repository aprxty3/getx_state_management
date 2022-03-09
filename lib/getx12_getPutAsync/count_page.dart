import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx12_getPutAsync/controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CountPage extends StatelessWidget {
  final c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                '$c.count',
                style: TextStyle(fontSize: 10),
              ),
            ),
            // OutlineButton(
            //   onPressed: () {},
            //   child: Text('Next'),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => c.setData(),
      ),
    );
  }
}
