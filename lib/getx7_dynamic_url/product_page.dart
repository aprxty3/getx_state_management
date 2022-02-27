import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Product',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.toNamed('/detail', arguments: 1),
              child: Text(
                'Detail ID 1',
              ),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/detail', arguments: 2),
              child: Text(
                'Detail ID 2',
              ),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/detail', arguments: 3),
              child: Text(
                'Detail ID 3',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
