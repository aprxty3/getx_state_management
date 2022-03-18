import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx17_otherAPI/get17.dart';
import 'package:getx_state_management/getx18_stateMixin/get18.dart';

import 'getx18_stateMixin/controlle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final myC = Get.put(MyC());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      home: Get18(),
    );
  }
}
