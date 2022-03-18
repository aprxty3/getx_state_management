import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/getx19_getStorage/get19_0.dart';
import 'package:getx_state_management/getx19_getStorage/get19_1.dart';
import 'package:getx_state_management/getx19_getStorage/route/app_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      home: Get19_1(),
      getPages: AppPage.pages,
    );
  }
}
