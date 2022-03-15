import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get15 extends StatelessWidget {
  const Get15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
        actions: [
          IconButton(
            onPressed: () => Get.updateLocale(
              Locale('en', 'btw'),
            ),
            icon: Icon(
              Icons.refresh,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'home_title'.tr,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('body'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
