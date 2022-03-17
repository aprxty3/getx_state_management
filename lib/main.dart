import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx17_otherAPI/get17.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      home: Get17(),
    );
  }
}
