import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx17_otherAPI/get17_2.dart';

class Get17 extends StatelessWidget {
  const Get17({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Homepage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hai Ini Homepage',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () => Get.to(
                      () => Get17_2(),
                      arguments: 'Hay From first page',
                    ),
                child: Text(
                  'Next Page',
                  style: TextStyle(fontSize: 25),
                ))
          ],
        ),
      ),
    );
  }
}
