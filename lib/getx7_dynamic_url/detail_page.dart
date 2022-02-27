import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail ID ${Get.arguments}',
        ),
      ),
      body: Center(
        child: Text('Detail ID ${Get.arguments}'),
      ),
    );
  }
}
