import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed('/product'),
          child: Text(
            'Prodcut Page',
          ),
        ),
      ),
    );
  }
}
