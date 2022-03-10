import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx14_bindings/count_page.dart';
import 'package:getx_state_management/getx14_bindings/route_name.dart';

class Get14 extends StatelessWidget {
  const Get14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Homepage',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed(RouteName.count),
              child: Text('To The Moon'),
            ),
          ],
        ),
      ),
    );
  }
}
